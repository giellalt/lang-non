
# Old Norse morphological analyser
INTRODUCTION TO MORPHOLOGICAL ANALYSER OF Old Norse LANGUAGE.


# Definitions for Multichar_Symbols

## POS
* `+A` = Adjective
* `+Adv` = Adverb
* `+Art` = Article
* `+CC` = Conjunct
* `+CS` = Subjunct
* `+N` = Noun
* `+Pr` = Preposition
* `+Pron` = Pronoun
* `+Prop` = Proper noun
* `+V` = Verb

Punctuation:
* `+CLB` = Clause boundary mark
* `+PUNCT` = Other punctuation
* `+LEFT` = Left part of paired punctuation
* `+RIGHT` = Right part of paired punctuation

Sub-POS and miscellaneous:
* `+Dem` = Demonstrative
* `+Det` = Determinative(?)
* `+Refl` = Reflexikve
* `+Rel` = Relative
* `+Interr` = Interrogative
* `+Symbol` = independent symbols in the text stream, like `£`, `€`, `©`

Numerus:
* `+1Sg ` = 1. person singular
* `+2Sg ` = 2. person singular
* `+3Sg ` = 3. person singular
* `+1Du ` = 1. person dual
* `+2Du ` = 2. person dual
* `+1Pl ` = 1. person plural
* `+2Pl ` = 2. person plural
* `+3Pl ` = 3. person plural
* `+1   ` = ?
* `+2   ` = ?
* `+3   ` = ?
* `+Sg  ` = Singular
* `+Pl  ` = Plural

Case:

Gender:

Nominal inflection:

Verbal inflection:

Tags for later inclusion

Other:

# Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics.

## Compounds with deverbal nouns

The basic idea is to only allow compounds
with verbs if the verb is further derived into a noun again:

| Tag | Explanation
| --- | ---
| `@P.NeedNoun.ON@` | (Dis)allow compounds with verbs unless nominalised
| `@D.NeedNoun.ON@` | (Dis)allow compounds with verbs unless nominalised
| `@C.NeedNoun@` | (Dis)allow compounds with verbs unless nominalised

## Controlling General Compounding

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Tag | Explanation
| --- | ---
| `@P.CmpFrst.FALSE@` | Require that words tagged as such only appear first
| `@D.CmpPref.TRUE@` | Block such words from entering ENDLEX
| `@P.CmpPref.FALSE@` | Block these words from making further compounds
| `@D.CmpLast.TRUE@` | Block such words from entering R
| `@D.CmpNone.TRUE@` | Combines with the next tag to prohibit compounding
| `@U.CmpNone.FALSE@` | Combines with the prev tag to prohibit compounding
| `@P.CmpOnly.TRUE@` | Sets a flag to indicate that the word has passed R
| `@D.CmpOnly.FALSE@` | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

| Tag | Explanation
| --- | ---
| `@U.Cap.Obl@` | Allowing downcasing of derived names: deatnulasj.
| `@U.Cap.Opt@` | Allowing downcasing of derived names: deatnulasj.











* * *
<small>This (part of) documentation was generated from [../src/fst/root.lexc](http://github.com/giellalt/lang-non/blob/main/../src/fst/root.lexc)</small>