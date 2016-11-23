include ../../lib/ct-verif.mk

ENTRYPOINTS = encrypt_wrapper decrypt_cpa_wrapper decrypt_cca_wrapper
GOALS = $(ENTRYPOINTS:%=%@tea.c)
all: $(GOALS:%=%.$(v))
