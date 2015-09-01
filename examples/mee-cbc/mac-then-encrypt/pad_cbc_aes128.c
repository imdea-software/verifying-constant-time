#include "crypto_stream.h"
#include "crypto_pad.h"

// encrypts to out with in, in_len, sk, iv. in will be padded in place, final out length returned
int encrypt(unsigned char *out,unsigned char *in,unsigned long in_len,const unsigned char *iv,const unsigned char *sk) {
  in_len = crypto_pad_add(in,in_len);
  crypto_stream_encrypt(out,in,in_len,iv,sk);
  return in_len;
}

// decrypts to out, out_len with in, in_len sk, iv. returns 1 for
// success, 0  failure.
// On returning 0 *out_len is equal to in_len (assume 0 length pad)
int decrypt(unsigned char *out,unsigned long *out_len, const unsigned char *in,unsigned long in_len,const unsigned char *iv,const unsigned char *sk) {
  if (crypto_stream_decrypt(out,in,in_len,iv,sk))
    return crypto_pad_remove(out_len,out,in_len);
  return 0;
}
