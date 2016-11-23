include ../../lib/ct-verif.mk

GOALS :=
GOALS += ssl3_cbc_remove_padding_wrapper@ssl3_cbc_remove_padding_wrapper.c
GOALS += ssl3_cbc_remove_padding_wrapper@ssl3_cbc_remove_padding_wrapper_error.c
GOALS += tls1_cbc_remove_padding_wrapper@tls1_cbc_remove_padding_wrapper.c
GOALS += ssl3_cbc_copy_mac_wrapper@ssl3_cbc_copy_mac_wrapper.c
GOALS += ssl3_cbc_digest_record_wrapper@ssl3_cbc_digest_record_wrapper.c

all: $(GOALS:%=%.$(v))
