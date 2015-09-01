#ifndef ct_utils_H
#define ct_utils_H

#define constant_time_msb(a)\
  (0 - (a >> (sizeof(a) * 8 - 1)))

#define constant_time_lt(a,b)\
  (constant_time_msb(a ^ ((a ^ b) | ((a - b) ^ b))))

#define constant_time_ge(a,b)\
  (~constant_time_lt(a, b))

#define constant_time_ge_8(a,b)\
  ((unsigned char)(constant_time_ge(a, b)))

#define constant_time_select(mask,a,b)\
  ((mask & a) | (~mask & b))

#define constant_time_select_int(mask,a,b)\
  ((int)(constant_time_select(mask, (unsigned)(a), (unsigned)(b))))

#define constant_time_is_zero(a)\
  (constant_time_msb(~a & (a - 1)))

#define constant_time_eq(a,b)\
  (constant_time_is_zero(a ^ b))

#define constant_time_eq_8(a,b)\
  ((unsigned char)(constant_time_is_zero(a ^ b)))

#endif
