#include "../ct-verif.h"

#include <stdint.h>

/* Compile with:
  clang -DTEST ../smack.c donna/curve25519-donna.c donna.c
or:
  clang -DTEST ../smack.c donna/curve25519-donna-c64.c donna.c
(but not on a 32 bit OS as that makes clang segfault, which is bad)
*/

typedef uint8_t u8;

extern int curve25519_donna(u8 *mypublic, const u8 *secret, const u8 *basepoint);

int curve25519_donna_wrapper(u8 *mypublic, const u8 *secret, const u8 *basepoint) {
  __disjoint_regions(mypublic,32,secret,32);
  __disjoint_regions(basepoint,32,secret,32);

  /* Boilerplate (until modularity) */
  public_in(__SMACK_value(mypublic));
  public_in(__SMACK_value(secret));
  public_in(__SMACK_value(basepoint));

  /* Important stuff */
  public_in(__SMACK_values(basepoint,32));
  declassified_out(__SMACK_values(mypublic,32));
  //  declassified_out_object(__SMACK_return_object());

  return curve25519_donna(mypublic,secret,basepoint);
}

#ifdef TEST
/* From donna/test-curve25519.c */
#include <stdio.h>

void doit(unsigned char *ek,unsigned char *e,unsigned char *k);

void doit(unsigned char *ek,unsigned char *e,unsigned char *k)
{
  int i;

  for (i = 0;i < 32;++i) printf("%02x",(unsigned int) e[i]); printf(" ");
  for (i = 0;i < 32;++i) printf("%02x",(unsigned int) k[i]); printf(" ");
  curve25519_donna_wrapper(ek,e,k); /* Added "_wrapper" here, but not super useful... */
  for (i = 0;i < 32;++i) printf("%02x",(unsigned int) ek[i]); printf("\n");
}

unsigned char e1k[32];
unsigned char e2k[32];
unsigned char e1e2k[32];
unsigned char e2e1k[32];
unsigned char e1[32] = {3};
unsigned char e2[32] = {5};
unsigned char k[32] = {9};

int
main()
{
  int loop;
  int i;

  for (loop = 0;loop < 10000;++loop) {
    doit(e1k,e1,k);
    doit(e2e1k,e2,e1k);
    doit(e2k,e2,k);
    doit(e1e2k,e1,e2k);
    for (i = 0;i < 32;++i) if (e1e2k[i] != e2e1k[i]) {
      printf("fail\n");
      return 1;
    }
    for (i = 0;i < 32;++i) e1[i] ^= e2k[i];
    for (i = 0;i < 32;++i) e2[i] ^= e1k[i];
    for (i = 0;i < 32;++i) k[i] ^= e1e2k[i];
  }

  return 0;
}
#endif /* TEST */
