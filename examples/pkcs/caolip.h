/****************************************************************\
 CAOLIP: A Stripped Down Version of Lenstra's LIP
 
 Restrictions:
 - Only unsigned arithmetic (no subtraction)
 - Static memory allocation (no-resizing) means max size 
 of integers must be determined at compile-time 
 - Multiplication and division by small values (<RADIX)
 - Full-blown modular reduction and exponentiation
 - All computations except mod fix size of integers as input
 - All computations run in constant time
 
 \***************************************************************/

// This macro comes from static analysis of the CAO/EC program
#define MAX_CAOINT_SIZE 4096

// Integers are represented in 2^NBITS radix
#define NBITS           30
#define NBITSH          (NBITS>>1)
#define RADIX           (1L<<NBITS)
#define RADIXM          (RADIX-1)
#define RADIXROOT       (1L<<NBITSH)
#define RADIXROOTM      (RADIXROOT-1)

// The max bit length of a CAO int gives max internal lens
#define MAX_CAOINT_LEN  (MAX_CAOINT_SIZE / NBITS + 1)

// An integer is represented as an array of longs
typedef long verylong[MAX_CAOINT_LEN];

// Declaration implies allocation of an array of constant len
#define zdecl(a,b) long a[b]
#define szdecl(a,b) static long a[b]

// The following operations are necessary for RSA-OAEP
void zzero(verylong a);
void zcopy(verylong a, verylong b);
long zcompare(verylong a, verylong b);
void zintoz(long d, verylong a);
unsigned long ztouint(verylong a);
void zadd(verylong a, verylong b, verylong c);
void zsmul(verylong a, long d, verylong b);
long zsdiv(verylong a, long d, verylong b);
void zmod(verylong a, long sa, verylong b, verylong r);
void zexpmod(verylong a, verylong e, verylong n, verylong b);
