#include "constant_time_locl.h"
#include <string.h>

#define MAX_HASH_BLOCK_SIZE 128

typedef struct ssl3_record_st {
    unsigned int length;
    unsigned char *data;    
    int type;
    unsigned char *input;
} SSL3_RECORD;

typedef struct ssl3_state_st {
    long flags;
    unsigned char read_sequence[8];
} SSL3_STATE;

typedef struct evp_cipher_st {
    unsigned long flags;
} EVP_CIPHER;

typedef struct evp_cipher_ctx_st {
    const EVP_CIPHER *cipher;
} EVP_CIPHER_CTX;

typedef struct ssl_st {
    char *expand;
    unsigned long options;
    struct ssl3_state_st *s3;   
    EVP_CIPHER_CTX *enc_read_ctx; 
    int slicing_cheat;
} SSL;

# define SSL_OP_TLS_BLOCK_PADDING_BUG       0x00000200L
# define TLS1_FLAGS_TLS_PADDING_BUG         0x0008
# define SSL_USE_EXPLICIT_IV(a) (a->slicing_cheat&1) // slicing
# define EVP_CIPHER_flags(e)        ((e)->flags)
# define EVP_CIPH_FLAG_AEAD_CIPHER       0x200000
# define EVP_MAX_MD_SIZE                 64/* longest known is SHA512 */
# define OPENSSL_assert(a) 1; // slicing

#define PEDANTIC // no asm

typedef struct env_md_st EVP_MD;

struct env_md_st {
    int type;
} /* EVP_MD */;

typedef struct b {
    int dummy;
} ENGINE;

typedef struct c {
    int dummy;
} EVP_PKEY_CTX;

typedef struct env_md_ctx_st EVP_MD_CTX;

struct env_md_ctx_st {
    const EVP_MD *digest;
    ENGINE *engine;             /* functional reference if 'digest' is
                                 * ENGINE-provided */
    unsigned long flags;
    void *md_data;
    /* Public key context for sign/verify */
    EVP_PKEY_CTX *pctx;
    /* Update function: usually copied from EVP_MD */
    int (*update) (EVP_MD_CTX *ctx, const void *data, size_t count);
} /* EVP_MD_CTX */;

#define NID_sha1                64
typedef unsigned int SHA_LONG;

# define SHA_LBLOCK      16
# define SHA_CBLOCK      (SHA_LBLOCK*4)/* SHA treats input data as a
                                        * contiguous array of 32 bit wide
                                        * big-endian values. */
# define SHA_LAST_BLOCK  (SHA_CBLOCK-8)
# define SHA_DIGEST_LENGTH 20

typedef struct SHAstate_st {
    SHA_LONG h0, h1, h2, h3, h4;
    SHA_LONG Nl, Nh;
    SHA_LONG data[SHA_LBLOCK];
    unsigned int num;
} SHA_CTX;

#  define NID_md5                         4
#  define MD5_LONG unsigned int
# define MD5_CBLOCK      64
# define MD5_LBLOCK      (MD5_CBLOCK/4)

typedef struct MD5state_st {
    MD5_LONG A, B, C, D;
    MD5_LONG Nl, Nh;
    MD5_LONG data[MD5_LBLOCK];
    unsigned int num;
} MD5_CTX;

#define OPENSSL_NO_SHA256
#define OPENSSL_NO_SHA512

# define MAX_HASH_BIT_COUNT_BYTES 16
# define EVP_MD_CTX_type(e)              EVP_MD_type(EVP_MD_CTX_md(e))

#define l2n(l,c)        (*((c)++)=(unsigned char)(((l)>>24L)&0xff), \
                         *((c)++)=(unsigned char)(((l)>>16L)&0xff), \
                         *((c)++)=(unsigned char)(((l)>> 8L)&0xff), \
                         *((c)++)=(unsigned char)(((l)     )&0xff))

#define DATA_ORDER_IS_BIG_ENDIAN

#define HASH_LONG               SHA_LONG
#define HASH_CTX                SHA_CTX
#define HASH_CBLOCK             SHA_CBLOCK
#define HASH_MAKE_STRING(c,s)   do {    \
        unsigned long ll;               \
        ll=(c)->h0; (void)HOST_l2c(ll,(s));     \
        ll=(c)->h1; (void)HOST_l2c(ll,(s));     \
        ll=(c)->h2; (void)HOST_l2c(ll,(s));     \
        ll=(c)->h3; (void)HOST_l2c(ll,(s));     \
        ll=(c)->h4; (void)HOST_l2c(ll,(s));     \
        } while (0)

# define HASH_UPDATE                    SHA1_Update
# define HASH_TRANSFORM                 SHA1_Transform
# define HASH_FINAL                     SHA1_Final
# define HASH_INIT                      SHA1_Init
# define HASH_BLOCK_DATA_ORDER          sha1_block_data_order
# if defined(__MWERKS__) && defined(__MC68K__)
   /* Metrowerks for Motorola fails otherwise:-( <appro@fy.chalmers.se> */
#  define Xupdate(a,ix,ia,ib,ic,id)     do { (a)=(ia^ib^ic^id);         \
                                             ix=(a)=ROTATE((a),1);      \
                                        } while (0)
# else
#  define Xupdate(a,ix,ia,ib,ic,id)     ( (a)=(ia^ib^ic^id),    \
                                          ix=(a)=ROTATE((a),1)  \
                                        )
# endif

# ifndef SHA1_ASM
static
# endif
void sha1_block_data_order(SHA_CTX *c, const void *p, size_t num);

#include "md32_common.h"

#define INIT_DATA_h0 0x67452301UL
#define INIT_DATA_h1 0xefcdab89UL
#define INIT_DATA_h2 0x98badcfeUL
#define INIT_DATA_h3 0x10325476UL
#define INIT_DATA_h4 0xc3d2e1f0UL

#  define fips_md_init_ctx(alg, cx) \
        int alg##_Init(cx##_CTX *c)

fips_md_init_ctx(SHA1, SHA)
{
    memset(c, 0, sizeof(*c));
    c->h0 = INIT_DATA_h0;
    c->h1 = INIT_DATA_h1;
    c->h2 = INIT_DATA_h2;
    c->h3 = INIT_DATA_h3;
    c->h4 = INIT_DATA_h4;
    return 1;
}

#define K_00_19 0x5a827999UL
#define K_20_39 0x6ed9eba1UL
#define K_40_59 0x8f1bbcdcUL
#define K_60_79 0xca62c1d6UL


/*
 * As pointed out by Wei Dai <weidai@eskimo.com>, F() below can be simplified
 * to the code in F_00_19.  Wei attributes these optimisations to Peter
 * Gutmann's SHS code, and he attributes it to Rich Schroeppel. #define
 * F(x,y,z) (((x) & (y)) | ((~(x)) & (z))) I've just become aware of another
 * tweak to be made, again from Wei Dai, in F_40_59, (x&a)|(y&a) -> (x|y)&a
 */
#define F_00_19(b,c,d)  ((((c) ^ (d)) & (b)) ^ (d))
#define F_20_39(b,c,d)  ((b) ^ (c) ^ (d))
#define F_40_59(b,c,d)  (((b) & (c)) | (((b)|(c)) & (d)))
#define F_60_79(b,c,d)  F_20_39(b,c,d)


# define BODY_00_15(i,a,b,c,d,e,f,xi) \
        (f)=xi+(e)+K_00_19+ROTATE((a),5)+F_00_19((b),(c),(d)); \
        (b)=ROTATE((b),30);

# define BODY_16_19(i,a,b,c,d,e,f,xi,xa,xb,xc,xd) \
        Xupdate(f,xi,xa,xb,xc,xd); \
        (f)+=(e)+K_00_19+ROTATE((a),5)+F_00_19((b),(c),(d)); \
        (b)=ROTATE((b),30);

# define BODY_20_31(i,a,b,c,d,e,f,xi,xa,xb,xc,xd) \
        Xupdate(f,xi,xa,xb,xc,xd); \
        (f)+=(e)+K_20_39+ROTATE((a),5)+F_20_39((b),(c),(d)); \
        (b)=ROTATE((b),30);

# define BODY_32_39(i,a,b,c,d,e,f,xa,xb,xc,xd) \
        Xupdate(f,xa,xa,xb,xc,xd); \
        (f)+=(e)+K_20_39+ROTATE((a),5)+F_20_39((b),(c),(d)); \
        (b)=ROTATE((b),30);

# define BODY_40_59(i,a,b,c,d,e,f,xa,xb,xc,xd) \
        Xupdate(f,xa,xa,xb,xc,xd); \
        (f)+=(e)+K_40_59+ROTATE((a),5)+F_40_59((b),(c),(d)); \
        (b)=ROTATE((b),30);

# define BODY_60_79(i,a,b,c,d,e,f,xa,xb,xc,xd) \
        Xupdate(f,xa,xa,xb,xc,xd); \
        (f)=xa+(e)+K_60_79+ROTATE((a),5)+F_60_79((b),(c),(d)); \
        (b)=ROTATE((b),30);

# ifdef X
#  undef X
# endif
# ifndef MD32_XARRAY
  /*
   * Originally X was an array. As it's automatic it's natural
   * to expect RISC compiler to accomodate at least part of it in
   * the register bank, isn't it? Unfortunately not all compilers
   * "find" this expectation reasonable:-( On order to make such
   * compilers generate better code I replace X[] with a bunch of
   * X0, X1, etc. See the function body below...
   *                                    <appro@fy.chalmers.se>
   */
#  define X(i)   XX##i
# else
  /*
   * However! Some compilers (most notably HP C) get overwhelmed by
   * that many local variables so that we have to have the way to
   * fall down to the original behavior.
   */
#  define X(i)   XX[i]
# endif

static void HASH_BLOCK_DATA_ORDER(SHA_CTX *c, const void *p, size_t num)
{
  //    public_in(__SMACK_value(p));
  //    public_in(__SMACK_value(c));

    const unsigned char *data = p;
    register unsigned MD32_REG_T A, B, C, D, E, T, l;
#  ifndef MD32_XARRAY
    unsigned MD32_REG_T XX0, XX1, XX2, XX3, XX4, XX5, XX6, XX7,
        XX8, XX9, XX10, XX11, XX12, XX13, XX14, XX15;
#  else
    SHA_LONG XX[16];
#  endif

    A = c->h0;
    B = c->h1;
    C = c->h2;
    D = c->h3;
    E = c->h4;

    for (;;) {
      //        public_invariant_value(num);
      //        public_invariant_value(data);
        const union {
            long one;
            char little;
        } is_endian = {
            1
        };
        if (!is_endian.little && sizeof(SHA_LONG) == 4
            && ((size_t)p % 4) == 0) {
            const SHA_LONG *W = (const SHA_LONG *)data;

            X(0) = W[0];
            X(1) = W[1];
            BODY_00_15(0, A, B, C, D, E, T, X(0));
            X(2) = W[2];
            BODY_00_15(1, T, A, B, C, D, E, X(1));
            X(3) = W[3];
            BODY_00_15(2, E, T, A, B, C, D, X(2));
            X(4) = W[4];
            BODY_00_15(3, D, E, T, A, B, C, X(3));
            X(5) = W[5];
            BODY_00_15(4, C, D, E, T, A, B, X(4));
            X(6) = W[6];
            BODY_00_15(5, B, C, D, E, T, A, X(5));
            X(7) = W[7];
            BODY_00_15(6, A, B, C, D, E, T, X(6));
            X(8) = W[8];
            BODY_00_15(7, T, A, B, C, D, E, X(7));
            X(9) = W[9];
            BODY_00_15(8, E, T, A, B, C, D, X(8));
            X(10) = W[10];
            BODY_00_15(9, D, E, T, A, B, C, X(9));
            X(11) = W[11];
            BODY_00_15(10, C, D, E, T, A, B, X(10));
            X(12) = W[12];
            BODY_00_15(11, B, C, D, E, T, A, X(11));
            X(13) = W[13];
            BODY_00_15(12, A, B, C, D, E, T, X(12));
            X(14) = W[14];
            BODY_00_15(13, T, A, B, C, D, E, X(13));
            X(15) = W[15];
            BODY_00_15(14, E, T, A, B, C, D, X(14));
            BODY_00_15(15, D, E, T, A, B, C, X(15));

            data += SHA_CBLOCK;
        } else {
            (void)HOST_c2l(data, l);
            X(0) = l;
            (void)HOST_c2l(data, l);
            X(1) = l;
            BODY_00_15(0, A, B, C, D, E, T, X(0));
            (void)HOST_c2l(data, l);
            X(2) = l;
            BODY_00_15(1, T, A, B, C, D, E, X(1));
            (void)HOST_c2l(data, l);
            X(3) = l;
            BODY_00_15(2, E, T, A, B, C, D, X(2));
            (void)HOST_c2l(data, l);
            X(4) = l;
            BODY_00_15(3, D, E, T, A, B, C, X(3));
            (void)HOST_c2l(data, l);
            X(5) = l;
            BODY_00_15(4, C, D, E, T, A, B, X(4));
            (void)HOST_c2l(data, l);
            X(6) = l;
            BODY_00_15(5, B, C, D, E, T, A, X(5));
            (void)HOST_c2l(data, l);
            X(7) = l;
            BODY_00_15(6, A, B, C, D, E, T, X(6));
            (void)HOST_c2l(data, l);
            X(8) = l;
            BODY_00_15(7, T, A, B, C, D, E, X(7));
            (void)HOST_c2l(data, l);
            X(9) = l;
            BODY_00_15(8, E, T, A, B, C, D, X(8));
            (void)HOST_c2l(data, l);
            X(10) = l;
            BODY_00_15(9, D, E, T, A, B, C, X(9));
            (void)HOST_c2l(data, l);
            X(11) = l;
            BODY_00_15(10, C, D, E, T, A, B, X(10));
            (void)HOST_c2l(data, l);
            X(12) = l;
            BODY_00_15(11, B, C, D, E, T, A, X(11));
            (void)HOST_c2l(data, l);
            X(13) = l;
            BODY_00_15(12, A, B, C, D, E, T, X(12));
            (void)HOST_c2l(data, l);
            X(14) = l;
            BODY_00_15(13, T, A, B, C, D, E, X(13));
            (void)HOST_c2l(data, l);
            X(15) = l;
            BODY_00_15(14, E, T, A, B, C, D, X(14));
            BODY_00_15(15, D, E, T, A, B, C, X(15));
        }

        BODY_16_19(16, C, D, E, T, A, B, X(0), X(0), X(2), X(8), X(13));
        BODY_16_19(17, B, C, D, E, T, A, X(1), X(1), X(3), X(9), X(14));
        BODY_16_19(18, A, B, C, D, E, T, X(2), X(2), X(4), X(10), X(15));
        BODY_16_19(19, T, A, B, C, D, E, X(3), X(3), X(5), X(11), X(0));

        BODY_20_31(20, E, T, A, B, C, D, X(4), X(4), X(6), X(12), X(1));
        BODY_20_31(21, D, E, T, A, B, C, X(5), X(5), X(7), X(13), X(2));
        BODY_20_31(22, C, D, E, T, A, B, X(6), X(6), X(8), X(14), X(3));
        BODY_20_31(23, B, C, D, E, T, A, X(7), X(7), X(9), X(15), X(4));
        BODY_20_31(24, A, B, C, D, E, T, X(8), X(8), X(10), X(0), X(5));
        BODY_20_31(25, T, A, B, C, D, E, X(9), X(9), X(11), X(1), X(6));
        BODY_20_31(26, E, T, A, B, C, D, X(10), X(10), X(12), X(2), X(7));
        BODY_20_31(27, D, E, T, A, B, C, X(11), X(11), X(13), X(3), X(8));
        BODY_20_31(28, C, D, E, T, A, B, X(12), X(12), X(14), X(4), X(9));
        BODY_20_31(29, B, C, D, E, T, A, X(13), X(13), X(15), X(5), X(10));
        BODY_20_31(30, A, B, C, D, E, T, X(14), X(14), X(0), X(6), X(11));
        BODY_20_31(31, T, A, B, C, D, E, X(15), X(15), X(1), X(7), X(12));

        BODY_32_39(32, E, T, A, B, C, D, X(0), X(2), X(8), X(13));
        BODY_32_39(33, D, E, T, A, B, C, X(1), X(3), X(9), X(14));
        BODY_32_39(34, C, D, E, T, A, B, X(2), X(4), X(10), X(15));
        BODY_32_39(35, B, C, D, E, T, A, X(3), X(5), X(11), X(0));
        BODY_32_39(36, A, B, C, D, E, T, X(4), X(6), X(12), X(1));
        BODY_32_39(37, T, A, B, C, D, E, X(5), X(7), X(13), X(2));
        BODY_32_39(38, E, T, A, B, C, D, X(6), X(8), X(14), X(3));
        BODY_32_39(39, D, E, T, A, B, C, X(7), X(9), X(15), X(4));

        BODY_40_59(40, C, D, E, T, A, B, X(8), X(10), X(0), X(5));
        BODY_40_59(41, B, C, D, E, T, A, X(9), X(11), X(1), X(6));
        BODY_40_59(42, A, B, C, D, E, T, X(10), X(12), X(2), X(7));
        BODY_40_59(43, T, A, B, C, D, E, X(11), X(13), X(3), X(8));
        BODY_40_59(44, E, T, A, B, C, D, X(12), X(14), X(4), X(9));
        BODY_40_59(45, D, E, T, A, B, C, X(13), X(15), X(5), X(10));
        BODY_40_59(46, C, D, E, T, A, B, X(14), X(0), X(6), X(11));
        BODY_40_59(47, B, C, D, E, T, A, X(15), X(1), X(7), X(12));
        BODY_40_59(48, A, B, C, D, E, T, X(0), X(2), X(8), X(13));
        BODY_40_59(49, T, A, B, C, D, E, X(1), X(3), X(9), X(14));
        BODY_40_59(50, E, T, A, B, C, D, X(2), X(4), X(10), X(15));
        BODY_40_59(51, D, E, T, A, B, C, X(3), X(5), X(11), X(0));
        BODY_40_59(52, C, D, E, T, A, B, X(4), X(6), X(12), X(1));
        BODY_40_59(53, B, C, D, E, T, A, X(5), X(7), X(13), X(2));
        BODY_40_59(54, A, B, C, D, E, T, X(6), X(8), X(14), X(3));
        BODY_40_59(55, T, A, B, C, D, E, X(7), X(9), X(15), X(4));
        BODY_40_59(56, E, T, A, B, C, D, X(8), X(10), X(0), X(5));
        BODY_40_59(57, D, E, T, A, B, C, X(9), X(11), X(1), X(6));
        BODY_40_59(58, C, D, E, T, A, B, X(10), X(12), X(2), X(7));
        BODY_40_59(59, B, C, D, E, T, A, X(11), X(13), X(3), X(8));

        BODY_60_79(60, A, B, C, D, E, T, X(12), X(14), X(4), X(9));
        BODY_60_79(61, T, A, B, C, D, E, X(13), X(15), X(5), X(10));
        BODY_60_79(62, E, T, A, B, C, D, X(14), X(0), X(6), X(11));
        BODY_60_79(63, D, E, T, A, B, C, X(15), X(1), X(7), X(12));
        BODY_60_79(64, C, D, E, T, A, B, X(0), X(2), X(8), X(13));
        BODY_60_79(65, B, C, D, E, T, A, X(1), X(3), X(9), X(14));
        BODY_60_79(66, A, B, C, D, E, T, X(2), X(4), X(10), X(15));
        BODY_60_79(67, T, A, B, C, D, E, X(3), X(5), X(11), X(0));
        BODY_60_79(68, E, T, A, B, C, D, X(4), X(6), X(12), X(1));
        BODY_60_79(69, D, E, T, A, B, C, X(5), X(7), X(13), X(2));
        BODY_60_79(70, C, D, E, T, A, B, X(6), X(8), X(14), X(3));
        BODY_60_79(71, B, C, D, E, T, A, X(7), X(9), X(15), X(4));
        BODY_60_79(72, A, B, C, D, E, T, X(8), X(10), X(0), X(5));
        BODY_60_79(73, T, A, B, C, D, E, X(9), X(11), X(1), X(6));
        BODY_60_79(74, E, T, A, B, C, D, X(10), X(12), X(2), X(7));
        BODY_60_79(75, D, E, T, A, B, C, X(11), X(13), X(3), X(8));
        BODY_60_79(76, C, D, E, T, A, B, X(12), X(14), X(4), X(9));
        BODY_60_79(77, B, C, D, E, T, A, X(13), X(15), X(5), X(10));
        BODY_60_79(78, A, B, C, D, E, T, X(14), X(0), X(6), X(11));
        BODY_60_79(79, T, A, B, C, D, E, X(15), X(1), X(7), X(12));

        c->h0 = (c->h0 + E) & 0xffffffffL;
        c->h1 = (c->h1 + T) & 0xffffffffL;
        c->h2 = (c->h2 + A) & 0xffffffffL;
        c->h3 = (c->h3 + B) & 0xffffffffL;
        c->h4 = (c->h4 + C) & 0xffffffffL;

        if (--num == 0)
            break;

        A = c->h0;
        B = c->h1;
        C = c->h2;
        D = c->h3;
        E = c->h4;

    }
}


/* From here onwards there are only stubs */

void EVP_MD_CTX_init(EVP_MD_CTX *ctx)
{
}

int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl)
{
    return 0;
}

int EVP_DigestUpdate(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    return 0;
}

int EVP_DigestFinal(EVP_MD_CTX *ctx, unsigned char *md, unsigned int *size)
{
    return 0;
}

int EVP_MD_CTX_cleanup(EVP_MD_CTX *ctx)
{
    return 0;
}

/*
 * u32toLE serialises an unsigned, 32-bit number (n) as four bytes at (p) in
 * little-endian order. The value of p is advanced by four.
 */
#define u32toLE(n, p) \
        (*((p)++)=(unsigned char)(n), \
         *((p)++)=(unsigned char)(n>>8), \
         *((p)++)=(unsigned char)(n>>16), \
         *((p)++)=(unsigned char)(n>>24))

/*
 * These functions serialize the state of a hash and thus perform the
 * standard "final" operation without adding the padding and length that such
 * a function typically does.
 */
static void tls1_md5_final_raw(void *ctx, unsigned char *md_out)
{
    MD5_CTX *md5 = ctx;
    u32toLE(md5->A, md_out);
    u32toLE(md5->B, md_out);
    u32toLE(md5->C, md_out);
    u32toLE(md5->D, md_out);
}

static void tls1_sha1_final_raw(void *ctx, unsigned char *md_out)
{
    SHA_CTX *sha1 = ctx;
    l2n(sha1->h0, md_out);
    l2n(sha1->h1, md_out);
    l2n(sha1->h2, md_out);
    l2n(sha1->h3, md_out);
    l2n(sha1->h4, md_out);
}

# define LARGEST_DIGEST_CTX SHA_CTX

/*-
 * ssl3_cbc_digest_record computes the MAC of a decrypted, padded SSLv3/TLS
 * record.
 *
 *   ctx: the EVP_MD_CTX from which we take the hash function.
 *     ssl3_cbc_record_digest_supported must return true for this EVP_MD_CTX.
 *   md_out: the digest output. At most EVP_MAX_MD_SIZE bytes will be written.
 *   md_out_size: if non-NULL, the number of output bytes is written here.
 *   header: the 13-byte, TLS record header.
 *   data: the record data itself, less any preceeding explicit IV.
 *   data_plus_mac_size: the secret, reported length of the data and MAC
 *     once the padding has been removed.
 *   data_plus_mac_plus_padding_size: the public length of the whole
 *     record, including padding.
 *   is_sslv3: non-zero if we are to use SSLv3. Otherwise, TLS.
 *
 * On entry: by virtue of having been through one of the remove_padding
 * functions, above, we know that data_plus_mac_size is large enough to contain
 * a padding byte and MAC. (If the padding was invalid, it might contain the
 * padding too. )
 */
void ssl3_cbc_digest_record(const EVP_MD_CTX *ctx,
                            unsigned char *md_out,
                            size_t *md_out_size,
                            const unsigned char header[13],
                            const unsigned char *data,
                            size_t data_plus_mac_size,
                            size_t data_plus_mac_plus_padding_size,
                            const unsigned char *mac_secret,
                            unsigned mac_secret_length, char is_sslv3)
{
    union {
        double align;
        unsigned char c[sizeof(LARGEST_DIGEST_CTX)];
    } md_state;
    void (*md_final_raw) (void *ctx, unsigned char *md_out);
    void (*md_transform) (void *ctx, const unsigned char *block);
    unsigned md_size, md_block_size = 64;
    unsigned sslv3_pad_length = 40, header_length, variance_blocks,
        len, max_mac_bytes, num_blocks,
        num_starting_blocks, k, mac_end_offset, c, index_a, index_b;
    unsigned int bits;          /* at most 18 bits */
    unsigned char length_bytes[MAX_HASH_BIT_COUNT_BYTES];
    /* hmac_pad is the masked HMAC key. */
    unsigned char hmac_pad[MAX_HASH_BLOCK_SIZE];
    unsigned char first_block[MAX_HASH_BLOCK_SIZE];
    unsigned char mac_out[EVP_MAX_MD_SIZE];
    unsigned i, j, md_out_size_u;
    EVP_MD_CTX md_ctx;
    /*
     * mdLengthSize is the number of bytes in the length field that
     * terminates * the hash.
     */
    unsigned md_length_size = 8;
    char length_is_big_endian = 1;

    /*
     * This is a, hopefully redundant, check that allows us to forget about
     * many possible overflows later in this function.
     */
    OPENSSL_assert(data_plus_mac_plus_padding_size < 1024 * 1024);

#if (0) // Too much to ask from smack 
    switch (EVP_MD_CTX_type(ctx)) {
    case NID_md5:
        MD5_Init((MD5_CTX *)md_state.c);
        md_final_raw = tls1_md5_final_raw;
        md_transform =
            (void (*)(void *ctx, const unsigned char *block))MD5_Transform;
        md_size = 16;
        sslv3_pad_length = 48;
        length_is_big_endian = 0;
        break;
    case NID_sha1:
#endif // Too much to ask from smack
        SHA1_Init((SHA_CTX *)md_state.c);
        md_final_raw = tls1_sha1_final_raw;
        md_transform =
            (void (*)(void *ctx, const unsigned char *block))SHA1_Transform;
        md_size = 20;
#if (0) // Too much to ask from smack
        break;
#ifndef OPENSSL_NO_SHA256
    case NID_sha224:
        SHA224_Init((SHA256_CTX *)md_state.c);
        md_final_raw = tls1_sha256_final_raw;
        md_transform =
            (void (*)(void *ctx, const unsigned char *block))SHA256_Transform;
        md_size = 224 / 8;
        break;
    case NID_sha256:
        SHA256_Init((SHA256_CTX *)md_state.c);
        md_final_raw = tls1_sha256_final_raw;
        md_transform =
            (void (*)(void *ctx, const unsigned char *block))SHA256_Transform;
        md_size = 32;
        break;
#endif
#ifndef OPENSSL_NO_SHA512
    case NID_sha384:
        SHA384_Init((SHA512_CTX *)md_state.c);
        md_final_raw = tls1_sha512_final_raw;
        md_transform =
            (void (*)(void *ctx, const unsigned char *block))SHA512_Transform;
        md_size = 384 / 8;
        md_block_size = 128;
        md_length_size = 16;
        break;
    case NID_sha512:
        SHA512_Init((SHA512_CTX *)md_state.c);
        md_final_raw = tls1_sha512_final_raw;
        md_transform =
            (void (*)(void *ctx, const unsigned char *block))SHA512_Transform;
        md_size = 64;
        md_block_size = 128;
        md_length_size = 16;
        break;
#endif
    default:
        /*
         * ssl3_cbc_record_digest_supported should have been called first to
         * check that the hash function is supported.
         */
        OPENSSL_assert(0);
        if (md_out_size)
            *md_out_size = -1;
        return;
    }
#endif // Too much to ask from smack
    OPENSSL_assert(md_length_size <= MAX_HASH_BIT_COUNT_BYTES);
    OPENSSL_assert(md_block_size <= MAX_HASH_BLOCK_SIZE);
    OPENSSL_assert(md_size <= EVP_MAX_MD_SIZE);

    header_length = 13;
    if (is_sslv3) {
        header_length = mac_secret_length + sslv3_pad_length + 8 /* sequence
                                                                  * number */  +
            1 /* record type */  +
            2 /* record length */ ;
    }

    /*
     * variance_blocks is the number of blocks of the hash that we have to
     * calculate in constant time because they could be altered by the
     * padding value. In SSLv3, the padding must be minimal so the end of
     * the plaintext varies by, at most, 15+20 = 35 bytes. (We conservatively
     * assume that the MAC size varies from 0..20 bytes.) In case the 9 bytes
     * of hash termination (0x80 + 64-bit length) don't fit in the final
     * block, we say that the final two blocks can vary based on the padding.
     * TLSv1 has MACs up to 48 bytes long (SHA-384) and the padding is not
     * required to be minimal. Therefore we say that the final six blocks can
     * vary based on the padding. Later in the function, if the message is
     * short and there obviously cannot be this many blocks then
     * variance_blocks can be reduced.
     */
    variance_blocks = is_sslv3 ? 2 : 6;
    /*
     * From now on we're dealing with the MAC, which conceptually has 13
     * bytes of `header' before the start of the data (TLS) or 71/75 bytes
     * (SSLv3)
     */
    len = data_plus_mac_plus_padding_size + header_length;
    /*
     * max_mac_bytes contains the maximum bytes of bytes in the MAC,
     * including * |header|, assuming that there's no padding.
     */
    max_mac_bytes = len - md_size - 1;
    /* num_blocks is the maximum number of hash blocks. */
    num_blocks =
        (max_mac_bytes + 1 + md_length_size + md_block_size -
         1) / md_block_size;
    /*
     * In order to calculate the MAC in constant time we have to handle the
     * final blocks specially because the padding value could cause the end
     * to appear somewhere in the final |variance_blocks| blocks and we can't
     * leak where. However, |num_starting_blocks| worth of data can be hashed
     * right away because no padding value can affect whether they are
     * plaintext.
     */
    num_starting_blocks = 0;
    /*
     * k is the starting byte offset into the conceptual header||data where
     * we start processing.
     */
    k = 0;
    /*
     * mac_end_offset is the index just past the end of the data to be MACed.
     */
    mac_end_offset = data_plus_mac_size + header_length - md_size;
    /*
     * c is the index of the 0x80 byte in the final hash block that contains
     * application data.
     */
    c = mac_end_offset % md_block_size;
    /*
     * index_a is the hash block number that contains the 0x80 terminating
     * value.
     */
    index_a = mac_end_offset / md_block_size;
    /*
     * index_b is the hash block number that contains the 64-bit hash length,
     * in bits.
     */
    index_b = (mac_end_offset + md_length_size) / md_block_size;
    /*
     * bits is the hash-length in bits. It includes the additional hash block
     * for the masked HMAC key, or whole of |header| in the case of SSLv3.
     */

    /*
     * For SSLv3, if we're going to have any starting blocks then we need at
     * least two because the header is larger than a single block.
     */
    if (num_blocks > variance_blocks + (is_sslv3 ? 1 : 0)) {
        num_starting_blocks = num_blocks - variance_blocks;
        k = md_block_size * num_starting_blocks;
    }

    bits = 8 * mac_end_offset;
    if (!is_sslv3) {
        /*
         * Compute the initial HMAC block. For SSLv3, the padding and secret
         * bytes are included in |header| because they take more than a
         * single block.
         */
        bits += 8 * md_block_size;
        memset(hmac_pad, 0, md_block_size);
        OPENSSL_assert(mac_secret_length <= sizeof(hmac_pad));
        memcpy(hmac_pad, mac_secret, mac_secret_length);
        for (i = 0; i < md_block_size; i++) {
	  //            public_invariant_value(i);
            hmac_pad[i] ^= 0x36;
        }

        md_transform(md_state.c, hmac_pad);
    }

    if (length_is_big_endian) {
        memset(length_bytes, 0, md_length_size - 4);
        length_bytes[md_length_size - 4] = (unsigned char)(bits >> 24);
        length_bytes[md_length_size - 3] = (unsigned char)(bits >> 16);
        length_bytes[md_length_size - 2] = (unsigned char)(bits >> 8);
        length_bytes[md_length_size - 1] = (unsigned char)bits;
    } else {
        memset(length_bytes, 0, md_length_size);
        length_bytes[md_length_size - 5] = (unsigned char)(bits >> 24);
        length_bytes[md_length_size - 6] = (unsigned char)(bits >> 16);
        length_bytes[md_length_size - 7] = (unsigned char)(bits >> 8);
        length_bytes[md_length_size - 8] = (unsigned char)bits;
    }

    if (k > 0) {
        if (is_sslv3) {
            unsigned overhang;

            /*
             * The SSLv3 header is larger than a single block. overhang is
             * the number of bytes beyond a single block that the header
             * consumes: either 7 bytes (SHA1) or 11 bytes (MD5). There are no
             * ciphersuites in SSLv3 that are not SHA1 or MD5 based and
             * therefore we can be confident that the header_length will be
             * greater than |md_block_size|. However we add a sanity check just
             * in case
             */
            if (header_length <= md_block_size) {
                /* Should never happen */
                return;
            }
            overhang = header_length - md_block_size;
            md_transform(md_state.c, header);
            memcpy(first_block, header + md_block_size, overhang);
            memcpy(first_block + overhang, data, md_block_size - overhang);
            md_transform(md_state.c, first_block);
            for (i = 1; i < k / md_block_size - 1; i++) {
	      //                public_invariant_value(i);
                md_transform(md_state.c, data + md_block_size * i - overhang);
            }
        } else {
            /* k is a multiple of md_block_size. */
            memcpy(first_block, header, 13);
            memcpy(first_block + 13, data, md_block_size - 13);
            md_transform(md_state.c, first_block);
            for (i = 1; i < k / md_block_size; i++) {
	      //                public_invariant_value(i);
                md_transform(md_state.c, data + md_block_size * i - 13);
            }
        }
    }

    memset(mac_out, 0, sizeof(mac_out));

    /*
     * We now process the final hash blocks. For each block, we construct it
     * in constant time. If the |i==index_a| then we'll include the 0x80
     * bytes and zero pad etc. For each block we selectively copy it, in
     * constant time, to |mac_out|.
     */
    for (i = num_starting_blocks; i <= num_starting_blocks + variance_blocks;
         i++) {
      //        public_invariant_value(i);
      //        public_invariant_value(k);
        unsigned char block[MAX_HASH_BLOCK_SIZE];
        unsigned char is_block_a = constant_time_eq_8(i, index_a);
        unsigned char is_block_b = constant_time_eq_8(i, index_b);
        for (j = 0; j < md_block_size; j++) {
	  //            public_invariant_value(j);
	  //            public_invariant_value(k);
            unsigned char b = 0, is_past_c, is_past_cp1;
            if (k < header_length)
                b = header[k];
            else if (k < data_plus_mac_plus_padding_size + header_length)
                b = data[k - header_length];
            k++;

            is_past_c = is_block_a & constant_time_ge_8(j, c);
            is_past_cp1 = is_block_a & constant_time_ge_8(j, c + 1);
            /*
             * If this is the block containing the end of the application
             * data, and we are at the offset for the 0x80 value, then
             * overwrite b with 0x80.
             */
            b = constant_time_select_8(is_past_c, 0x80, b);
            /*
             * If this the the block containing the end of the application
             * data and we're past the 0x80 value then just write zero.
             */
            b = b & ~is_past_cp1;
            /*
             * If this is index_b (the final block), but not index_a (the end
             * of the data), then the 64-bit length didn't fit into index_a
             * and we're having to add an extra block of zeros.
             */
            b &= ~is_block_b | is_block_a;

            /*
             * The final bytes of one of the blocks contains the length.
             */
            if (j >= md_block_size - md_length_size) {
                /* If this is index_b, write a length byte. */
                b = constant_time_select_8(is_block_b,
                                           length_bytes[j -
                                                        (md_block_size -
                                                         md_length_size)], b);
            }
            block[j] = b;
        }

        md_transform(md_state.c, block);
        md_final_raw(md_state.c, block);
        /* If this is index_b, copy the hash value to |mac_out|. */
        for (j = 0; j < md_size; j++) {
	  //            public_invariant_value(j);
            mac_out[j] |= block[j] & is_block_b;
        }
    }

    EVP_MD_CTX_init(&md_ctx);
    EVP_DigestInit_ex(&md_ctx, ctx->digest, NULL /* engine */ );
    if (is_sslv3) {
        /* We repurpose |hmac_pad| to contain the SSLv3 pad2 block. */
        memset(hmac_pad, 0x5c, sslv3_pad_length);

        EVP_DigestUpdate(&md_ctx, mac_secret, mac_secret_length);
        EVP_DigestUpdate(&md_ctx, hmac_pad, sslv3_pad_length);
        EVP_DigestUpdate(&md_ctx, mac_out, md_size);
    } else {
        /* Complete the HMAC in the standard manner. */
        for (i = 0; i < md_block_size; i++) {
	  //            public_invariant_value(i);
            hmac_pad[i] ^= 0x6a;
        }

        EVP_DigestUpdate(&md_ctx, hmac_pad, md_block_size);
        EVP_DigestUpdate(&md_ctx, mac_out, md_size);
    }
    EVP_DigestFinal(&md_ctx, md_out, &md_out_size_u);
    if (md_out_size)
        *md_out_size = md_out_size_u;
    EVP_MD_CTX_cleanup(&md_ctx);
}
