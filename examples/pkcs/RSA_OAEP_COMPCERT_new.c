#include "ct-verif.h"
#include "CAO_COMPCERT_new.h"

#define nLen 512
#define hLen 20
#define dbLen nLen-hLen-1
#define msgLen dbLen-hLen-1
#define TBlocks 25
#define TLen hLen*TBlocks
#define GInLen 4+hLen
#define HInLen 4+dbLen

typedef CAO_ubits8 CAO_Octet;
typedef CAO_vector CAO_nOctets;
typedef CAO_vector CAO_dbOctets;
typedef CAO_vector CAO_msgOctets;
typedef CAO_vector CAO_hOctets;
typedef CAO_vector CAO_TOctets;
typedef CAO_vector CAO_GInOctets;
typedef CAO_vector CAO_HInOctets;

void c_hash(CAO_vector _r0, CAO_vector input, CAO_Cint len);

void c_RSAFun(CAO_int _r0, CAO_int c_e, CAO_int c_msg, CAO_int c_n) {
  CAO_mod_decl(c_c,c_n);
  CAO_mod_decl(t0,c_n);
  CAO_int_decl(t1);
  CAO_int_cast_mod(t0, c_msg);
  CAO_mod_pow(c_c, t0, c_e);
  CAO_mod_cast_int(t1, c_c);
  CAO_int_assign(_r0, t1);
}
void c_RSAInv(CAO_int _r0, CAO_int c_d, CAO_int c_c, CAO_int c_n) {
  CAO_mod_decl(c_msg,c_n);
  CAO_mod_decl(t2,c_n);
  CAO_int_decl(t3);
  CAO_int_cast_mod(t2, c_c);
  CAO_mod_pow(c_msg, t2, c_d);
  CAO_mod_cast_int(t3, c_msg);
  CAO_int_assign(_r0, t3);
}
void c_I2OSP(CAO_nOctets _r0, CAO_int c_x) {
  CAO_vector_decl(c_X, nLen);
  CAO_ubits8 c_auxByte;

  CAO_Cint c_counter = 1;
  while (c_counter <= nLen) {
    CAO_int_cast_ubits8(c_auxByte, c_x);
    CAO_int_div(c_x, c_x, 0x100);
    CAO_REF t3260;
    t3260 = CAO_vector_ref(c_X, nLen - c_counter);
    CAO_ubits8_assign(*t3260, c_auxByte);
    c_counter = c_counter + 1;
  }
  CAO_vector_assign(_r0, c_X, nLen);
}

void c_OS2IP(CAO_int _r0, CAO_nOctets c_X) {
  CAO_ubits8 t4;
  CAO_ubits8 t6;
  CAO_int_decl(c_x);
  CAO_int_decl(t5);
  CAO_int_decl(t7);
  CAO_vector_select(t4, c_X, 0);
  CAO_ubits8_cast_int(c_x, t4);
  CAO_Cint c_counter = 1;
  while (c_counter <= nLen - 1) {
    CAO_int_mul(t5, c_x, 0x100);
    CAO_vector_select(t6, c_X, c_counter);
    CAO_ubits8_cast_int(t7, t6);
    CAO_int_add(c_x, t5, t7);
    c_counter = c_counter + 1;
  }
  CAO_int_assign(_r0, c_x);
}

void c_G(CAO_dbOctets _r0, CAO_hOctets c_seed) {
  CAO_vector_decl(c_mask, dbLen);
  CAO_vector_decl(c_hashin, GInLen);
  CAO_vector_decl(c_hashout, hLen);
  CAO_vector_decl(c_T, TLen);
  CAO_Cint t1538;
  CAO_ubits8 t1539;
  CAO_Cint t1540;
  CAO_ubits8 t1541;
  CAO_Cint t1542;
  CAO_ubits8 t1543;
  CAO_ubits8 t1544;
  CAO_vector_decl(t3776, GInLen);
  CAO_vector_range_set(c_hashin, c_seed, 0, hLen-1);
  CAO_Cint c_counter = 0;
  while (c_counter <= TBlocks-1) {
    t1538 = c_counter / 0x1000000;
    t1539 = (CAO_ubits8)t1538;
    CAO_REF t3772;
    t3772 = CAO_vector_ref(c_hashin, hLen);
    CAO_ubits8_assign(*t3772, t1539);
    t1540 = c_counter / 0x10000;
    t1541 = (CAO_ubits8) t1540;
    CAO_REF t3773;
    t3773 = CAO_vector_ref(c_hashin, hLen+1);
    CAO_ubits8_assign(*t3773, t1541);
    t1542 = c_counter / 0x100;
    t1543 = (CAO_ubits8) t1542;
    CAO_REF t3774;
    t3774 = CAO_vector_ref(c_hashin, hLen+2);
    CAO_ubits8_assign(*t3774, t1543);
    t1544 = (CAO_ubits8) c_counter;
    CAO_REF t3775;
    t3775 = CAO_vector_ref(c_hashin, hLen+3);
    CAO_ubits8_assign(*t3775, t1544);
    CAO_vector_assign(t3776, c_hashin, GInLen);
    c_hash(c_hashout, t3776,GInLen);
    CAO_vector_range_set(c_T, c_hashout, c_counter*hLen, hLen-1+c_counter*hLen);
    c_counter = c_counter + 1;
  }
  CAO_vector_range_select(c_mask, c_T, 0, dbLen-1);
  CAO_vector_assign(_r0, c_mask, dbLen);
}

void c_H(CAO_hOctets _r0, CAO_dbOctets c_maskedDB) {
  CAO_vector_decl(c_hashin, HInLen);
  CAO_vector_decl(c_hashout, hLen);
  CAO_ubits8 t1713;
  CAO_ubits8 t1714;
  CAO_ubits8 t1715;
  CAO_ubits8 t1716;
  CAO_vector_decl(t3901, HInLen);
  CAO_vector_range_set(c_hashin, c_maskedDB, 0, dbLen-1);
  CAO_ubits8_init(t1713, 0);
  CAO_REF t3897;
  t3897 = CAO_vector_ref(c_hashin, dbLen);
  CAO_ubits8_assign(*t3897, t1713);
  CAO_ubits8_init(t1714, 0);
  CAO_REF t3898;
  t3898 = CAO_vector_ref(c_hashin, dbLen+1);
  CAO_ubits8_assign(*t3898, t1714);
  CAO_ubits8_init(t1715, 0);
  CAO_REF t3899;
  t3899 = CAO_vector_ref(c_hashin, dbLen+2);
  CAO_ubits8_assign(*t3899, t1715);
  CAO_ubits8_init(t1716, 0);
  CAO_REF t3900;
  t3900 = CAO_vector_ref(c_hashin, dbLen+3);
  CAO_ubits8_assign(*t3900, t1716);
  CAO_vector_assign(t3901, c_hashin, HInLen);
  c_hash(c_hashout, t3901,HInLen);
  CAO_vector_assign(_r0, c_hashout, hLen);
}

void c_Enc(CAO_int _r0,CAO_int c_e,CAO_msgOctets c_msg,CAO_hOctets c_lHash,CAO_hOctets c_seed, CAO_int c_n) {
  CAO_vector_decl(c_DB, dbLen);
  CAO_vector_decl(c_dbMask, dbLen);
  CAO_vector_decl(c_maskedDB, dbLen);
  CAO_vector_decl(c_seedMask, hLen);
  CAO_vector_decl(c_maskedSeed, hLen);
  CAO_vector_decl(c_payload, nLen);
  CAO_ubits8 t3250;
  CAO_ubits8 t3251;
  CAO_vector_decl(t4414, hLen);
  CAO_vector_decl(t4415, dbLen);
  CAO_vector_decl(t4416, dbLen);
  CAO_vector_decl(t4417, dbLen);
  CAO_vector_decl(t4418, hLen);
  CAO_vector_decl(t4419, hLen);
  CAO_vector_decl(t4421, hLen);
  CAO_int_decl(c_c);
  CAO_int_decl(c_m);
  CAO_int_decl(t4422);
  CAO_int_decl(t4423);
  CAO_int_decl(t4424);
  CAO_vector_range_set(c_DB, c_lHash, 0, hLen-1);
  CAO_ubits8_init(t3250, 1);
  CAO_REF t4413;
  t4413 = CAO_vector_ref(c_DB, hLen);
  CAO_ubits8_assign(*t4413, t3250);
  CAO_vector_range_set(c_DB, c_msg, hLen+1, hLen+1+msgLen-1);
  CAO_vector_assign(t4414, c_seed, hLen);
  c_G(c_dbMask, t4414);
  CAO_vector_assign(t4415, c_DB, dbLen);
  CAO_vector_assign(t4416, c_dbMask, dbLen);
  CAO_vector_zipWith_BitXorOp(c_maskedDB, t4415, t4416,dbLen);
  CAO_vector_assign(t4417, c_maskedDB, dbLen);
  c_H(c_seedMask, t4417);
  CAO_vector_assign(t4418, c_seed, hLen);
  CAO_vector_assign(t4419, c_seedMask, hLen);
  CAO_vector_zipWith_BitXorOp(c_maskedSeed, t4418, t4419,hLen);
  CAO_ubits8_init(t3251, 0);
  CAO_REF t44hLen;
  t44hLen = CAO_vector_ref(c_payload, 0);
  CAO_ubits8_assign(*t44hLen, t3251);
  CAO_vector_range_set(c_payload, c_maskedSeed, 1, hLen);
  CAO_vector_range_set(c_payload, c_maskedDB, hLen+1, hLen+dbLen);
  CAO_vector_assign(t4421, c_payload, nLen);
  c_OS2IP(c_m, t4421);
  CAO_int_assign(t4422, c_e);
  CAO_int_assign(t4423, c_m);
  CAO_int_assign(t4424, c_n);
  c_RSAFun(c_c, t4422, t4423, t4424);
  CAO_int_assign(_r0, c_c);
}

void c_Dec(CAO_msgOctets _r0,CAO_bool *_r1, CAO_int c_d,CAO_int c_c,CAO_hOctets c_lHash, CAO_int c_n) {
  CAO_vector_decl(c_DB, dbLen);
  CAO_vector_decl(c_dbMask, dbLen);
  CAO_vector_decl(c_maskedDB, dbLen);
  CAO_vector_decl(c_seedMask, hLen);
  CAO_vector_decl(c_maskedSeed, hLen);
  CAO_vector_decl(c_lHash2, hLen);
  CAO_vector_decl(c_seed, hLen);
  CAO_vector_decl(c_payload, nLen);
  CAO_vector_decl(c_msg, msgLen);
  CAO_bool c_result;
  CAO_bool c_result1;
  CAO_bool c_result2;
  CAO_bool c_result3;
  CAO_vector_decl(c_err_msg, msgLen);
  CAO_bool t3253;
  CAO_ubits8 t3255;
  CAO_ubits8 t3256;
  CAO_ubits8 t3257;
  CAO_ubits8 t3258;
  CAO_bool t3259;
  CAO_vector_decl(t4427, dbLen);
  CAO_vector_decl(t4428, hLen);
  CAO_vector_decl(t4429, hLen);
  CAO_vector_decl(t4430, hLen);
  CAO_vector_decl(t4431, dbLen);
  CAO_vector_decl(t4432, dbLen);
  CAO_int_decl(c_m);
  CAO_int_decl(t4424);
  CAO_int_decl(t4425);
  CAO_int_decl(t4423);
  CAO_int_decl(t4426);
  CAO_int_ge(t3253, c_c, c_n);
  if (t3253) {
    CAO_bool_init(c_result, 0);
  } else {
    CAO_int_assign(t4424, c_d);
    CAO_int_assign(t4425, c_c);
    CAO_int_assign(t4423, c_n);
    c_RSAInv(c_m, t4424, t4425,t4423);
    CAO_int_assign(t4426, c_m);
    c_I2OSP(c_payload, t4426);
    CAO_vector_range_select(c_maskedSeed, c_payload, 1, hLen);
    CAO_vector_range_select(c_maskedDB, c_payload, hLen+1, hLen+dbLen);
    CAO_vector_assign(t4427, c_maskedDB, dbLen);
    c_H(c_seedMask, t4427);
    CAO_vector_assign(t4428, c_maskedSeed, hLen);
    CAO_vector_assign(t4429, c_seedMask, hLen);
    CAO_vector_zipWith_BitXorOp(c_seed, t4428, t4429,hLen);
    CAO_vector_assign(t4430, c_seed, hLen);
    c_G(c_dbMask, t4430);
    CAO_vector_assign(t4431, c_maskedDB, dbLen);
    CAO_vector_assign(t4432, c_dbMask, dbLen);
    CAO_vector_zipWith_BitXorOp(c_DB, t4431, t4432,dbLen);
    CAO_vector_range_select(c_lHash2, c_DB, 0, hLen-1);
    CAO_vector_select(t3255, c_payload, 0);
    CAO_ubits8_init(t3256, 0);
    CAO_ubits8_equal(c_result1, t3255, t3256);
    CAO_vector_equal(c_result2, c_lHash, c_lHash2,hLen);
    CAO_vector_select(t3257, c_DB, hLen);
    CAO_ubits8_init(t3258, 1);
    CAO_ubits8_equal(c_result3, t3257, t3258);
    CAO_bool_and(t3259, c_result1, c_result2);
    CAO_bool_and(c_result, t3259, c_result3);
  }
  if (c_result) {
    CAO_vector_range_select(c_msg, c_DB, hLen+1, hLen+msgLen);
  } else {
    CAO_vector_range_select(c_msg, c_err_msg, 0, msgLen-1);
  }
  CAO_vector_assign(_r0, c_msg, msgLen);
  CAO_bool_assign(*_r1,c_result);
  return;
}

void c_Dec_wrapper(CAO_msgOctets _r0,CAO_bool *_r1, CAO_int c_d,CAO_int c_c,CAO_hOctets c_lHash, CAO_int c_n) {
  /* Boilerplate */
  public_in_value(__SMACK_value(_r1));
  public_in_value(__SMACK_value(_r0));     /* safe: CAO_msgOctets hides a star behind a typedef */
  public_in_value(__SMACK_value(c_lHash)); /* safe: CAO_hOctets hides a star behind a typedef */
  public_in_value(__SMACK_value(c_d));     /* safe: CAO_int hides a star behind a typedef */
  public_in_value(__SMACK_value(c_c));
  public_in_value(__SMACK_value(c_n));

  /* Important */
  public_in(__SMACK_values(c_c,MAX_CAOINT_LEN)); /* ciphertext */
  public_in(__SMACK_values(c_n,MAX_CAOINT_LEN)); /* modulus    */
  public_in(__SMACK_values(c_lHash,hLen));       /* hash label -- public in any case on decryption */

  declassified_out(__SMACK_values(_r0,msgLen));
  declassified_out(__SMACK_values(_r1,1));

  c_Dec(_r0,_r1,c_d,c_c,c_lHash,c_n);
}
