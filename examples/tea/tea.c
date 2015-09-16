/* From https://en.wikipedia.org/wiki/Tiny_Encryption_Algorithm */
#include "../ct-verif.h"

#include <stdint.h>

void encrypt (uint32_t* v, uint32_t* k) {
  uint32_t v0=v[0], v1=v[1], sum=0, i;           /* set up */
  uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
  uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */

  /* Code */
  for (i=0; i < 32; i++) {                       /* basic cycle start */
    sum += delta;
    v0 += ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
    v1 += ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
  }                                              /* end cycle */
  v[0]=v0; v[1]=v1;
}

void decrypt (uint32_t* v, uint32_t* k) {
  uint32_t v0=v[0], v1=v[1], sum=0xC6EF3720, i;  /* set up */
  uint32_t delta=0x9e3779b9;                     /* a key schedule constant */
  uint32_t k0=k[0], k1=k[1], k2=k[2], k3=k[3];   /* cache key */

  /* Code */
  for (i=0; i<32; i++) {                         /* basic cycle start */
    v1 -= ((v0<<4) + k2) ^ (v0 + sum) ^ ((v0>>5) + k3);
    v0 -= ((v1<<4) + k0) ^ (v1 + sum) ^ ((v1>>5) + k1);
    sum -= delta;
  }                                              /* end cycle */
  v[0]=v0; v[1]=v1;
}

void encrypt_wrapper (uint32_t* v, uint32_t* k) {
  /* Boilerplate */
  public_in_value(__SMACK_value(v));
  public_in_value(__SMACK_value(k));

  /* Useful */
  declassified_out_object(__SMACK_object(v,2 * sizeof(*v)));

  encrypt(v,k);
}

void decrypt_cpa_wrapper (uint32_t* v, uint32_t* k) {
  /* Boilerplate */
  public_in_value(__SMACK_value(v));
  public_in_value(__SMACK_value(k));

  /* Useful */
  public_in_object(__SMACK_object(v,2 * sizeof(*v)));

  decrypt(v,k);
}

void decrypt_cca_wrapper (uint32_t* v, uint32_t* k) {
  /* Boilerplate */
  public_in_value(__SMACK_value(v));
  public_in_value(__SMACK_value(k));

  /* Useful */
  public_in_object(__SMACK_object(v,2 * sizeof(*v)));
  declassified_out_object(__SMACK_object(v,2 * sizeof(*v)));

  decrypt(v,k);
}
