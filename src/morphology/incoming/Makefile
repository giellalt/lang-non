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
	@perl tagconv.pl < adjectives.lexc  > ../stems/adjectives.lexc
	@perl tagconv.pl < nouns.lexc       > ../stems/nouns.lexc
	@perl tagconv.pl < propernouns.lexc > ../stems/propernouns.lexc
	@perl tagconv.pl < verbs.lexc       > ../stems/verbs.lexc
	@perl tagconv.pl < root.lexc        > ../root.lexc
