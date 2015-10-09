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

#include "caolip.h"

/*************************************************/
/* AUXILLIARY LEAF FUNCTIONS                     */
/*************************************************/

/* Calculates ww = aa^2  */
/* Output must not be input */
static void sq(verylong aa, long ww[MAX_CAOINT_LEN << 1]) {
  register long *a, *w, *pw;
  register long i, j, twicei;
  register long c;
  register long bot1, up1, bot2, up2;
  register long t1, t2, t3;
  register unsigned long aax, bbx;

  w=ww;
  for(i = MAX_CAOINT_LEN << 1; i; i--) {
    *w=0;
    w++;
  }
  w=ww;
  a=aa;
  twicei=0;
  for(; i<MAX_CAOINT_LEN; i++) {
    bot1 = a[i] & RADIXROOTM;
    up1 = a[i] >> NBITSH;
    t1=up1*up1;
    t2=bot1*bot1;
    t3 = (up1*bot1) << 1;
    aax = t2 + ((t3 & RADIXROOTM) << NBITSH) + w[twicei];
    c = t1 + (aax >> NBITS) + (t3 >> NBITSH);
    w[twicei] = aax & RADIXM;
    pw = &(w[twicei+1]);
    for (j=i+1; j<MAX_CAOINT_LEN; j++) {
      bot1 = a[i] & RADIXROOTM;
      up1 = a[i] >> NBITSH;
      bot2 = a[j] & RADIXROOTM;
      up2 = a[j] >> NBITSH;
      t1 = up1 * up2;
      t2 = bot1 * bot2;
      t3 = (up1 + bot1) * (up2+bot2) - t1 -t2;
      aax = (t2 + ((t3 & RADIXROOTM) << NBITSH)) << 1;
      bbx = ((t1 + (t3 >> NBITSH)) << 1) + (aax >> (NBITS));
      aax = (aax & RADIXM) + (c & RADIXM) + *pw;
      c = bbx + (aax >> NBITS) + (c >> NBITS);
      *pw = aax & RADIXM;
      pw++;
    }
    *pw = c;
    twicei+=2;
  }
}

/* Calculates ww = aa*bb */
/* Output must not be input */
static void mul(verylong aa, verylong bb, long ww[MAX_CAOINT_LEN << 1]) {
  register long *a, *b, *w, *pw;
  register long bot1, up1, bot2, up2;
  register long t1, t2, t3, carry;
  register unsigned long aax;
  register long i, j;

  w=ww;
  for(i = MAX_CAOINT_LEN << 1; i>0; i--) {
    *w=0;
    w++;
  }
  w=ww;
  a=aa;
  b=bb;
  for(; i<MAX_CAOINT_LEN; i++) {
    carry = 0;
    pw=&(w[i]);
    for (j=0; j<MAX_CAOINT_LEN; j++) {
      bot1 = b[i] & RADIXROOTM;
      up1 = b[i] >> NBITSH;
      bot2 = a[j] & RADIXROOTM;
      up2 = a[j] >> NBITSH;
      t1 = up1 * up2;
      t2 = bot1 * bot2;
      t3 = (up1 + bot1) * (up2+bot2) - t1 - t2;
      aax = t2 + ((t3 & RADIXROOTM) << NBITSH) + (carry & RADIXM);
      t2 = (aax & RADIXM) + *pw;
      carry = t1 + (t3 >> NBITSH) + (t2 >> NBITS) + (aax >> NBITS) + (carry >> NBITS);
      *pw = t2 & RADIXM;
      pw++;
    }
    *pw = carry;
  }
}

/* Divides (numh << RADIX + numl) by den.
   Assumes: numh < den
            RADIX/2 <= (den << normbits) < RADIX
   Ensures: (numh << RADIX + numl) = qq * den + output */
static long div21(long numh, long numl, long den, long normbits, long *qq) {
  register long mden, dh, dl ,qh, ql;
  register long flag, flag1, flagm, k;
  register long ptop, pbot, rtop, rbot;
  register long b1d1,m;

  // Normalization
  den <<= normbits;
  dh = den >> NBITSH;
  dl = den & RADIXROOTM;
  mden = RADIX - den;
  numh = ((numh << normbits) & RADIXM) + (numl >> (NBITS-normbits));
  numl = ((numl << normbits) & RADIXM);

  // Estimate qh
  k = ((((numh >> NBITSH) ^ dh) - 1) >> NBITS) & 1;
  qh = numh/dh;
  qh = ((1 ^ k) * qh) + (RADIXROOTM * k);

  // Step 3.2 : (ptop, pbot) = den*qh
  b1d1 = qh * dl;
  m    = qh * dh;
  pbot = b1d1 + ((m & RADIXROOTM) << NBITSH);
  ptop = (pbot >> NBITS) + (m >> NBITSH);
  pbot &= RADIXM;

  rtop = numh >> NBITSH;
  rbot = ((numh & RADIXROOTM) << NBITSH) + (numl >> NBITSH);

  flag = rtop - ptop;
  flag1 = (rtop ^ ptop) - 1;
  flag1 &= rbot - pbot;
  flag = ((flag | flag1) >> NBITS) & 1;
  flagm = flag * RADIXM;

  qh-=flag;
  pbot += flagm & mden;
  ptop -= flagm & (1 - (pbot >> NBITS));
  pbot &= RADIXM;

  flag = rtop - ptop;
  flag1 = (rtop ^ ptop) - 1;
  flag1 &= rbot - pbot;
  flag = ((flag | flag1) >> NBITS) & 1;
  flagm = flag * RADIXM;

  qh-=flag;
  pbot += flagm & mden;
  ptop -= flagm & (1 - (pbot >> NBITS));
  pbot &= RADIXM;

  numl += RADIX - ((pbot << NBITSH) & RADIXM);
  numh -= ((ptop << NBITSH) + (pbot >> NBITSH)) + (1 - (numl >> NBITS));
  numl &= RADIXM;

  flag = (numh >> NBITS) & 1;
  flagm = flag * RADIXM;

  qh-=flag;
  numl += flagm & ((pbot << NBITSH) & RADIXM);
  numh += flagm & (((ptop << NBITSH) + (pbot >> NBITSH)) + (numl >> NBITS));
  numl &= RADIXM;

  // Estimate ql
  k = ((((numh >> NBITSH) ^ dh) - 1) >> NBITS) & 1;
  ql = (((numh  & RADIXROOTM) << NBITSH)+(numl >> NBITSH))/dh;
  ql = ((1 ^ k) * ql) + (RADIXROOTM * k);

  // Step 3.2 : (ptop, pbot) = den*ql
  b1d1 = ql * dl;
  m = ql * dh;
  pbot = b1d1 + ((m & RADIXROOTM) << NBITSH);
  ptop = (pbot >> NBITS) + (m >> NBITSH);
  pbot &= RADIXM;

  rtop = numh  & RADIXROOTM;
  rbot = numl;

  flag = rtop - ptop;
  flag1 = (rtop ^ ptop) - 1;
  flag1 &= rbot - pbot;
  flag = ((flag | flag1) >> NBITS) & 1;
  flagm = flag * RADIXM;

  ql-=flag;
  pbot += flagm & mden;
  ptop -= flagm & (1 - (pbot >> NBITS));
  pbot &= RADIXM;

  flag = rtop - ptop;
  flag1 = (rtop ^ ptop) - 1;
  flag1 &= rbot - pbot;
  flag = ((flag | flag1) >> NBITS) & 1;
  flagm = flag * RADIXM;

  ql-=flag;
  pbot += flagm & mden;
  ptop -= flagm & (1 - (pbot >> NBITS));
  pbot &= RADIXM;

  numl += RADIX - pbot;
  numh -= ptop + (1 - (numl >> NBITS));
  numl &= RADIXM;

  flag = (numh >> NBITS) & 1;
  flagm = flag * RADIXM;

  ql-= flag;
  numl += flagm & pbot;
  numh += flagm & (ptop + (numl >> NBITS));
  numl &= RADIXM;

  *qq = (qh << NBITSH) + ql;
  return (((numh << (NBITS-normbits)) & RADIXM) + (numl >> normbits));
}

/****************************************************/
/* FUNCTIONS CALLED FROM OUTSIDE                    */
/***************************************************/

/* Sets the integer to zero */
void zzero(verylong aa) {
  register long i;
  register long *pt;

  pt = aa;
  for (i=MAX_CAOINT_LEN; i; i--) {
    *pt=0;
    pt++;
  }
}

/* Copies one integer to another */
void zcopy(verylong aa, verylong bb) {
  register long i;
  register long *a, *b;

  a = aa;
  b = bb;

  for (i = MAX_CAOINT_LEN; i; i--) {
    *b = *a;
    a++;
    b++;
  }
}

/* Casts a (non negative) long to an integer */
/* Result is zero if long is negative */
void zintoz(long d, verylong aa ) {
  register long i;
  register long *a;

  a = aa;
  for (i = MAX_CAOINT_LEN; i; i--) {
    *a = d & RADIXM;
    d >>= NBITS;
    a++;
  }
}

/* Returns the integer value as an unsigned long */
/* Overflow is not controlled */
unsigned long ztouint(verylong aa) {
  register long d, i;
  register long *a;

  a = &(aa[MAX_CAOINT_LEN-1]);
  d=0;
  for (i = MAX_CAOINT_LEN; i; i--) {
    d <<= NBITS;
    d += *a;
    a--;
  }
  return (d);
}

/* Compares two integers.
   Returns 1 (aa > bb), -1 (aa-bb) or 0 (aa=bb) */
long zcompare(verylong aa, verylong bb) {
  register long *a;
  register long *b;
  register long i;
  register long res;
  unsigned long bit;

  a = &(aa[MAX_CAOINT_LEN-1]);
  b = &(bb[MAX_CAOINT_LEN-1]);

  res = 0;
  for (i = MAX_CAOINT_LEN; i; i--) {
    bit = *b - *a;
    bit >>= (sizeof(long) << 3) - 1;
    res += bit & (1 ^ (res & 1));
    bit = *a - *b;
    bit >>= (sizeof(long) << 3) - 1;
    res -= bit & (1 ^ (res & 1));
    a--;
    b--;
  }
  return (res);
}

/* Adds cc = aa + bb. */
/* Output can be input */
void zadd(verylong aa, verylong bb, verylong cc) {
  register long *a, *b, *pc;
  register long carry;
  register long i;

  a = aa;
  b = bb;

  carry = 0;
  pc = cc;
  for (i = MAX_CAOINT_LEN; i; i--) {
    *pc = *a + *b + carry;
    carry = *pc >> NBITS;
    *pc &= RADIXM;
    pc++;
    a++;
    b++;
  }
}

/* Multiplies bb = d * aa */
/* Assumes 0 <= d < RADIX */
/* Output can be input */
void zsmul(verylong aa, long d, verylong bb) {
  register long *a, *pb;
  register long i;
  register unsigned long aax, carry;
  register long ld, b1, d1;
  register long bd, lb, b1d1,m;

  a = aa;
  pb = bb;
  d1 = d & RADIXROOTM;
  ld = d >> NBITSH;
  carry = 0;
  for (i = MAX_CAOINT_LEN; i; i--) {
    // *pb = *a * d + c) % RADIX
    // c = *a * d + c) / RADIX
    b1 = *a & RADIXROOTM;
    lb = *a >> NBITSH;
    bd = lb * ld;
    b1d1 = b1 * d1;
    m= (lb+b1) * (ld+d1) - bd - b1d1;
    aax = b1d1 + ((m & RADIXROOTM) << NBITSH) + (carry & RADIXM);
    carry = (aax >> NBITS) + bd + (m >> NBITSH) + (carry >> NBITS);
    *pb = aax & RADIXM;
    pb++;
    a++;
  }
}

/* Calculates bb, result s.t. aa = bb*d + result */
/* Assumes 0 < d < RADIX */
/* Output can be input */
long zsdiv(verylong aa, long d, verylong bb) {
  register long *a, *b;
  register long den, flag, shift, k, normbits;
  long carry;
  register long i;

  a = aa;
  b = bb;
  den = d;
  carry = 0;
  if (!den) {
    return 0;
  }

  // Normalization
  normbits = 0;
  k = RADIX >> 1;
  flag = 0;
  for(shift = NBITS - 1; shift; shift--) {
    flag |= ((k & den) >> shift) & 1;
    normbits += (1 ^ flag);
    k >>=1;
  }

  for (i = MAX_CAOINT_LEN-1; i >= 0; i--) {
    carry = div21(carry,a[i],den,normbits,&(b[i]));
  }
  return carry;
}

/* Calculates rr = in_a mod in_b.
   Assumes RADIX^(MAX_CAO_INT_LEN - 1) <= in_b < RADIX^(MAX_CAO_INT_LEN)
           0 < in_a < RADIX^(sa) */
/* Output can be input */
void zmod(long *in_a, long sa, verylong in_b, verylong rr) {
  register long i,j, flag, k, normbits, shift;
  register long *_a, *_b, *p, *pc, *r;
  register long b1, d1, ld, lb, flag1, flagm;
  register long bt,btm, bd, b1d1, m;
  register long prod0, prod1, prod2;
  register unsigned long aa;
  long qq, carry;
  szdecl(c,(MAX_CAOINT_LEN << 1)+1);
  szdecl(b,MAX_CAOINT_LEN);

  r = rr;
  p = &(in_b[MAX_CAOINT_LEN - 1]);

  bt = *p;
  // Normalization
  normbits = 0;
  k = RADIX >> 1;
  flag = 0;
  for(shift = NBITS - 1; shift; shift--) {
    flag |= ((k & bt) >> shift) & 1;
    normbits += (1 ^ flag);
    k >>=1;
  }
  pc = &(b[MAX_CAOINT_LEN-1]);
  for (i = MAX_CAOINT_LEN-1; i; i--) {
    *pc = ((*p << normbits) & RADIXM) + (*(p-1) >> (NBITS-normbits));
    pc--;
    p--;
  }
  *pc =((*p << normbits) & RADIXM);
  p = &in_a[sa-1];
  pc = &c[sa];
  *pc = (*p >> (NBITS-normbits));
  pc--;
  for (i = sa-1; i; i--) {
    *pc = ((*p << normbits) & RADIXM) + (*(p-1) >> (NBITS-normbits));
    pc--;
    p--;
  }
  *pc = (*p << normbits) & RADIXM;

  // Setup
  pc = &(c[sa]);
  bt = b[MAX_CAOINT_LEN-1];
  btm = b[MAX_CAOINT_LEN-2];

  // Main loop
  for (i = sa - MAX_CAOINT_LEN; i >= 0; i--) {
    // Estimate qq = (c[i+sb],c[i+sb-1]) / b[sb]
    k = (((*pc ^ bt) - 1) >> NBITS) & 1;
    div21(*pc,*(pc-1),bt,0,&qq); // bt is already normalized
    qq = ((1 ^ k) * qq) + (RADIXM * k);

    // Step 3.2
    d1 = qq & RADIXROOTM;
    ld = qq >> NBITSH;

    b1 = btm & RADIXROOTM;
    lb = btm >> NBITSH;
    bd = lb * ld;
    b1d1 = b1 * d1;
    m= (lb+b1) * (ld+d1) - bd - b1d1;
    aa = b1d1 + ((m & RADIXROOTM) << NBITSH);
    carry = (aa >> NBITS) + bd + (m >> NBITSH);
    prod0 = aa & RADIXM;

    b1 = bt & RADIXROOTM;
    lb = bt >> NBITSH;
    bd = lb * ld;
    b1d1 = b1 * d1;
    m= (lb+b1) * (ld+d1) - bd - b1d1;
    aa = b1d1 + ((m & RADIXROOTM) << NBITSH) + carry;
    prod2 = (aa >> NBITS) + bd + (m >> NBITSH);
    prod1 = aa & RADIXM;

    flag = *pc - prod2;
    flag1 = (*pc ^ prod2) - 1;
    flag1 &= *(pc-1) - prod1;
    flag |= flag1;
    flag1 = (*pc ^ prod2) - 1;
    flag1 &= (*(pc-1) ^ prod1) - 1;
    flag1 &= *(pc-2) - prod0;
    flag = ((flag | flag1) >> NBITS) & 1;
    flagm = flag * RADIXM;

    qq -= flag;
    prod0 += flagm & (RADIX - btm);
    prod1 += (RADIX - (1 - (prod0 >> NBITS)));
    prod2 -= flagm & flagm & (1 - (prod1 >> NBITS));
    prod0 &= RADIXM;
    prod1 = flagm & ((prod1 & RADIXM) + (RADIX - bt));
    prod2 -= flagm & (1 - (prod1 >> NBITS));
    prod1 &= RADIXM;

    flag = *pc - prod2;
    flag1 = (*pc ^ prod2) - 1;
    flag1 &= *(pc-1) - prod1;
    flag |= flag1;
    flag1 = (*pc ^ prod2) - 1;
    flag1 &= (*(pc-1) ^ prod1) - 1;
    flag1 &= *(pc-2) - prod0;
    flag = ((flag | flag1) >> NBITS) & 1;

    qq -= flag;

    // Step 3.3
    _a = &(c[i]);
    _b = b;
    carry = 0;
    for (j = MAX_CAOINT_LEN; j > 0; j--) {
      b1 = *_b & RADIXROOTM;
      lb = *_b >> NBITSH;
      d1 = qq & RADIXROOTM;
      ld = qq >> NBITSH;
      bd = lb*ld;
      b1d1 = b1*d1;

      m = (ld+d1) * (lb+b1) - bd - b1d1;
      aa = (b1d1 + ((m & RADIXROOTM) << NBITSH));
      m = bd + (m>>NBITSH) + (aa >> NBITS);

      aa = (*_a) + (RADIX - (aa & RADIXM)) + (RADIX - (carry & RADIXM));
      carry = m + (2 - (aa >> NBITS)) + (carry >> NBITS);

      *_a = aa & RADIXM;
      _a++;
      _b++;
    }
    *_a -= carry;

    // Step 3.4
    flag = (*pc >> NBITS) & 1;
    flagm = flag * RADIXM;

    qq-=flag;
    _a = &(c[i]);
    _b = b;
    carry = 0;
    for (j = MAX_CAOINT_LEN; j > 0; j--) {
      aa = (*_a) + (flagm & ((*_b) + carry));
      carry = (aa >> NBITS);
      *_a = aa & RADIXM;
      _a++;
      _b++;
    }
    *_a += flagm & carry;
    pc--;
  }

  /* De-normalize */
  pc = c;
  p = r;
  for (i = MAX_CAOINT_LEN; i; i--) {
    *p = (*pc >> normbits) + ((*(pc+1) << (NBITS - normbits)) & RADIXM);
    pc++;
    p++;
  }
}

/* Calculates bb = a^e mod n.
   Assumes: RADIX^(MAX_CAO_INT_LEN - 1) <= n < RADIX^(MAX_CAO_INT_LEN)
          0 <= a < n
          e >= 0 */
/* Output cannot be input */
void zexpmod(verylong a, verylong e, verylong n, verylong bb) {
  register long i, j, flag, bit, k;
  register long *b, *_a, *_b, *_c;
  register long shift, flagm, flagm1, flagm2;
  szdecl(mem,MAX_CAOINT_LEN << 1);
  szdecl(mocka,MAX_CAOINT_LEN);
  szdecl(dum1,MAX_CAOINT_LEN);
  szdecl(dum2,MAX_CAOINT_LEN);

  zzero(bb);
  b = bb;
  *b = 1;
  flag = 0;
  for (i = MAX_CAOINT_LEN-1; i >= 0; i--) {
    j = e[i];
    bit = RADIX >> 1;
    for(shift = NBITS - 1; shift >= 0; shift--) {
      flag |= (bit & j) >> shift;
      flagm = flag * RADIXM;
      _a = a;
      _b = mocka;
      for (k = MAX_CAOINT_LEN; k; k--) {
        *_b = (*_a) & flagm;
        _a++;
        _b++;
      }
      sq(b, mem);
      zmod(mem, MAX_CAOINT_LEN << 1, n, dum1);
      mul(mocka, dum1, mem);
      zmod(mem, MAX_CAOINT_LEN << 1, n, dum2);
      flagm2 = ((bit & j) >> shift) * RADIXM;
      flagm1 = flagm2 ^ RADIXM;
      _a = dum1;
      _b = dum2;
      _c = b;
      for (k = MAX_CAOINT_LEN; k; k--) {
        *_c = ((*_a) & flagm1) ^ ((*_b) & flagm2) ;
        _a++;
        _b++;
        _c++;
      }
      bit >>= 1;
    }
  }
}

/* Calculates bb = a^e mod n.
 Assumes: RADIX^(MAX_CAO_INT_LEN - 1) <= n < RADIX^(MAX_CAO_INT_LEN)
 0 <= a < n
 e >= 0 */
/* Output cannot be input */
void zexpmod_notsosecure(verylong a, verylong e, verylong n, verylong bb) {
  register long i, j, k;
  register long *b;
  szdecl(mem,MAX_CAOINT_LEN << 1);
  szdecl(dum1,MAX_CAOINT_LEN);
  szdecl(dum2,MAX_CAOINT_LEN);

  b = bb;
  zzero(b);
  *b = 1;

  k = 0;
  i = MAX_CAOINT_LEN-1;
  while (!e[i])
    i--;
  for (; i >= 0; i--) {
    j = e[i];
    if (!k) {
      k = 1;
      while ((k << 1) <= j)
        k <<= 1;
    }
    while (k) {
      sq(b,mem);
      zmod(mem, MAX_CAOINT_LEN <<1, n, dum1);
      mul(a,dum1,mem);
      zmod(mem, MAX_CAOINT_LEN <<1, n, dum2);
      if (j & k) {
        zcopy(dum2,b);
      } else {
        zcopy(dum1,b);
      }
      k >>= 1;
    }
    k = RADIX >> 1;
  }
}

void zexpmod_insecure(verylong a,verylong e,verylong n,verylong bb) {
  register long i;
  register long j;
  register long k;
  register long* b = bb;
  szdecl(mem,MAX_CAOINT_LEN << 1);

  zzero(b);
  *b = 1;

  k = 0;
  i = MAX_CAOINT_LEN-1;
  while (!e[i])
    i--;
  for (; i>=0; i--) {
    j = e[i];
    if (!k) {
      k = 1;
      while ((k << 1) <= j)
        k <<= 1;
    }
    while (k) {
      sq(b,mem);
      zmod(mem, MAX_CAOINT_LEN <<1, n, b);
      if (j & k) {
        mul(a,b,mem);
        zmod(mem, MAX_CAOINT_LEN <<1, n, b);
      }
      k >>= 1;
    }
    k = RADIX >> 1;
  }
}
