#include "ct-verif.h"

#include "sodium.h"

int crypto_hash_sha512_wrapper(unsigned char *out, const unsigned char *in)
{
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(in));

  return crypto_hash_sha512(out,in,156);
}
