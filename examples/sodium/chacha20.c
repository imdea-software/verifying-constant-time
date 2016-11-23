#include "ct-verif.h"

#include "sodium.h"

int crypto_stream_chacha20_wrapper(unsigned char *c, unsigned long long clen,
                                   const unsigned char *n, const unsigned char *k) {
  public_in(__SMACK_value(c));
  public_in(__SMACK_value(clen));
  public_in(__SMACK_value(n));
  public_in(__SMACK_value(k));

  public_in(__SMACK_values(n,crypto_stream_chacha20_NONCEBYTES));

  return crypto_stream_chacha20(c,clen,n,k);
}
