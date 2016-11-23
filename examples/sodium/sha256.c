#include "ct-verif.h"

#include "sodium.h"

int crypto_hash_sha256_wrapper(unsigned char *out, const unsigned char *in)
{
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(in));

  return crypto_hash_sha256(out,in,156);
}



// This requires a hack in the .bpl file (because SHA256_Transform is
// static): have a separate file for transform that simply #includes
// the relevant .c file
extern void SHA256_Transform(uint32_t* state, const unsigned char block[64]);

void SHA256_Transform_wrapper(uint32_t* state, const unsigned char block[64])
{
  public_in(__SMACK_value(state));
  public_in(__SMACK_value(block));

  SHA256_Transform(state,block);
  return;
}
