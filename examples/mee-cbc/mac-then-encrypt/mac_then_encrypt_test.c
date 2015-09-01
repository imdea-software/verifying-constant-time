#include <stdio.h>
#include <stdlib.h>
#include <time.h>

unsigned char kenc_test[16] = {
  0x2b, 0x7e, 0x15, 0x16,
  0x28, 0xae, 0xd2, 0xa6,
  0xab, 0xf7, 0x15, 0x88,
  0x09, 0xcf, 0x4f, 0x3c};

unsigned char kmac_test[32] = {
  0xcc, 0x2b, 0x7e, 0x15, 
  0x16, 0x28, 0xae, 0xd2, 
  0xa6, 0xab, 0xf7, 0x15, 
  0x88, 0x09, 0xcf, 0x4f,
  0xcc, 0x2b, 0x7e, 0x15, 
  0x16, 0x28, 0xae, 0xd2, 
  0xa6, 0xab, 0xf7, 0x15, 
  0x88, 0x09, 0xcf, 0x4f};

unsigned char n_test[16] = {
  0x00, 0x01, 0x02, 0x03,
  0x04, 0x05, 0x06, 0x07,
  0x08, 0x09, 0x0a, 0x0b,
  0x0c, 0x0d, 0x0e, 0x0f};

unsigned long plain_test_len = 30;
unsigned char plain_test[128]  = {
  0x6b, 0xc1, 0xbe, 0xe2,
  0x2e, 0x40, 0x9f, 0x96,
  0xe9, 0x3d, 0x7e, 0x11,
  0x73, 0x93, 0x17, 0x2a,
  0xae, 0x2d, 0x8a, 0x57,
  0x1e, 0x03, 0xac, 0x9c,
  0x9e, 0xb7, 0x6f, 0xac,
  0x45, 0xaf              };

unsigned long cipher_test_len = 64;
unsigned char cipher_test[64] = { 
  0x76, 0x49, 0xab, 0xac, 
  0x81, 0x19, 0xb2, 0x46, 
  0xce, 0xe9, 0x8e, 0x9b, 
  0x12, 0xe9, 0x19, 0x7d,
  0x8e, 0x33, 0xc1, 0xb7, 
  0x90, 0xc3, 0xcc, 0x90, 
  0x9b, 0x26, 0xf8, 0x20, 
  0x89, 0x20, 0x18, 0xd1,
  0x23, 0x52, 0x90, 0xf3, 
  0x56, 0xb9, 0xc1, 0xee, 
  0x39, 0x5a, 0xde, 0x88, 
  0xfc, 0xdc, 0x26, 0x93,
  0x49, 0x8f, 0x8d, 0x7b, 
  0x07, 0x26, 0x26, 0xc6, 
  0x50, 0x06, 0x2c, 0x32, 
  0xc1, 0x75, 0x26, 0x28 };

unsigned char cipher[64];

unsigned char plain[64];
unsigned long plain_len;

extern int mac_then_encrypt(unsigned char *out,unsigned char *in,unsigned long in_len,
			    const unsigned char *iv,const unsigned char *enc_sk,const unsigned char *mac_sk);

extern int decrypt_then_verify(unsigned char *out,unsigned long *out_len, const unsigned char *in,unsigned long in_len,
			       const unsigned char *iv,const unsigned char *enc_sk,const unsigned char *mac_sk);

int main (void) {
  int i,decc,ok;
  unsigned long len;

  ok = 1;
  
  len = mac_then_encrypt(cipher,plain_test,plain_test_len,n_test,kenc_test,kmac_test);
  ok &= len == cipher_test_len;

#ifndef TYPECHECK
  if (plain_test_len == 30) {
    printf("Ciphertext length: ");
    if (ok)
      printf("OK\n");
    else
      printf("Not OK\n");
  }
#endif

  ok = 1;
  for(i = 0; i < 64; i++)
    ok &= cipher[i] == cipher_test[i];

#ifndef TYPECHECK
  if (plain_test_len == 30) {
    printf("Ciphertext: ");
    if (ok)
      printf("OK\n");
    else
      printf("Not OK\n");
  }
#endif

  decc = decrypt_then_verify(plain,&plain_len,cipher,len,n_test,kenc_test,kmac_test);
  ok = plain_len == plain_test_len;

#ifndef TYPECHECK
  printf("Plaintext length: ");
  if (ok)
    printf("OK\n");
  else
    printf("Not OK\n");
#endif

  ok = 1;
  for(i = 0; i < plain_test_len; i++)
    ok &= plain[i] == plain_test[i];

#ifndef TYPECHECK
  printf("Plaintext: ");
  if (ok)
    printf("OK\n");
  else
    printf("Not OK\n");
#endif

  ok = decc;

#ifndef TYPECHECK
  printf("Decryption Return Code: ");
  if (ok)
    printf("OK\n");
  else
    printf("Not OK\n");
#endif

  // Additional test: attempt to decrypt a completely random
  // ciphertext. This should fail (with high probability) and probably
  // zero out all buffers and output variables. Currently, it only
  // fails.
#ifndef TYPECHECK
  srand(time(NULL));
  for (i = 0;i < 64;i++) {
    cipher[i] = rand() & 0xff;
  }
  decc = decrypt_then_verify(plain,&plain_len,cipher,64,n_test,kenc_test,kmac_test);

  printf("Plaintext length: ");
  if (plain_len == 0)
    printf("OK\n");
  else
    printf("Not OK: plain_len = %lu\n",plain_len);

  printf("Decryption Return Code: ");
  if (!decc)
    printf("OK\n");
  else
    printf("Not OK\n");
#endif // TYPECHECK

  return !ok;
}
