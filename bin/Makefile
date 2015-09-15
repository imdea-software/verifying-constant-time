Z3PATH     ?= ../tools/z3
BOOGIEPATH ?= ../tools/boogie
SMACKPATH  ?= ../tools/smack
BAMPATH    ?= ../tools/bam-bam-boogieman

LOCALCPATH ?= $(SMACKPATH)/share/smack/include

EXAMPLE    ?= ../examples/sort/sort.c

verify:
	PATH=$(PATH):$(SMACKPATH)/bin:$(SMACKPATH)/build\
           BOOGIE=$(BOOGIEPATH)/Binaries/Boogie.exe\
           CPATH=$(CPATH):$(LOCALCPATH)\
           ./verify.rb $(EXAMPLE)

local-update:
	git submodule update

local-z3:
	cd $(Z3PATH)/build && make

clean-local-z3:
	rm -rf $(Z3PATH)/build

local-boogie:
	cd $(BOOGIEPATH) && xbuild Source/Boogie.sln
	ln -s $(Z3PATH)/build/z3 $(BOOGIEPATH)/Binaries/z3.exe

clean-local-boogie:
	rm $(BOOGIEPATH)/Binaries/z3.exe

local-smack:
	mkdir $(SMACKPATH)/build
	cd $(SMACKPATH)/build && cmake -DCMAKE_BUILD_TYPE=Debug ..
	make -C $(SMACKPATH)/build

clean-local-smack:
	rm -rf $(SMACKPATH)/build

local-bam:
	cd $(BAMPATH) && gem build bam-bam-boogieman.gemspec
	sudo gem install $(BAMPATH)/bam-bam-boogieman-1.0.pre.*

clean-local-bam:
	sudo gem uninstall bam-bam-boogieman
	rm $(BAMPATH)/bam-bam-boogieman-1.0.pre.*

local-tools: local-z3 local-boogie local-smack local-bam

clean-local-tools: clean-local-bam clean-local-smack clean-local-boogie clean-local-z3

remake-bam:
	make clean-local-bam
	make local-bam
