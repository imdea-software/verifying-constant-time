#include "mbedtls/des.h"
#include "../smack.h"

/* Compile with:
     
 */

int mbedtls_des3_ENcrypt_cbc_wrap(mbedtls_des3_context *ctx,
                                  size_t length,
                                  unsigned char iv[8],
                                  const unsigned char *input,
                                  unsigned char *output) {
  /* Boilerplate */
  public_in(region_of_var(ctx));
  public_in(region_of_var(iv));
  public_in(region_of_var(input));
  public_in(region_of_var(output));

  /* Useful */
  public_in(region_of_var(length));
  public_in(mem_region(iv,8));

  declassified_out(mem_region(output,length));
  public_out(region_of_ret());

  return mbedtls_des3_crypt_cbc(ctx,MBEDTLS_DES_ENCRYPT,length,iv,input,output);
}

int mbedtls_des3_DEcrypt_cbc_wrap(mbedtls_des3_context *ctx,
                                  size_t length,
                                  unsigned char iv[8],
                                  const unsigned char *input,
                                  unsigned char *output) {
  /* Boilerplate */
  public_in(region_of_var(ctx));
  public_in(region_of_var(iv));
  public_in(region_of_var(input));
  public_in(region_of_var(output));

  /* Useful */
  public_in(region_of_var(length));
  public_in(mem_region(iv,8));

  public_in(mem_region(input,length));
  declassified_out(mem_region(output,length));
  public_out(region_of_ret());

  return mbedtls_des3_crypt_cbc(ctx,MBEDTLS_DES_DECRYPT,length,iv,input,output);
}
