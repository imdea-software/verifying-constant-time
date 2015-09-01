#include "crypto_block.h"
#include "crypto_stream.h"

/* Note: this implementation is written to be called only on
   plaintexts whose length is a multiple of the block size. */

int crypto_stream_encrypt(
        unsigned char *out,
  const unsigned char *plain,
  const unsigned long inlen,
  const unsigned char *n,
  const unsigned char *k
    )
{
  int i, j, bs;
  unsigned char chain[INPUTBYTES];

  /* check the plaintext's length */
  if (inlen % INPUTBYTES)
    return 0;
  /* number of iterations */
  bs = inlen / INPUTBYTES;

  /* initialize the chaining variable */
  for (i = 0; i < INPUTBYTES; ++i) chain[i] = n[i];

  /* encrypt block by block */
  for (j = 0; j < bs; ++j) {
    /* xor chaining variable and jth plaintext block */
    for (i = 0; i < INPUTBYTES; ++i)
      chain[i] ^= plain[i + j * INPUTBYTES];
    /* compute jth ciphertext block (as new chaining variable) */
    crypto_block_encrypt(chain,chain,k);
    /* copy jth ciphertext block out */
    for (i = 0; i < INPUTBYTES; ++i)
      out[i + j * INPUTBYTES] = chain[i];
  }

  return 1;
}

int crypto_stream_decrypt(
        unsigned char *out,
  const unsigned char *cipher,
  const unsigned long inlen,
  const unsigned char *n,
  const unsigned char *k) {

  int i, j, bs;
  unsigned char chain[INPUTBYTES];

  /* check the plaintext's length */
  if (inlen % INPUTBYTES)
    return 0;
  /* number of blocks */
  bs = inlen / INPUTBYTES;

  /* initialize the chaining variable */
  for (i = 0; i < OUTPUTBYTES; ++i) chain[i] = n[i];

  /* decrypt block by block */
  for (j = 0; j < bs; ++j) {
    /* compute jth plaintext block */
    crypto_block_decrypt(out + j * OUTPUTBYTES,cipher + j * OUTPUTBYTES,k);
    /* xor jth plaintext block with chaining variable */
    for (i = 0; i < OUTPUTBYTES; ++i)
      out[i + j * OUTPUTBYTES] ^= chain[i];
    /* update chaining variable */
    for (i = 0; i < OUTPUTBYTES; ++i)
      chain[i] = cipher[i + j * OUTPUTBYTES];
  }

  return 1;
}
