#include "ct-verif.h"

void sort2(int *out2, int *in2) {
  int a, b;
  a = in2[0];
  b = in2[1];
  if (a < b) {
    out2[0] = in2[0];
    out2[1] = in2[1];
  } else {
    out2[0] = in2[1];
    out2[1] = in2[0];
  }
  return;
}

void sort3(int *out3, int *in3) {
  sort2(out3,in3);
  in3[1] = out3[1];
  sort2(out3+1,in3+1);
  in3[0] = out3[0];
  in3[1] = out3[1];
  sort2(out3,in3);
}

int sort3_wrapper(int *out, int *in) {
  __disjoint_regions(out,3,in,3);

  /* Boilerplate */
  public_in(__SMACK_value(out));
  public_in(__SMACK_value(in));

  /* Useful for testing out more of the assertion generation */
  //  public_out_value(__SMACK_return_value());

  sort3(out,in);
  return 3;
}
