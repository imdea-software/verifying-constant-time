/* Compile with:
     clang -Imac-then-encrypt \
           mac-then-encrypt/aes128.c mac-then-encrypt/aes128cbc.c \
           mac-then-encrypt/sha256blocks.c mac-then-encrypt/hmac.c mac-then-encrypt/verify_32.c \
           mac-then-encrypt/pad128.c mac-then-encrypt/pad_cbc_aes128.c \
           mac-then-encrypt/mac_then_encrypt.c \
           ../smack.c mee-cbc.c
*/

#include "../smack.h"
#include "crypto_block.h"

extern int decrypt_then_verify(unsigned char *out,unsigned long *out_len, const unsigned char *in,unsigned long in_len,
			       const unsigned char *iv,const unsigned char *enc_sk,const unsigned char *mac_sk);

int dv(unsigned char *out,unsigned long *out_len, const unsigned char *in,unsigned long in_len,
       const unsigned char *iv,const unsigned char *enc_sk,const unsigned char *mac_sk)
{
  /* Boilerplate */
  public_in(region_of_var(out));
  public_in(region_of_var(out_len));
  public_in(region_of_var(in));
  public_in(region_of_var(iv));
  public_in(region_of_var(enc_sk));
  public_in(region_of_var(mac_sk));

  /* Useful */
  public_in(mem_region(in,in_len));
  public_in(mem_region(iv,INPUTBYTES));

  declassified_out(mem_region(out,*out_len));
  declassified_out(mem_region(out_len, sizeof(*out_len)));
  declassified_out(region_of_ret());

  return decrypt_then_verify(out,out_len,in,in_len,iv,enc_sk,mac_sk);
}
