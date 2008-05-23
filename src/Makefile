


XFST = xfst -utf8
LEXC = lexc -utf8
TWOLC = twolc -utf8

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
TWOLC = /opt/sami/xerox/bin/twolc -utf8
endif


inon.fst: ../bin/inon.fst
../bin/inon.fst: ../bin/non.fst ../bin/non-lex.save
	@echo
	@echo "*** Building the inverse inon.fst ***"
	@echo
	@printf "load ../bin/non-lex.save \n\
	invert net \n\
	save stack ../bin/inon.fst \n\
	quit \n" > /tmp/inon-fst-script
	$(XFST) < /tmp/inon-fst-script
	@rm -f /tmp/inon-fst-script


non.fst: ../bin/non.fst
../bin/non.fst: ../bin/non-lex.save ../bin/caseconv.fst ../bin/allcaps.fst \
	../bin/spellrelax.fst
	@echo
	@echo "*** Building non.fst ***" ;
	@echo
	@printf "read regex @\"../bin/non-lex.save\" .o. \
	@\"../bin/caseconv.fst\" .o. @\"../bin/spellrelax.fst\" ; \n\
	save stack ../bin/non.fst \n\
	quit \n" > /tmp/non-fst-script
	$(XFST) < /tmp/non-fst-script
	@rm -f /tmp/non-fst-script



# This goal is to allow for i instead of ï, and for ä/æ and ö/ø mix

spellrelax.fst: ../bin/spellrelax.fst
../bin/spellrelax.fst: spellrelax.regex
	@echo
	@echo "*** Building spellrelax.fst ***" ;
	@echo
	@printf "read regex < spellrelax.regex \n\
	save stack ../bin/spellrelax.fst \n\
	quit \n" > ../../tmp/spellrelax-sma-script
	$(XFST) < ../../tmp/spellrelax-sma-script
	@rm -f ../../tmp/spellrelax-sma-script


caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > /tmp/caseconv-script
	$(XFST) < /tmp/caseconv-script
	@rm -f /tmp/caseconv-script


# This goal depends on allcaps.regex

allcaps.fst: ../bin/allcaps.fst
../bin/allcaps.fst: allcaps.regex
	@echo
	@echo "*** Building allcaps.fst ***" ;
	@echo
	@printf "source allcaps.regex \n\
	save stack ../bin/allcaps.fst \n\
	quit \n" > /tmp/tok-script
	$(XFST) < /tmp/tok-script
	@rm -f /tmp/tok-script



non-lex.save: ../bin/non-lex.save
../bin/non-lex.save: ../bin/non.lexc
	@echo
	@echo "*** Building non-lex.save ***" ;
	@echo
	printf "read lexc < ../bin/non.lexc \n\
	save ../bin/non-lex.save \n\
	quit \n" > ../tmp/non-lex-script
	$(XFST) < ../tmp/non-lex-script
	@rm -f 	../tmp/non-lex-script

non.lexc: ../bin/non.lexc
../bin/non.lexc: non-lex.txt adj-non-lex.txt noun-non-lex.txt \
	verb-non-lex.txt propernoun-non-lex.txt
	@echo
	@echo "*** Building non.lexc ***" ;
	@echo
	@perl tagconv.pl < non-lex.txt > ../bin/non.lexc
	@perl tagconv.pl < adj-non-lex.txt >> ../bin/non.lexc
	@perl tagconv.pl < noun-non-lex.txt >> ../bin/non.lexc
	@perl tagconv.pl < verb-non-lex.txt >> ../bin/non.lexc
	@perl tagconv.pl < propernoun-non-lex.txt >> ../bin/non.lexc

make clean:
	@rm -rf ../bin/*fst ../bin/*lexc ../bin/*save

