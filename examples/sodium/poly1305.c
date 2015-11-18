#include "../ct-verif.h"

extern int crypto_onetimeauth_poly1305_donna(unsigned char *out, const unsigned char *m,
                                         unsigned long long inlen,
					 const unsigned char *key);

int
crypto_onetimeauth_poly1305_donna_wrapper(unsigned char *out, const unsigned char *m,
                                          unsigned long long inlen,
                                          const unsigned char *key)
{
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(m));
  public_in(__SMACK_value(key));

  public_in(__SMACK_value(inlen));

  return crypto_onetimeauth_poly1305_donna(out,m,inlen,key);
}
