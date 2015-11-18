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
  public_in(__SMACK_value(ctx));
  public_in(__SMACK_value(iv));
  public_in(__SMACK_value(input));
  public_in(__SMACK_value(output));

  /* Useful */
  public_in(__SMACK_value(length));
  public_in(__SMACK_values(iv,8));

  //  declassified_out(__SMACK_values(output,16/*length*/));
  //  public_out(__SMACK_return_value());

  return mbedtls_des3_crypt_cbc(ctx,MBEDTLS_DES_ENCRYPT,16/*length*/,iv,input,output);
}

int mbedtls_des3_DEcrypt_cbc_wrapper(mbedtls_des3_context *ctx,
                                  size_t length,
                                  unsigned char iv[8],
                                  const unsigned char *input,
                                  unsigned char *output) {
  /* Boilerplate */
  public_in(__SMACK_value(ctx));
  public_in(__SMACK_value(iv));
  public_in(__SMACK_value(input));
  public_in(__SMACK_value(output));

  /* Useful */
  public_in(__SMACK_value(length));
  public_in(__SMACK_values(iv,8));

  public_in(__SMACK_values(input,16/*length*/));
  //  declassified_out(__SMACK_object(output,16/*length*/));
  public_out(__SMACK_return_value());

  return mbedtls_des3_crypt_cbc(ctx,MBEDTLS_DES_DECRYPT,16/*length*/,iv,input,output);
}
