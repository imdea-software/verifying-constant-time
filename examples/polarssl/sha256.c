#include "mbedtls/sha256.h"
#include "../ct-verif.h"

/* Compile with:
     clang -I.. -Imbedtls/include \
           mbedtls/library/sha256.c \
           sha256.c
*/

void mbedtls_sha256_wrapper( const unsigned char *input, size_t ilen,
           unsigned char output[32], int is224 )
{
  __disjoint_regions(input,ilen,output,32);

  /* Boilerplate */
  public_in(__SMACK_value(input));
  public_in(__SMACK_value(output));

  /* Useful */
  public_in(__SMACK_value(ilen));
  public_in(__SMACK_value(is224));
  declassified_out(__SMACK_values(output,32));

  mbedtls_sha256(input,ilen,output,is224);
}
