#include "../smack.h"

#include "sodium.h"

int crypto_aead_chacha20poly1305_encrypt(unsigned char *c,
                                         unsigned long long *clen_p,
                                         const unsigned char *m,
                                         unsigned long long mlen,
                                         const unsigned char *ad,
                                         unsigned long long adlen,
                                         const unsigned char *nsec,
                                         const unsigned char *npub,
                                         const unsigned char *k)
{
  /* Addresses of arguments are public for now */
  public_in(region_of_var(c));
  public_in(region_of_var(clen_p));
  public_in(region_of_var(m));
  public_in(region_of_var(mlen));
  public_in(region_of_var(ad));
  public_in(region_of_var(adlen));
  public_in(region_of_var(nsec));
  public_in(region_of_var(npub));
  public_in(region_of_var(k));

  /* More useful annotations */
  public_in(mem_region(ad,adlen));
  public_in(mem_region(npub,crypto_aead_chacha20poly1305_NPUBBYTES));

  declassified_out(mem_region(c,*clen_p));
  declassified_return();

  return  crypto_aead_chacha20poly1305_encrypt(c,clen_p,
                                               m,mlen,
                                               ad,adlen,
                                               nsec,npub,k);
}

int crypto_aead_chacha20poly1305_decrypt(unsigned char *m,
                                         unsigned long long *mlen_p,
                                         unsigned char *nsec,
                                         const unsigned char *c,
                                         unsigned long long clen,
                                         const unsigned char *ad,
                                         unsigned long long adlen,
                                         const unsigned char *npub,
                                         const unsigned char *k)
{
  /* Addresses of arguments are public for now */
  public_in(region_of_var(m));
  public_in(region_of_var(mlen_p));
  public_in(region_of_var(nsec));
  public_in(region_of_var(c));
  public_in(region_of_var(clen));
  public_in(region_of_var(ad));
  public_in(region_of_var(adlen));
  public_in(region_of_var(npub));
  public_in(region_of_var(k));

  /* More useful annotations */
  public_in(mem_region(c,clen));
  public_in(mem_region(ad,adlen));
  public_in(mem_region(npub,crypto_aead_chacha20poly1305_NPUBBYTES));

  declassified_out(mem_region(m,*mlen_p));
  declassified_return();

  return  crypto_aead_chacha20poly1305_decrypt(m,mlen_p,
                                               nsec,
                                               c,clen,
                                               ad,adlen,
                                               npub,k);
}
