export WD          ?= ${PWD}
LIBDIR              = libfixedtimefixedpoint
export CPATH       ?= $(WD)/$(LIBDIR)
export LIBS        ?= $(patsubst %,$(LIBDIR)/%,autogen.c cordic.c debug.c internal.c power.c)
export EXAMPLE     ?= $(LIBDIR)/ftfp.c
export UNROLL      ?= 64
export LOOPLIMIT   ?= 64

TARGETS?=\
fix_is_neg fix_is_nan fix_is_inf_pos fix_is_inf_neg\
fix_eq fix_eq_nan fix_ne fix_cmp fix_le fix_ge fix_lt fix_gt\
fix_neg fix_abs fix_add fix_sub fix_mul fix_div fix_floor fix_ceil\
fix_exp fix_ln fix_log2 fix_log10 fix_sqrt fix_pow\
fix_convert_from_double fix_convert_to_double fix_convert_from_int64\
fix_convert_to_int64 fix_round_up_int64 fix_ceil64 fix_floor64\
# fix_sprint fix_sprint_nospecial fix_print fix_println\ # useful?
#fix_sin fix_cos fix_tan\ # timing out -- cordic may need to be modularized

doall  =\
SUCCESS=;FAILURE=;\
for i in $(TARGETS); do\
  /bin/echo -en "\e[34mVerifying target $$i\e[0m\n";\
  make -C ../../bin $(1)\
   ENTRYPOINTS=$$i SUFFIX=_$$i\
   CPATH=$(CPATH) LIBS='$(LIBS)' EXAMPLE=$(EXAMPLE)\
   UNROLL=$(UNROLL) LOOPLIMIT=$(LOOPLIMIT);\
  /bin/echo -en "\e[34mTarget $$i: \e[0m";\
  if test `echo $$?`;\
  then /bin/echo -en "\e[32mSuccess\e[0m\n"; SUCCESS=$$SUCCESS:$$i;\
  else /bin/echo -en "\e[31mFailure\e[0m\n"; FAILURE+=$$FAILURE:$$i;\
  fi;\
done

all: $(LIBS) $(EXAMPLE)
	@$(call doall,verify);\
         /bin/echo -en "\e[32mSuccess: $$SUCCESS\n";\
         /bin/echo -en "\e[31mFailure: $$FAILURE\n"
