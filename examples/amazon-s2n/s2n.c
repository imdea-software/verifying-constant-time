#include "../smack.h"

#include "tls/s2n_record.h"

int s2n_verify_cbc_wrapper(struct s2n_connection *conn, struct s2n_hmac_state *hmac, struct s2n_blob *decrypted) {
  /* Argument addresses are public (in case they are checked against NULL */
  public_in(region_of_var(conn));
  public_in(region_of_var(hmac));
  public_in(region_of_var(decrypted));

  /* A lot more of these are probably needed */
  public_in(mem_region(decrypted->data,decrypted->allocated));

  /* These are the only two we care about with this function as entry
     point, but more will be needed if we want to us e this result
     modularly to prove things about TLS as a whole */
  declassified_return();
  declassified_out(mem_region(decrypted->data,decrypted->size));

  return s2n_verify_cbc_wrapper(conn,hmac,decrypted);
}
