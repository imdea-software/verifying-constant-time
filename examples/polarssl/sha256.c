#include "mbedtls/sha256.h"
#include "../smack.h"

/* Compile with:
     clang -I.. -Imbedtls/include \
           ../smack.c mbedtls/library/sha256.c \
           sha256.c
*/

void mbedtls_sha256_wrapper( const unsigned char *input, size_t ilen,
           unsigned char output[32], int is224 )
{
  /* Boilerplate */
  public_in(region_of_var(input));
  public_in(region_of_var(output));

  /* Useful */
  public_in(region_of_var(ilen));
  public_in(region_of_var(is224));
  declassified_out(mem_region(output,32));

  return mbedtls_sha256(input,ilen,output,is224);
}
