#include "../smack.h"

#include "sodium.h"

int crypto_auth_pub(unsigned char *out, const unsigned char *in,
                    unsigned long long inlen, const unsigned char *k)
{
  /* Argument addresses are public for now */
  public_in(region_of_var(out));
  public_in(region_of_var(in));
  public_in(region_of_var(k));

  /* Annotations */
  public_in(region_of_var(inlen));
  public_in(mem_region(in,inlen));
  declassified_out(mem_region(out,crypto_auth_BYTES));

  return crypto_auth(out,in,inlen,k);
}

int crypto_auth_sec(unsigned char *out, const unsigned char *in,
                    unsigned long long inlen, const unsigned char *k)
{
  /* Argument addresses are public for now */
  public_in(region_of_var(out));
  public_in(region_of_var(in));
  public_in(region_of_var(inlen));
  public_in(region_of_var(k));

  /* Annotations: everything is private */
  /* Ideally, we would be able to provide a single set of annotations
     that captures that the output is declassified w.r.t. the key, but
     not the input. This is not useful for whole program analysis. */

  return crypto_auth(out,in,inlen,k);
}
