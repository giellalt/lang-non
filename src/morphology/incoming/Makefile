# This is a makefile that converts the tagset of the Old Norse
# original files to the GTDivvun tagset. The converted files are
# used as the basis for the morphological parsers.
# ******************************************************************

all: convert_tagsets

convert_tagsets: \
				adjectives.lexc  \
				nouns.lexc       \
				propernouns.lexc \
				verbs.lexc       \
				root.lexc
	@echo
	@echo "*** Converting Old Norse tagset ***" ;
	@echo
	@perl tagconv.pl < adjectives.lexc  > ../stems/
	@perl tagconv.pl < nouns.lexc       > ../stems/
	@perl tagconv.pl < propernouns.lexc > ../stems/
	@perl tagconv.pl < verbs.lexc       > ../stems/
	@perl tagconv.pl < root.lexc        > ../
