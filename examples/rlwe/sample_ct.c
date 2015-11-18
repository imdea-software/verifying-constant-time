#include "../ct-verif.h"
#include "rlwe.h"

void sample_ct_wrapper(uint32_t *s, RAND_CTX *rand_ctx) {
  public_in(__SMACK_value(s));
  public_in(__SMACK_value(rand_ctx));

  rlwe_sample_ct(s,rand_ctx);
}
