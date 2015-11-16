export WD          ?= ${PWD}
LIBDIR              = libfixedtimefixedpoint
export CPATH       ?= $(WD)/$(LIBDIR)
export LIBS        ?= $(patsubst %,$(LIBDIR)/%,autogen.c cordic.c debug.c internal.c power.c)
export EXAMPLE     ?= $(LIBDIR)/ftfp.c
export UNROLL      ?= 65
export LOOPLIMIT   ?= 65

export VERIFIER    ?= boogie

TARGETS            ?=\
fix_is_neg fix_is_nan fix_is_inf_pos fix_is_inf_neg\
fix_eq fix_eq_nan fix_ne fix_cmp fix_le fix_ge fix_lt fix_gt\
fix_neg fix_abs fix_add fix_sub fix_mul fix_div fix_floor fix_ceil\
fix_ln fix_log2 fix_log10\
fix_convert_from_int64 fix_convert_to_int64 fix_round_up_int64 fix_ceil64 fix_floor64\
fix_sin fix_cos fix_tan
#fix_exp fix_sqrt fix_pow\ # timing out
#fix_convert_from_double fix_convert_to_double\ #floats?
#fix_sprint fix_sprint_nospecial fix_print fix_println\ # useful?

TROUBLE            ?=\
fix_exp fix_sqrt fix_pow

TASK               ?= verify

doall  =\
SUCCESS=;FAILURE=;\
for i in $(TARGETS); do\
  /bin/echo -en "\e[34mVerifying target $$i\e[0m\n";\
  $(MAKE) -C ../../bin $(1)\
   ENTRYPOINTS=$$i SUFFIX=_$$i\
   CPATH=$(CPATH) LIBS='$(LIBS)' EXAMPLE=$(EXAMPLE)\
   UNROLL=$(UNROLL) LOOPLIMIT=$(LOOPLIMIT);\
  RC=$$?;\
  /bin/echo -en "\e[34mTarget $$i $(TASK): \e[0m";\
  if [ $$RC -eq 0 ];\
  then /bin/echo -en "\e[32mSuccess\e[0m\n"; SUCCESS=$$SUCCESS:$$i;\
  else /bin/echo -en "\e[31mFailure\e[0m\n"; FAILURE=$$FAILURE:$$i;\
  fi;\
done

finish  =\
for i in $(1); do\
  ../../tools/boogie/Binaries/Boogie.exe /doModSetAnalysis $$i;\
done

all: $(LIBS) $(EXAMPLE)
	@$(call doall,$(TASK));\
         /bin/echo -en "\e[32mSuccess ($(TASK)): $$SUCCESS\n";\
         /bin/echo -en "\e[31mFailure ($(TASK)): $$FAILURE\n"

trouble: $(LIBS) $(EXAMPLE)
	@TARGETS=$(TROUBLE) TASK=bamout $(MAKE) all

finish_trouble:
	@$(call finish,$(patsubst %,ftfp_%-instrumented.bpl,$(TROUBLE)))
