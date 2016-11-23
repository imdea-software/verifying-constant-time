ifeq ($(shell uname -s),Darwin)
	cflags = -I$(shell brew --prefix openssl)/include
endif

extras = rlwekex/rlwe_rand.c rlwekex/rlwe.c

include ../../lib/Makefile.lib

GOALS = sample_ct_wrapper@sample_ct.c
all: $(GOALS:%=%.$(v))
