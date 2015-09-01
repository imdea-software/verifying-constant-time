#include "../smack.h"

#include "sodium.h"

/* Compiles with:
     clang -DTEST -Ilibsodium/src/libsodium/include/ -Ilibsodium/src/libsodium/include/sodium/ \
           ../smack.c \
           libsodium/src/libsodium/sodium/utils.c \
           libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c \
           libsodium/src/libsodium/randombytes/randombytes.c \
           libsodium/src/libsodium/crypto_hash/sha512/cp/hash_sha512.c \
           libsodium/src/libsodium/crypto_auth/hmacsha512/cp/hmac_hmacsha512.c \
           libsodium/src/libsodium/crypto_verify/32/ref/verify_32.c \
           libsodium/src/libsodium/crypto_auth/hmacsha512256/cp/hmac_hmacsha512256.c \
           libsodium/src/libsodium/crypto_auth/hmacsha512256/cp/verify_hmacsha512256.c \
           libsodium/src/libsodium/crypto_auth/crypto_auth.c \
           auth.c
*/

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

#ifdef TEST
unsigned char key[32];
unsigned char c[10000];
unsigned char a[32];

int main(void)
{
    size_t clen;

    for (clen = 0; clen < 10000; ++clen) {
        randombytes_buf(key, sizeof key);
        randombytes_buf(c, clen);
        crypto_auth(a, c, clen, key);
        if (crypto_auth_verify(a, c, clen, key) != 0) {
            printf("fail %u\n", (unsigned int) clen);
            return 100;
        }
        if (clen > 0) {
            c[rand() % clen] += 1 + (rand() % 255);
            if (crypto_auth_verify(a, c, clen, key) == 0) {
                printf("forgery %u\n", (unsigned int) clen);
                return 100;
            }
            a[rand() % sizeof a] += 1 + (rand() % 255);
            if (crypto_auth_verify(a, c, clen, key) == 0) {
                printf("forgery %u\n", (unsigned int) clen);
                return 100;
            }
        }
    }
    return 0;
}
#endif /* TEST */
