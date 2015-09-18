#include "mbedtls/des.h"
#include "../ct-verif.h"

/* Compile with:
     
 */

int mbedtls_des3_ENcrypt_cbc_wrapper(mbedtls_des3_context *ctx,
                                     size_t length,
                                     unsigned char iv[8],
                                     const unsigned char *input,
                                     unsigned char *output) {
  /* Boilerplate */
  public_in_value(__SMACK_value(ctx));
  public_in_value(__SMACK_value(iv));
  public_in_value(__SMACK_value(input));
  public_in_value(__SMACK_value(output));

  /* Useful */
  public_in_value(__SMACK_value(length));
  public_in_object(__SMACK_object(iv,8));

  declassified_out_object(__SMACK_object(output,16/*length*/));
  public_out_value(__SMACK_return_value());

  return mbedtls_des3_crypt_cbc(ctx,MBEDTLS_DES_ENCRYPT,16/*length*/,iv,input,output);
}

int mbedtls_des3_DEcrypt_cbc_wrap(mbedtls_des3_context *ctx,
                                  size_t length,
                                  unsigned char iv[8],
                                  const unsigned char *input,
                                  unsigned char *output) {
  /* Boilerplate */
  public_in_value(__SMACK_value(ctx));
  public_in_value(__SMACK_value(iv));
  public_in_value(__SMACK_value(input));
  public_in_value(__SMACK_value(output));

  /* Useful */
  public_in_value(__SMACK_value(length));
  public_in_object(__SMACK_object(iv,8));

  public_in_object(__SMACK_object(input,16/*length*/));
  declassified_out_object(__SMACK_object(output,16/*length*/));
  public_out_value(__SMACK_return_value());

  return mbedtls_des3_crypt_cbc(ctx,MBEDTLS_DES_DECRYPT,16/*length*/,iv,input,output);
}
