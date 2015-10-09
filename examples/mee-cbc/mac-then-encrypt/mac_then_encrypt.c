#include "crypto_hashblocks.h"
#include "crypto_auth.h"
#include "pad_cbc_aes128.h"

int mac_then_encrypt(unsigned char *out,unsigned char *in,unsigned long in_len,
 const unsigned char *iv,const unsigned char *enc_sk,const unsigned char *mac_sk) {
  crypto_auth(in+in_len,in,in_len,mac_sk);
  return encrypt(out,in,in_len + CRYPTO_BYTES,iv,enc_sk);
}

int decrypt_then_verify(unsigned char *out,unsigned long *out_len, const unsigned char *in,unsigned long in_len,
  const unsigned char *iv,const unsigned char *enc_sk,const unsigned char *mac_sk) {
  int res;
  res = decrypt(out,out_len,in,in_len,iv,enc_sk); 
  res &= crypto_auth_verify(out,in_len,*out_len,mac_sk); 
  *out_len = res * (*out_len - CRYPTO_BYTES);
  return res;

  // IMPORTANT: zero-out the output buffer if the MAC check failed (using cmove),
  // or use an internal buffer and copy it out only if the MAC check succeeds (using cmove)
}
