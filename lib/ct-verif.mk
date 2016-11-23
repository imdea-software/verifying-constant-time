
# HACK to get the directory of this file
mydir = $(dir $(realpath $(word 2, $(MAKEFILE_LIST))))

entrypoint = $(word 1, $(subst @, ,$1))
sourcefile = $(word 2, $(subst @, ,$1))

ctverif := $(mydir)../bin/ct-verif.rb
unroll	?=
time		?= 5
cflags  ?=
extras  ?=

flags = $(strip \
	$(if $(strip $(unroll)),--unroll-limit $(unroll)) \
	$(if $(strip $(time)),--time-limit $(time)) \
	$(if $(strip $(cflags)),--clang-options="$(cflags)") \
)

c = compiled.bpl
p = product.bpl
v = verified

.PRECIOUS: %.$(c) %.$(p)

%.$(c):
	@echo
	@echo Compile | figlet
	@echo $(@:.$(c)=)
	@echo
	@mkdir -p $(dir $@)
	@$(ctverif) $(flags) -a $@ --no-product --no-verify -e $(call entrypoint,$(@:.$(c)=)) $(call sourcefile,$(@:.$(c)=)) $(extras)

%.$(p): %.$(c)
	@echo
	@echo Product | figlet
	@echo $(@:.$(p)=)
	@echo
	@$(ctverif) $(flags) -b $@ --no-compile --no-verify $<

%.$(v): %.$(p)
	@echo
	@echo Verify | figlet
	@echo $(@:.$(v)=)
	@echo
	@$(ctverif) $(flags) --no-compile --no-product $<
