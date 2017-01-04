#include "ct-verif.h"

#define GENERIC_IMPLEMENTATION
#define __LINUX__
#define _X86_

#include "fourqlib/eccp2_core.c"

void eccnorm_wrap(point_extproj_t P, point_t Q)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));

  eccnorm(P,Q);
}

void R1_to_R2_wrap(point_extproj_t P, point_extproj_precomp_t Q, PCurveStruct curve)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));
  public_in(__SMACK_value(curve));

  R1_to_R2(P,Q,curve);
}

void R1_to_R3_wrap(point_extproj_t P, point_extproj_precomp_t Q)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));

  R1_to_R3(P,Q);
}

void R2_to_R4_wrap(point_extproj_precomp_t P, point_extproj_t Q)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));

  R2_to_R4(P,Q);
}

void eccdouble_wrap(point_extproj_t P)
{
  public_in(__SMACK_value(P));

  eccdouble(P);
}

void point_setup_wrap(point_t P, point_extproj_t Q)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));

  point_setup(P,Q);
}

bool ecc_point_validate_wrap(point_extproj_t P, PCurveStruct curve)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(curve));

  ecc_point_validate(P,curve);
}

void R5_to_R1_wrap(point_precomp_t P, point_extproj_t Q)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));

  R5_to_R1(P,Q);
}

void eccmadd_wrap(point_precomp_t Q, point_extproj_t P)
{
  public_in(__SMACK_value(P));
  public_in(__SMACK_value(Q));

  eccmadd(Q,P);
}

bool ecc_mul_fixed_wrap(point_precomp_t *P_table, digit64_256_t k, point_t Q, PCurveStruct curve)
{
  public_in(__SMACK_value(P_table));
  // public_in(__SMACK_values(P_table,80)); // Oh no!
  public_in(__SMACK_value(k));     // If this scares you, stop hiding pointers behind typedefs...
  public_in(__SMACK_value(Q));     // ditto
  public_in(__SMACK_value(curve)); // ditto

  public_in(__SMACK_value(curve->nbits));
  public_in(__SMACK_value(curve->rbits));
  //    public_in(__SMACK_values(curve->prime,NWORDS64_FIELD));
  //    public_in(__SMACK_values(curve->a,NWORDS64_ORDER));
  //    public_in(__SMACK_values(curve->d,NWORDS64_ORDER));
  //    public_in(__SMACK_values(curve->order,NWORDS64_ORDER));
  //    public_in(__SMACK_values(curve->generator_x,NWORDS64_ORDER));
  //    public_in(__SMACK_values(curve->generator_y,NWORDS64_ORDER));
  public_in(__SMACK_value(curve->cofactor));

  ecc_mul_fixed(P_table,k,Q,curve);
}
