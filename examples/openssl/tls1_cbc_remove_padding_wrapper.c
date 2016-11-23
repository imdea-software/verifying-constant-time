#include <smack.h>

#include "ct-verif.h"

#include "tls1_cbc_remove_padding.c"

int tls1_cbc_remove_padding_wrapper(unsigned long options,
                                    long s3_flags,
                                    unsigned char *s3_read_sequence,
                                    unsigned long flags,
                                    int slicing_cheat,
                                    unsigned char *data,
									                  unsigned int length,
                                    unsigned int block_size,
                                    unsigned int mac_size){

  // pointer _values_ are public, maybe not the contents
  public_in(__SMACK_value(s3_read_sequence));
  public_in(__SMACK_value(data));

  // these lengths are all public
  public_in(__SMACK_value(options));
  public_in(__SMACK_value(s3_flags));
  public_in(__SMACK_value(flags));
  public_in(__SMACK_value(slicing_cheat)); // stay away from struct hell
  public_in(__SMACK_value(length));
  public_in(__SMACK_value(block_size));
  public_in(__SMACK_value(mac_size));

  SSL3_STATE s3_obj = { s3_flags };
  //for (int i = 0; i<8;i++) s3_obj.read_sequence[i]=s3_read_sequence[i];
  EVP_CIPHER cipher = { flags };
  EVP_CIPHER_CTX cipher_ctx = { &cipher };
  char dummy_expand;
  // setting the expand field to non-zero deactivates non-constant-time if
  SSL s_obj = { &dummy_expand, options, &s3_obj, &cipher_ctx, slicing_cheat};
  const SSL *s = &s_obj;

  // only the length and data fields are used in the function
  SSL3_RECORD rec_obj = { length, data, 0, NULL };
  SSL3_RECORD *rec = &rec_obj;

  return tls1_cbc_remove_padding(s,rec,block_size,mac_size);
}

// TO VERIFY LOOP ADD IN LINE 1196  assert ($i88 == $i88.shadow);
