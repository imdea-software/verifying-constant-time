#include "ct-verif.h"

#include "sodium.h"

int crypto_core_salsa20_wrapper(unsigned char *out, const unsigned char *in,
                                const unsigned char *k, const unsigned char *c)
{
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(in));
  public_in(__SMACK_value(k));
  public_in(__SMACK_value(c));

  return crypto_core_salsa20(out,in,k,c);
}
