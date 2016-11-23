extras = donna/curve25519-donna.c
unroll = 45
looplimit = 64

include ../../lib/ct-verif.mk

GOALS = curve25519_donna_wrapper@donna.c
all: $(GOALS:%=%.$(v))
