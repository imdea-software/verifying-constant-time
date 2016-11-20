export WD          ?= ${PWD}
LIBDIR              = libfixedtimefixedpoint
export CPATH       ?= $(WD)/$(LIBDIR)
export LIBS        ?= $(patsubst %,$(LIBDIR)/%,autogen.c cordic.c debug.c internal.c power.c)
export EXAMPLE     ?= $(LIBDIR)/ftfp.c

export VERIFIER    ?= boogie

TARGETS            ?=\
fix_is_neg fix_is_nan fix_is_inf_pos fix_is_inf_neg\
fix_eq fix_eq_nan fix_ne fix_cmp fix_le fix_ge fix_lt fix_gt\
fix_neg fix_abs fix_add fix_sub fix_mul fix_div fix_floor fix_ceil\
fix_ln fix_log2 fix_log10\
fix_convert_from_int64 fix_convert_to_int64 fix_round_up_int64 fix_ceil64 fix_floor64\
fix_sin fix_cos fix_tan\
fix_exp fix_sqrt fix_pow

TROUBLE            ?=\
fix_pow

TASK               ?= verify

doall  =\
SUCCESS=;FAILURE=;\
for i in $(TARGETS); do\
  echo "Verifying target $$i";\
  $(MAKE) -C ../../bin $(1)\
   ENTRYPOINTS=$$i SUFFIX=_$$i\
   CPATH=$(CPATH) LIBS='$(LIBS)' EXAMPLE=$(EXAMPLE)
done

finish  =\
for i in $(1); do\
  ../../tools/boogie/Binaries/Boogie.exe /doModSetAnalysis $$i;\
done

all: $(LIBS) $(EXAMPLE) libfixedtimefixedpoint/base.h
	@$(call doall,$(TASK));\
         echo "Success ($(TASK)): $$SUCCESS";\
         echo "Failure ($(TASK)): $$FAILURE"

libfixedtimefixedpoint/base.h:
	cd libfixedtimefixedpoint && python generate_base.py --file base.h --pyfile base.py --lutfile lut.h --intbits 32

trouble: $(LIBS) $(EXAMPLE)
	@TARGETS=$(TROUBLE) TASK=bamout $(MAKE) all

finish_trouble:
	@$(call finish,$(patsubst %,ftfp_%-instrumented.bpl,$(TROUBLE)))
