int encrypt(unsigned char *out,unsigned char *in,unsigned long in_len,const unsigned char *iv,const unsigned char *sk);
int decrypt(unsigned char *out,unsigned long *out_len, const unsigned char *in,unsigned long in_len,const unsigned char *iv,const unsigned char *sk);
