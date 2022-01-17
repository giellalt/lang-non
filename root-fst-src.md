
# Old Norse morphological analyser
INTRODUCTION TO MORPHOLOGICAL ANALYSER OF Old Norse LANGUAGE.


# Definitions for Multichar_Symbols@CODE@

## POS
* +AAdjective = Adjective
* +AdvAdverb = Adverb
* +ArtArticle = Article
* +CCConjunct = Conjunct
* +CSSubjunct = Subjunct
* +NNoun = Noun
* +PrPreposition = Preposition
* +PronPronoun = Pronoun
* +Propnoun = Proper noun
* +VVerb = Verb

* +CLB= =
* +PUNCT= =
* +LEFT= =
* +RIGHT= =

* +DemDemonstrative = Demonstrative
* +Det= =
* +Refl= =
* +Rel= =
* +Interr = 
* +Symbol`©` = independent symbols in the text stream, like `£`, `€`, `©`

Numerus:
 * +1Sg  = 1. person singular
 * +2Sg  = 2. person singular
 * +3Sg  = 3. person singular
 * +1Du  = 1. person dual
 * +2Du  = 2. person dual
 * +1Pl  = 1. person plural
 * +2Pl  = 2. person plural
 * +3Pl  = 3. person plural
 * +3    = ?
 * +Sg   = Singular
 * +Pl   = Plural

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
| `@P.NeedNoun.ON@nominalised` | (Dis)allow compounds with verbs unless nominalised
| `@D.NeedNoun.ON@nominalised` | (Dis)allow compounds with verbs unless nominalised
| `@C.NeedNoun@nominalised` | (Dis)allow compounds with verbs unless nominalised

## Controlling General Compounding

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Tag | Explanation
| --- | ---
| `@P.CmpFrst.FALSE@first` | Require that words tagged as such only appear first
| `@D.CmpPref.TRUE@ENDLEX` | Block such words from entering ENDLEX
| `@P.CmpPref.FALSE@compounds` | Block these words from making further compounds
| `@D.CmpLast.TRUE@R` | Block such words from entering R
| `@D.CmpNone.TRUE@compounding` | Combines with the next tag to prohibit compounding
| `@U.CmpNone.FALSE@compounding` | Combines with the prev tag to prohibit compounding
| `@P.CmpOnly.TRUE@R` | Sets a flag to indicate that the word has passed R
| `@D.CmpOnly.FALSE@root.` | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

| Tag | Explanation
| --- | ---
| `@U.Cap.Obl@deatnulasj.` | Allowing downcasing of derived names: deatnulasj.
| `@U.Cap.Opt@deatnulasj.` | Allowing downcasing of derived names: deatnulasj.











* * *
<small>This (part of) documentation was generated from [../src/fst/root.lexc](http://github.com/giellalt/lang-non/blob/main/../src/fst/root.lexc)</small>