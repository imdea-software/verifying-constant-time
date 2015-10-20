#include <smack.h>

#include "../ct-verif.h"

#include "ssl3_cbc_remove_padding.c"

int ssl3_cbc_remove_padding_wrapper(const SSL *s, 
									SSL3_RECORD *rec, 
                                    unsigned int block_size,
                                    unsigned int mac_size){

  // pointer _values_ are public, maybe not the contents
  public_in_value(__SMACK_value(s));
  public_in_value(__SMACK_value(rec));

  // the entire rec structure is public, although the
  // data pointed to by the data field might not be
  public_in_object(__SMACK_object(rec,sizeof(SSL3_RECORD))); // this does not work
  public_in_value(__SMACK_value(block_size));
  public_in_value(__SMACK_value(mac_size));

  return ssl3_cbc_remove_padding(s,rec,block_size,mac_size);
}

