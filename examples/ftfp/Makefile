include ../../lib/ct-verif.mk

L = libfixedtimefixedpoint
extras = $(patsubst %,$(L)/%,autogen.c cordic.c debug.c internal.c power.c)

ENTRIES :=
ENTRIES += fix_is_neg fix_is_nan fix_is_inf_pos fix_is_inf_neg
ENTRIES += fix_eq fix_eq_nan fix_ne fix_cmp fix_le fix_ge fix_lt fix_gt
ENTRIES += fix_neg fix_abs fix_add fix_sub fix_mul fix_div fix_floor fix_ceil
ENTRIES += fix_ln fix_log2 fix_log10
ENTRIES += fix_convert_from_int64 fix_convert_to_int64 fix_round_up_int64 fix_ceil64 fix_floor64
ENTRIES += fix_sin fix_cos fix_tan
ENTRIES += fix_exp fix_sqrt fix_pow

goals += $(ENTRIES:%=%@$(L)/ftfp.c)
prereqs += $(L)/base.h

# unroll := 1

## TODO previous Makefile classified `fix_pow` as trouble, and called Boogie
## TODO without unrolling ...
# fix_pow%: unroll :=

$(L)/base.h:
	cd $(L) && python generate_base.py --file base.h --pyfile base.py --lutfile lut.h --intbits 32
