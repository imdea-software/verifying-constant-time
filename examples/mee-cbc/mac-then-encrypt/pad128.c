#include <string.h>

#include "ct_utils.h"
#include "crypto_block.h"
#include "crypto_pad.h"

int crypto_pad_add(unsigned char *inout,unsigned long len)
{
  int i;
  i = OUTPUTBYTES - ((int)len % OUTPUTBYTES);
  memset(&inout[len], i, i);
  len += i;
  return len;
}

int crypto_pad_remove(unsigned long *out_len,const unsigned char *in,unsigned long l)
{
  unsigned padding_length, good, i;

  if (l < OUTPUTBYTES) return 0;
  padding_length = in[l - 1];
  good = constant_time_ge(OUTPUTBYTES, padding_length);
  good &= constant_time_ge(padding_length,0);
  for (i = 0; i < OUTPUTBYTES; i++) {
    unsigned char mask = constant_time_ge_8(padding_length-1, i);
    unsigned char b = in[l - 1 - i];
    good &= ~(mask & (padding_length ^ b));
  }
  good = constant_time_eq(0xff, good & 0xff);
  padding_length = good & padding_length;
  *out_len = l - padding_length;
  return constant_time_select_int(good, 1, 0);
}
