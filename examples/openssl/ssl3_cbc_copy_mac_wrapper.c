#include <smack.h>

#include "../ct-verif.h"

#include "ssl3_cbc_copy_mac.c"

void ssl3_cbc_copy_mac_wrapper(unsigned char *out,
                               unsigned char *data,
                               unsigned int length,
                               unsigned md_size, unsigned orig_len){

  // pointer _values_ are public, maybe not the contents
  public_in_value(__SMACK_value(out));
  public_in_value(__SMACK_value(data));

  // these lengths are all public
  public_in_value(__SMACK_value(length));
  public_in_value(__SMACK_value(md_size));
  public_in_value(__SMACK_value(orig_len));

  // only the length and data fields are used in the function
  SSL3_RECORD rec_obj = { length, data, 0, NULL };

  return ssl3_cbc_copy_mac(out,&rec_obj,md_size,orig_len);
}

