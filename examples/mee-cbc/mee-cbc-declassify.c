#include "../ct-verif.h"

#include "mac-then-encrypt/crypto_hashblocks.h"
#include "mac-then-encrypt/crypto_auth.h"
#include "mac-then-encrypt/crypto_block.h"
#include "mac-then-encrypt/pad_cbc_aes128.h"

int decrypt_then_verify_declassify(unsigned char *out,unsigned long *out_len,
      	                             const unsigned char *in,unsigned long in_len,
      	                             const unsigned char *iv,
      	                             const unsigned char *enc_sk,
      	                             const unsigned char *mac_sk) {
  int res;

  res = decrypt(out,out_len,in,in_len,iv,enc_sk);
  res &= crypto_auth_verify(out,in_len,*out_len,mac_sk);
  if (res) {
    *out_len -= *out_len; // Is this really what we want?
  }
  else {
    *out_len = 0;
  }
  return res;
}

int dv_wrapper(unsigned char *out,unsigned long *out_len,
                 const unsigned char *in,unsigned long in_len,
                 const unsigned char *iv,
                 const unsigned char *enc_sk,
                 const unsigned char *mac_sk) {
  __disjoint_regions(out,*out_len,in,in_len);
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(out_len));
  public_in(__SMACK_value(in));
  public_in(__SMACK_value(in_len));
  public_in(__SMACK_value(iv));
  public_in(__SMACK_value(enc_sk));
  public_in(__SMACK_value(mac_sk));

  public_in(__SMACK_values(out_len,1));
  public_in(__SMACK_values(in,32));
  public_in(__SMACK_values(iv,INPUTBYTES));

  declassified_out(__SMACK_return_value());

  return decrypt_then_verify_declassify(out,out_len,in,in_len,iv,enc_sk,mac_sk);
}
