#include "caolip.h"

typedef int CAO_bool;
typedef verylong CAO_int;
typedef int CAO_Cint;
typedef struct CAO_mod_s {
  zdecl(r,MAX_CAOINT_LEN);
  zdecl(n,MAX_CAOINT_LEN);
} CAO_mod;

typedef unsigned char CAO_ubits8;
typedef unsigned char *CAO_vector;
#define CAO_REF unsigned char*

#define CAO_mod_decl(a,b)                 \
  CAO_mod a;                            \
  zcopy(b,(a).n);                       \
  zzero((a).r)

#define CAO_mod_pow(a,b,c)                \
  zexpmod((b).r,c,(b).n,(a).r)

#define CAO_mod_cast_int(a,b)               \
  zcopy((b).r,a)

#define CAO_int_decl(a)                   \
  zdecl(a,MAX_CAOINT_LEN);              \
  zzero(a)

#define CAO_int_cast_mod(a,b)               \
  zmod(b,MAX_CAOINT_LEN,(a).n,(a).r)

#define CAO_int_assign(a,b)               \
  zcopy(b,a)

#define CAO_int_cast_ubits8(a,b)            \
  a=(unsigned char)ztouint(b)

#define CAO_int_div(a,b,c)                \
  zsdiv(b,c,a)

#define CAO_int_mul(a,b,c)                \
  zsmul(b,c,a)

#define CAO_int_add(a,b,c)                \
  zadd(b,c,a)

#define CAO_int_ge(a,b,c)                 \
  a=(int)(zcompare(b,c) >= 0)

#define CAO_vector_decl(a,l)              \
  unsigned char a[l];                 \
  {                         \
    register long __it;               \
    for(__it=0; __it<l; __it++)           \
      a[__it] = 0;                 \
  }

#define CAO_vector_ref(a,b)               \
  (a)+(b)

#define CAO_vector_select(a,b,c)            \
  a = (b)[c]

#define CAO_vector_assign(a,b,l)            \
  {                         \
    register long __it;               \
    register unsigned char *__aa=(a);       \
    register unsigned char *__bb=(b);       \
    for(__it=0; __it<l; __it++)           \
      *__aa++ = *__bb++;               \
  }

#define CAO_vector_range_set(a,b,c,d)           \
  {                         \
    register long __it;               \
    register unsigned char *__aa=(a)+(c);     \
    register unsigned char *__bb=(b);       \
    register long __l = (d)-(c)+1;          \
    for(__it=0; __it<__l; __it++)           \
      *__aa++ = *__bb++;               \
  }

#define CAO_vector_range_select(a,b,c,d)        \
  {                         \
    register long __it;               \
    register unsigned char *__aa=(a);       \
    register unsigned char *__bb=(b)+(c);     \
    register long __l = (d)-(c)+1;          \
    for(__it=0; __it<__l; __it++)           \
      *__aa++ = *__bb++;               \
  }

#define CAO_vector_equal(a,b,c,l)             \
  {                         \
    register long __it;               \
    register long __ac=0;             \
    register unsigned char *__bb=(b);       \
    register unsigned char *__cc=(c);       \
    for(__it=0; __it<l; __it++)           \
      __ac =  __ac | (*__bb++ ^ *__cc++);     \
    a = (1 & ((__ac - 1) >> 8));          \
  }

#define CAO_vector_zipWith_BitXorOp(a,b,c,l)      \
  {                         \
    register long __it;               \
    register unsigned char *__aa=(a);       \
    register unsigned char *__bb=(b);       \
    register unsigned char *__cc=(c);       \
    for(__it=0; __it<l; __it++)           \
      *__aa++ = *__bb++ ^ *__cc++;         \
  }

#define CAO_ubits8_assign(a,b)              \
  a=b

#define CAO_ubits8_xor(a, b, c)             \
  a = (b) ^ (c)

#define CAO_ubits8_cast_int(a,b)            \
  zintoz(b,a)

#define CAO_ubits8_init(a,b)              \
  a=(unsigned char)(b)

#define CAO_ubits8_equal(a,b,c)             \
  a=((b)==(c))

#define CAO_bool_init(a,b)                \
  a=0

#define CAO_bool_or(a,b,c)                \
  a=(b)|(c)

#define CAO_bool_and(a,b,c)               \
  a=(b)&(c)

#define CAO_bool_assign(a,b)              \
  a=b
