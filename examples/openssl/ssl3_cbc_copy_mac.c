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

/*-
 * ssl3_cbc_copy_mac copies |md_size| bytes from the end of |rec| to |out| in
 * constant time (independent of the concrete value of rec->length, which may
 * vary within a 256-byte window).
 *
 * ssl3_cbc_remove_padding or tls1_cbc_remove_padding must be called prior to
 * this function.
 *
 * On entry:
 *   rec->orig_len >= md_size
 *   md_size <= EVP_MAX_MD_SIZE
 *
 * If CBC_MAC_ROTATE_IN_PLACE is defined then the rotation is performed with
 * variable accesses in a 64-byte-aligned buffer. Assuming that this fits into
 * a single or pair of cache-lines, then the variable memory accesses don't
 * actually affect the timing. CPUs with smaller cache-lines [if any] are
 * not multi-core and are not considered vulnerable to cache-timing attacks.
 */
#define CBC_MAC_ROTATE_IN_PLACE

void ssl3_cbc_copy_mac(unsigned char *out,
                       const SSL3_RECORD *rec,
                       unsigned md_size, unsigned orig_len)
{
#if defined(CBC_MAC_ROTATE_IN_PLACE)
    unsigned char rotated_mac_buf[64 + EVP_MAX_MD_SIZE];
    unsigned char *rotated_mac;
#else
    unsigned char rotated_mac[EVP_MAX_MD_SIZE];
#endif

    /*
     * mac_end is the index of |rec->data| just after the end of the MAC.
     */
    unsigned mac_end = rec->length;
    unsigned mac_start = mac_end - md_size;
    /*
     * scan_start contains the number of bytes that we can ignore because the
     * MAC's position can only vary by 255 bytes.
     */
    unsigned scan_start = 0;
    unsigned i, j;
    unsigned div_spoiler;
    unsigned rotate_offset;

    OPENSSL_assert(orig_len >= md_size);
    OPENSSL_assert(md_size <= EVP_MAX_MD_SIZE);

#if defined(CBC_MAC_ROTATE_IN_PLACE)
    rotated_mac = rotated_mac_buf + ((0 - (size_t)rotated_mac_buf) & 63);
#endif

    /* This information is public so it's safe to branch based on it. */
    if (orig_len > md_size + 255 + 1)
        scan_start = orig_len - (md_size + 255 + 1);
    /*
     * div_spoiler contains a multiple of md_size that is used to cause the
     * modulo operation to be constant time. Without this, the time varies
     * based on the amount of padding when running on Intel chips at least.
     * The aim of right-shifting md_size is so that the compiler doesn't
     * figure out that it can remove div_spoiler as that would require it to
     * prove that md_size is always even, which I hope is beyond it.
     */
    div_spoiler = md_size >> 1;
    div_spoiler <<= (sizeof(div_spoiler) - 1) * 8;
    rotate_offset = (div_spoiler + mac_start - scan_start) % md_size;

    memset(rotated_mac, 0, md_size);
    for (i = scan_start, j = 0; i < orig_len; i++) {
      //        public_invariant_value(i);
      //        public_invariant_value(j);
        unsigned char mac_started = constant_time_ge_8(i, mac_start);
        unsigned char mac_ended = constant_time_ge_8(i, mac_end);
        unsigned char b = rec->data[i];
        rotated_mac[j++] |= b & mac_started & ~mac_ended;
        j &= constant_time_lt(j, md_size);
    }

    /* Now rotate the MAC */
#if defined(CBC_MAC_ROTATE_IN_PLACE)
    j = 0;
    for (i = 0; i < md_size; i++) {
      //        public_invariant_value(i,j,rotate_offset);
        /* in case cache-line is 32 bytes, touch second line */
        ((volatile unsigned char *)rotated_mac)[rotate_offset ^ 32];
        out[j++] = rotated_mac[rotate_offset++];
        rotate_offset &= constant_time_lt(rotate_offset, md_size);
    }
#else
    memset(out, 0, md_size);
    rotate_offset = md_size - rotate_offset;
    rotate_offset &= constant_time_lt(rotate_offset, md_size);
    for (i = 0; i < md_size; i++) {
        for (j = 0; j < md_size; j++)
            out[j] |= rotated_mac[i] & constant_time_eq_8(j, rotate_offset);
        rotate_offset++;
        rotate_offset &= constant_time_lt(rotate_offset, md_size);
    }
#endif
}

