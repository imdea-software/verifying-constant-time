/*
 * 20080913
 * D. J. Bernstein
 * Public domain.
 * */

#include "ct_utils.h"
#include "crypto_hashblocks.h"
#include "crypto_auth.h"
#include "crypto_verify_32.h"

typedef unsigned int uint32;

static const char hmac_iv[32] = {
  0x6a,0x09,0xe6,0x67,
  0xbb,0x67,0xae,0x85,
  0x3c,0x6e,0xf3,0x72,
  0xa5,0x4f,0xf5,0x3a,
  0x51,0x0e,0x52,0x7f,
  0x9b,0x05,0x68,0x8c,
  0x1f,0x83,0xd9,0xab,
  0x5b,0xe0,0xcd,0x19,
} ;

int crypto_auth(unsigned char *out,const unsigned char *in,unsigned long inlen,const unsigned char *k)
{
  unsigned char h_mac[32];
  unsigned char padded[128];
  int i;
  unsigned long long bits = 512 + (inlen << 3);

  for (i = 0;i < 32;++i) h_mac[i] = hmac_iv[i];

  for (i = 0;i < 32;++i) padded[i] = k[i] ^ 0x36;
  for (i = 32;i < 64;++i) padded[i] = 0x36;

  crypto_hashblocks(h_mac,padded,64);
  crypto_hashblocks(h_mac,in,inlen);
  in += inlen;
  inlen &= 63;
  in -= inlen;

  for (i = 0;i < inlen;++i) padded[i] = in[i];
  padded[inlen] = 0x80;

  if (inlen < 56) {
    for (i = inlen + 1;i < 56;++i) padded[i] = 0;
    padded[56] = bits >> 56;
    padded[57] = bits >> 48;
    padded[58] = bits >> 40;
    padded[59] = bits >> 32;
    padded[60] = bits >> 24;
    padded[61] = bits >> 16;
    padded[62] = bits >> 8;
    padded[63] = bits;
    crypto_hashblocks(h_mac,padded,64);
  } else {
    for (i = inlen + 1;i < 120;++i) padded[i] = 0;
    padded[120] = bits >> 56;
    padded[121] = bits >> 48;
    padded[122] = bits >> 40;
    padded[123] = bits >> 32;
    padded[124] = bits >> 24;
    padded[125] = bits >> 16;
    padded[126] = bits >> 8;
    padded[127] = bits;
    crypto_hashblocks(h_mac,padded,128);
  }

  for (i = 0;i < 32;++i) padded[i] = k[i] ^ 0x5c;
  for (i = 32;i < 64;++i) padded[i] = 0x5c;
  for (i = 0;i < 32;++i) padded[64 + i] = h_mac[i];

  for (i = 0;i < 32;++i) out[i] = hmac_iv[i];

  for (i = 32;i < 64;++i) padded[64 + i] = 0;
  padded[64 + 32] = 0x80;
  padded[64 + 62] = 3;

  crypto_hashblocks(out,padded,128);

  return 1;
}

int crypto_auth_ct(unsigned char *out,const unsigned char *in,unsigned long publen, unsigned long inlen,const unsigned char *k) {
  int pub_blocks, index_a, index_b, index_c, i, j;
  unsigned long long bits;
  unsigned char mac_computed[CRYPTO_BYTES];
  unsigned char hash_state[CRYPTO_BYTES];
  unsigned char block_h[BLOCKBYTES];

  pub_blocks = (publen - CRYPTO_BYTES - 2) / BLOCKBYTES; // |ciphertext| - |MAC| - 2 bytes of variance (public)
  index_a    = (inlen - CRYPTO_BYTES)   / BLOCKBYTES; // index of last block that actually contains payload
  index_c    = (inlen - CRYPTO_BYTES)   % BLOCKBYTES; // index of end of payload in block index_a
  index_b    = index_a + (1 & constant_time_ge(index_c,56)); // index of block where length is appended

  // Initialize the hash state
  for (i = 0;i < CRYPTO_BYTES;i++) {
    hash_state[i] = hmac_iv[i];
  }

  // Has the ipadded key in
  for (i = 0;i < CRYPTO_BYTES;i++) {
    block_h[i] = k[i] ^ 0x36;
  }
  for (;i < BLOCKBYTES;i++) {
    block_h[i] = 0x36;
  }
  crypto_hashblocks(hash_state,block_h,BLOCKBYTES);

  // Constant part of the MAC computation: there will always be at
  // least pub_blocks full blocks of payload
  crypto_hashblocks(hash_state,in,pub_blocks * BLOCKBYTES);
  in += pub_blocks * BLOCKBYTES;

  // And the final block may be partial. In addition, we need to be
  // careful that the padding from the iterated hash function fits
  // within that final block. All in constant time.
  for (i = 0;i < CRYPTO_BYTES;i++) {
    mac_computed[i] = 0x00;
  }
  bits = 512 + ((inlen - CRYPTO_BYTES) << 3);
  for (i = pub_blocks;i < pub_blocks + 2;i++) { // 2 is the number of variance blocks. 
                                                // Could there be more?
    
    unsigned char is_block_a = constant_time_eq(i,index_a);
    unsigned char is_block_b = constant_time_eq(i,index_b);
    for (j = 0;j < BLOCKBYTES;j++) {
      unsigned char b = 0;
      unsigned char is_past_c = is_block_a & constant_time_ge(j,index_c);
      unsigned char is_past_cp1 = is_block_a & constant_time_ge(j,index_c + 1);
      
      // By default, we just read the byte from the decrypted
      // ciphertext. We may need to guard this for memory safety (we
      // know the buffer is publicly at least publen bytes long).
      b = in[j];
      
      // If b is not past c, then keep it, otherwise, set it to 0x80
      b = (b & ~is_past_c) | (0x80 & is_past_c);
      
      // If b is past c + 1, set it to 0x00
      b = b & ~is_past_cp1;
      
      // If this is block b, but NOT block a, set b to 0
      b &= ~is_block_b | is_block_a;

      // If this is block b and the index is one of those that
      // should contain the length, make it happen (if this is not
      // block b, keep b)
      if (j == 56) { b = (b & ~is_block_b) | (is_block_b & bits >> 56); }
      if (j == 57) { b = (b & ~is_block_b) | (is_block_b & bits >> 48); }
      if (j == 58) { b = (b & ~is_block_b) | (is_block_b & bits >> 40); }
      if (j == 59) { b = (b & ~is_block_b) | (is_block_b & bits >> 32); }
      if (j == 60) { b = (b & ~is_block_b) | (is_block_b & bits >> 24); }
      if (j == 61) { b = (b & ~is_block_b) | (is_block_b & bits >> 16); }
      if (j == 62) { b = (b & ~is_block_b) | (is_block_b & bits >> 8);  }
      if (j == 63) { b = (b & ~is_block_b) | (is_block_b & bits);       }
      // Finally write b over
      block_h[j] = b;
    }
    in += BLOCKBYTES;

    // Call the compression function
    crypto_hashblocks(hash_state,block_h,BLOCKBYTES);
    
    // If this is block b, copy the state over as the final inner
    // hash. Otherwise, pretend to copy the state over.
    for (j = 0;j < CRYPTO_BYTES;j++) {
      mac_computed[j] |= hash_state[j] & is_block_b;
    }
  }

  // The rest of the MAC computation is public
  // Finally, we hash the opadded key in and hash the inner hash
  for (i = 0;i < CRYPTO_BYTES;i++) {
    block_h[i] = k[i] ^ 0x5c;
  }
  for (;i < BLOCKBYTES;i++) {
    block_h[i] = 0x5c;
  }
  for (i = 0;i < CRYPTO_BYTES;i++) {
    out[i] = hmac_iv[i];
  }
  crypto_hashblocks(out,block_h,BLOCKBYTES);
  for (i = 0;i < CRYPTO_BYTES;i++) {
    block_h[i] = mac_computed[i];
  }
  for (;i < BLOCKBYTES;i++) {
    block_h[i] = 0x00;
  }
  block_h[32] = 0x80;
  block_h[62] = 0x03;
  crypto_hashblocks(out,block_h,BLOCKBYTES);
  return 1;
}

// publen is public, inlen is secret, returns 0 in constant time if failure, 1 otherwise
int crypto_auth_verify(const unsigned char *in,unsigned long publen, unsigned long inlen,const unsigned char *k)
{
  unsigned char correct[32];
  unsigned char mac[32];

  // The idea here is to scan through all possible locations for the
  // MAC, pretending to copy out CRYPTO_BYTES bytes starting from each
  // of them.
  int i, j;
  unsigned int mac_end = inlen; // secret
  unsigned int mac_start = mac_end - CRYPTO_BYTES; // secret 
  unsigned scan_start = 0;
  unsigned char rotate_offset; // secret 

  // We first refine the starting point of the scan
  if (publen > CRYPTO_BYTES + 255 + 1) {
    scan_start = publen - (CRYPTO_BYTES + 255 + 1);
  }

  // And compute the offset around which we will need to rotate
  rotate_offset = (mac_start - scan_start) % CRYPTO_BYTES;

  // We use the correct buffer to store the rotated MAC
  for (i = 0;i < CRYPTO_BYTES;i++) {
    correct[i] = 0x00;
  }

  // We then scan through, pretending to copy bytes out
  for (i = scan_start;i < publen;i += CRYPTO_BYTES) {
    for (j = 0;j < CRYPTO_BYTES;j++) {
      unsigned char mac_started = constant_time_ge(i + j,mac_start);
      unsigned char mac_ended   = constant_time_ge(i + j,mac_end);
      unsigned char b = 0;
      if (i + j < publen) {
        b = in[i + j];
      }
      correct[j] |= b & mac_started & ~mac_ended;
    }
  }

  // And we finish by rotating as necessary, placing result into mac
  for (i = 0;i < CRYPTO_BYTES;i++) {
    mac[i] = 0x00;
  }
  for (i = 0;i < CRYPTO_BYTES;i++) {
    unsigned char offset = (CRYPTO_BYTES - rotate_offset + i) % CRYPTO_BYTES; // secret
    for (j = 0;j < CRYPTO_BYTES;j++) {
      mac[j] |= correct[i] & constant_time_eq_8(j,offset);
    }
  }

  crypto_auth_ct(correct,in,publen,inlen,k);
  return 1 + crypto_verify_32(mac,correct); 
}
