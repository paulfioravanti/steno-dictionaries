# Plover Overrides

This document is meant to explain, or provide a justification for, why I chose
to override an already-existing Plover outline with one of my own choosing in
the dictionaries under this directory.

Hopefully, it will serve as a reference for whether you would like to also
supplement your Plover dictionaries with any of the overrides I have. However,
it mostly exists so that future-me remembers why I made the decisions to
override any outlines in the first place.

Ideally, every entry in the dictionaries under the `overrides/` directory should
have a corresponding justification here, and so I expect this to be a living
document, with words added and removed as Plover updates.

Note that for the [stitching][] outlines, they use the `:STITCH:` macro from the
[Plover Stitching][] Plover plug-in.

If you see any outlines here that you think will get me in trouble, or you are
just baffled by (I am a total amateur at this...), by all means please let me
know, either by [opening an issue][steno_dictionaries issues], or
[tweeting at me][@paulfioravanti].

## Outline Overrides

<!-- vim-markdown-toc GFM -->

- [`"-T/HROEUPB": "the loin"`](#-throeupb-the-loin)
- [`"*EPLT": "{:STITCH:E}"`](#eplt-stitche)
- [`"*EUPLT": "{:STITCH:I}"`](#euplt-stitchi)
- [`"*UD": "you had"`](#ud-you-had)
- [`"A*EUT": "{eight-^}"`](#aeut-eight-)
- [`"A*FD": "asdf"`](#afd-asdf)
- [`"A*FPLT": "{&A.}"`](#afplt-a)
- [`"A*L/A*L": "Alabama"`](#alal-alabama)
- [`"A*PLT": "{:STITCH:A}"`](#aplt-stitcha)
- [`"A*RPBG": "anchor"`](#arpbg-anchor)
- [`"AEUD/*EPB": "Aiden"`](#aeudepb-aiden)
- [`"AFT": "after the"`](#aft-after-the)
- [`"AO*EPLT": "{&e-}"`](#aoeplt-e-)
- [`"AO*URB": "you shall"`, `"URB": "you shall"`, `"URBL": "you shall"`](#aourb-you-shall-urb-you-shall-urbl-you-shall)
- [`"AOERT": "eater"`](#aoert-eater)
- [`"EFPLT": "estimate"`](#efplt-estimate)
- [`"ETS": "etc"`](#ets-etc)
- [`"EUFB": "I've been"`](#eufb-ive-been)
- [`"H*ET/*ER": "Heather"`](#heter-heather)
- [`"H*PLT": "{:STITCH:H}"`](#hplt-stitchh)
- [`"HAO*EL": "he will"`](#haoel-he-will)
- [`"HAOEF": "he have"`](#haoef-he-have)
- [`"HESZ": "Hess"` and `"HES": "he's"`](#hesz-hess-and-hes-hes)
- [`"HR*UF": "will you have"`](#hruf-will-you-have)
- [`"HO": "ho"` and `"HO*": "oh"`](#ho-ho-and-ho-oh)
- [`"K-G": "can go"`](#k-g-can-go)
- [`"KAEUT/KAEUT": "Cate"`](#kaeutkaeut-cate)
- [`"KAPL/KWROE": "cameo"`](#kaplkwroe-cameo)
- [`"KE": "can he"`](#ke-can-he)
- [`"KHR*PB": ":{^}"`](#khrpb-)
- [`"KR*D": "cd"`](#krd-cd)
- [`"KRAETD": "created"`](#kraetd-created)
- [`"KRAOEPL/TPOR": "cream for"` and `"KREPL/TPOR": "creme for"`](#kraoepltpor-cream-for-and-krepltpor-creme-for)
- [`"KREBLGT": "correctly"`](#kreblgt-correctly)
- [`"KOU": "could you"`](#kou-could-you)
- [`"KU/WAEUT": "can you wait"`](#kuwaeut-can-you-wait)
- [`"KWRA*BG": "yack"`](#kwrabg-yack)
- [`"KWRAUL": "yawl"`](#kwraul-yawl)
- [`"O*UFT": "outfit"`](#ouft-outfit)
- [`"PA*RS": "passer"`](#pars-passer)
- [`"PAUZ": "paws"`](#pauz-paws)
- [`"PEPB/TPH*EU": "Penny"`](#pepbtpheu-penny)
- [`"PHA*EPB": "mane"`](#phaepb-mane)
- [`"PHAEUF": "may've"` and `"PHAEUFB": "may've been"`](#phaeuf-mayve-and-phaeufb-mayve-been)
- [`"PHREU": "reply"`](#phreu-reply)
- [`"PR*PB": "{^}){^}"`](#prpb-)
- [`"PROB": "problem"`](#prob-problem)
- [`"PWA*EBG": "{^back}"`](#pwaebg-back)
- [`"PWA*EUB": "Babe"`](#pwaeub-babe)
- [`"PWAEUFG": "behaving"`](#pwaeufg-behaving)
- [`"PW*EUT": "by the"`](#pweut-by-the)
- [`"PWOELD": "bowled"`](#pwoeld-bowled)
- [`"PWORBG/-G": "borking"`](#pworbg-g-borking)
- [`"REBGT/-G": "recollecting"`](#rebgt-g-recollecting)
- [`"ROEU": "roadway"`](#roeu-roadway)
- [`"ROFL": "revolve"` and `"RO*FL": "Rolf"`](#rofl-revolve-and-rofl-rolf)
- [`"S*EUBGS": "{six-^}"`](#seubgs-six-)
- [`"S*PLT": "{:STITCH:S}"`](#splt-stitchs)
- [`"SHA*EUFR": "Shaffer"`](#shaeufr-shaffer)
- [`"SHAO*ED": "she had"`](#shaoed-she-had)
- [`"SHAO*EL": "she will"`](#shaoel-she-will)
- [`"SHAO*U": "shew"`](#shaou-shew)
- [`"SHES": "she's"`](#shes-shes)
- [`"SHOU": "should you"`](#shou-should-you)
- [`"SKPHORPBG": "and morning"`](#skphorpbg-and-morning)
- [`"SKPOEFR": "and over"`](#skpoefr-and-over)
- [`"SKPREFRPBS": "and reference"`](#skprefrpbs-and-reference)
- [`"SKPUF": "and you've"`](#skpuf-and-youve)
- [`"SKPUP": "and up"`](#skpup-and-up)
- [`"SKRAO*E": "scree"`](#skraoe-scree)
- [`"SKWR*EL": "jell"`](#skwrel-jell)
- [`"SR-PBTD": "haven't had"`](#sr-pbtd-havent-had)
- [`"SR*EU": "I have"` and `"SREU": "have I"`](#sreu-i-have-and-sreu-have-i)
- [`"SR*U": "you have"`](#sru-you-have)
- [`"SREUPL": "vim"`](#sreupl-vim)
- [`"SRUFR": "have you ever"`](#srufr-have-you-ever)
- [`"ST*": "it is"`](#st-it-is)
- [`"STAR/TPEURB": "starfish"`](#startpeurb-starfish)
- [`"STH-RBGT": "is this correct"`](#sth-rbgt-is-this-correct)
- [`"STHARBGT": "is that correct"`](#stharbgt-is-that-correct)
- [`"STKAOEFD": "deceased"`](#stkaoefd-deceased)
- [`"STKAOES": "decease"`](#stkaoes-decease)
- [`"STKO": "and do"`](#stko-and-do)
- [`"STKPWEPB": "and again"`](#stkpwepb-and-again)
- [`"STO*EUD": "studio"`](#stoeud-studio)
- [`"STPH": "is in"`](#stph-is-in)
- [`"T-T": "it the"`](#t-t-it-the)
- [`"T*EFD": "testified"`, `"TEF/-D": "tested"`, and `"TEFD": "tested"`](#tefd-testified-tef-d-tested-and-tefd-tested)
- [`"T*ET": "at the time"`](#tet-at-the-time)
- [`"T*EUF": "tiff"`](#teuf-tiff)
- [`"T*L": "it will"`](#tl-it-will)
- [`"TH*L": "this will"`](#thl-this-will)
- [`"THA*F": "that have"`](#thaf-that-have)
- [`"THA*L": "that will"`](#thal-that-will)
- [`"THA*T": "at the time"`](#that-at-the-time)
- [`"THAOUS": "enthuse"`](#thaous-enthuse)
- [`"THR*S": "there is"`](#thrs-there-is)
- [`"THR*": "it will"`](#thr-it-will)
- [`"THR*L": "there will"`](#thrl-there-will)
- [`"THRAO*E": "{three-^}"`](#thraoe-three-)
- [`"TKEF/STAEUTD": "devastated"`](#tkefstaeutd-devastated)
- [`"TKOPBLT": "do not"`](#tkopblt-do-not)
- [`"TKPWO*ET": "go to"`](#tkpwoet-go-to)
- [`"TKU/PWAOEU": "did you buy"`](#tkupwaoeu-did-you-buy)
- [`"TK*UF": "did you have"`](#tkuf-did-you-have)
- [`"TKO*RPB": "Doner"`](#tkorpb-doner)
- [`"TO*T": "tot"`](#tot-tot)
- [`"TO*UR": "to our"`](#tour-to-our)
- [`"TP-PLT": "{&f-}"`](#tp-plt-f-)
- [`"TP*EUF": "{five-^}"`](#tpeuf-five-)
- [`"TPAOEF": "fief"`](#tpaoef-fief)
- [`"TPEUBG": "if I can"`](#tpeubg-if-i-can)
- [`"TPHA*F": "nav"`](#tphaf-nav)
- [`"TPHRA*BG": "flack"`](#tphrabg-flack)
- [`"TPO*UR": "{four-^}"`](#tpour-four-)
- [`"TPORB": "for sure"`](#tporb-for-sure)
- [`"TPUD": "if you'd"`](#tpud-if-youd)
- [`"TPUF": "if you've"`](#tpuf-if-youve)
- [`"UPBGS": "understanding"`](#upbgs-understanding)
- [`"URL": "you recall"` and `"URLD": "you recalled"`](#url-you-recall-and-urld-you-recalled)
- [`"WAEPBLT": "was not"`](#waepblt-was-not)
- [`"WAO*EL": "we will"`](#waoel-we-will)
- [`"WH-F": "when've"` and `"WH*F": "when have"`](#wh-f-whenve-and-whf-when-have)
- [`"WEF": "we've"` and `"W*EF": "we have"`](#wef-weve-and-wef-we-have)
- [`"WEFPBT": "we haven't"`](#wefpbt-we-havent)
- [`"WER": "we're"`](#wer-were)
- [`"WEUL/HROE/TRAOE": "willow tree"`](#weulhroetraoe-willow-tree)
- [`"WH-RP": "when were"`](#wh-rp-when-were)
- [`"WHA*L": "what will"`](#whal-what-will)
- [`"WHO*F": "who have"`](#whof-who-have)
- [`"WHO*L": "who will"`](#whol-who-will)
- [`"WO*E": "would he"`](#woe-would-he)
- [`"WO*F": "would've"`](#wof-wouldve)
- [`"WO*G": "would go"`](#wog-would-go)
- [`"WOUF": "would you've"`, `"WOUFB": "would you've been"`, and `"WO*UF": "would you have"`](#wouf-would-youve-woufb-would-youve-been-and-wouf-would-you-have)
- [`"WRAOEUGT": "writing"`](#wraoeugt-writing)
- [`"WRU": "were you"`](#wru-were-you)

<!-- vim-markdown-toc -->

### `"-T/HROEUPB": "the loin"`

Plover has the following outlines for "loin":

```txt
loin:
   HROEUPB
   -T/HROEUPB
```

I am perplexed by the `-T/HROEUPB` one as it interferes with the sentence
"the loin", and so can only conclude that it is a typo in the dictionary and
needs to be overridden.

### `"*EPLT": "{:STITCH:E}"`

Plover currently assigns the following 8 outlines to "element":

```txt
element:
   *EPLT
   HREPLT
   EL/*PLT
   EL/EPLT
   EL/*EPLT
   ELT/*PLT
   EL/HREPLT
   EL/-BS/*F/*PLT
```

In order to help with creation of a set of outlines for [stitching][], I would
like to use the `*PLT` suffix.

Since the outline I would most likely use for "amount" is `HREPLT`, I would like
to override `*EPLT` for `{:STITCH:E}`.

### `"*EUPLT": "{:STITCH:I}"`

Plover currently assigns the following 10 outlines to "implement":

```txt
implement:
   EUPLT
   *EUPLT
   EUFRPLT
   EUPL/*PLT
   EUPLT/*PLT
   *EUPL/*PLT
   *EUPLT/*PLT
   EUPL/PHREPLT
   EUFRP/HREPLT
   EUPL/HRE/*PLT
```

In order to help with creation of a set of outlines for [stitching][], I would
like to use the `*PLT` suffix.

Since the outline I would most likely use for "implement" is `EUPLT` (or maybe
`EUFRPLT`), I would like to override `*EUPLT` for `{:STITCH:I}`.

### `"*UD": "you had"`

Plover currently assigns the following outlines to "you'd":

```txt
you'd:
   UD
   *UD
   AOUD
   KWRO*UD
   UD/AE
```

I would like a single-stroke brief for "you had", and I think one of these
existing briefs would be appropriate. Given that I would most likely use `UD`
for "you'd", the `*`-flagged version, `*UD`, seems like the best candidate for
"you had", with the `*` indicating that the brief is squeezed.

### `"A*EUT": "{eight-^}"`

Plover currently has the following named outlines for "eight":

```txt
eight:
   AET
   A*EUT
```

Reasons for wanting to override `A*EUT` to output "eight-" are similar to ones
described in entry for `"THRAO*E": "three-"`: I want some single-stroke
outlines for fraction numbers that include a dash.

I'm not sure whether I overall prefer `AET` or `A*EUT` for just "eight", so I
may end up switching the outline I use for "eight-" in the future. For now, I
will move forward with overriding the `*`-flagged outline.

### `"A*FD": "asdf"`

Plover uses the following outlines for "avid":

```txt
avid:
   AFD
   A*FD
   AF/EUD
   A*F/EUD
   A*F/SREUD
```

`AFD` is the outline that I would use for this, which means it does not need to
take up the `*`-flagged outline as well. I would like to use `A*FD` for the
[`asdf`][] version manager command instead, so I have decided to override it.

### `"A*FPLT": "{&A.}"`

Plover has a set of outlines that look like they are perhaps used for initials
and acronyms using a fingerspelling letter and a  `*`-flagged `FPLT` suffix:

```txt
{&B.}:
   PW*FPLT
{&C.}:
   KR*FPLT
etc ...
```

However, there is no `{&A.}` at all, and the most likely outline candidate is
`A*FPLT`, and this outline is current assigned to the word "amount". Plover
assigns the following 6 outlines to "amount":

```txt
amount:
   APLT
   A*PLT
   A*EPLT
   A*FPLT
   AO*PLT
   A/A*/A*PLT
```

Out of all these, I think I'm most likely to use `APLT`, so I've decided to
override `A*FPLT` for "{&A.}".

### `"A*L/A*L": "Alabama"`

Plover uses the following outlines for proper noun "Al":

```txt
Al:
   AL/AL
   A*L/A*L
```

I think this is generally fine, but since the abbreviation for the US state of
Alabama is "AL", it would be nice to be able to use one of these outlines for
it.

Currently, Plover uses the following outlines for "Alabama":

```txt
Alabama:
   AL/PWAPL
   AL/PWA/PHA
   AL/PWAPL/PHA
```

These outlines make Alabama one of the outliers for US-state strokes, which
tend to use their abbreviation (or a repetition of the abbreviation) as the
outline.

I don't think that the proper noun "Al" needs to have both the non-`*`-flagged
version and the `*`-flagged version of the repeated "Al" outline, so I have
decided to override `A*L/A*L` for "Alabama".

### `"A*PLT": "{:STITCH:A}"`

Plover currently assigns the following outlines to "amount":

```txt
amount:
   APLT
   A*PLT
   A*EPLT
   A*FPLT
   AO*PLT
   A/A*/A*PLT
```

In order to help with creation of a set of outlines for [stitching][], I would
like to use the `*PLT` suffix.

Since the outline I would most likely use for "amount" is `APLT`, I would like
to override `A*PLT` for `{:STITCH:A}`.

### `"A*RPBG": "anchor"`

Plover currently uses the following outlines for "anger":

```txt
anger:
   ARPBG
   A*RPBG
   APBG/ER
   APBG/*ER
   AEUPBG/ER
   APB/TKPWER
```

Plover is using both the `ARPBG` and it's `*`-flagged variant, but it would be
nice if the flagged variant could be used for "anchor", since Plover does not
have a one-stroke brief for it:

```txt
anchor:
   APB/KOR
   APBG/KOR
   AEUPB/KOR
   A*PBG/O*R
   AEUPBG/KOR
```

I would probably use "anger" more often than "anchor", so I have decided to
override `A*RPBG` for "anchor".

### `"AEUD/*EPB": "Aiden"`

Plover has the following outline for the proper noun name "Aidan":

```txt
Aidan:
   AEUD/*EPB
```

The problem with this is that there is also the name "Aiden" with an "e", which
does not have a named outline in Plover. Rather than keep the current outline
for Aidan, and add `"AEUD/*APB": "Aiden"`, resulting in confusion, I have
decided to override `AEUD/*EPB` for "Aiden", and add `AEUD/*APB` as a new entry
for "Aidan".

### `"AFT": "after the"`

Plover currently uses the following outlines for "after":

```txt
after:
   AF
   AFT
{after^}:
   A*F
   AFR
```

I would like a one-stroke brief for "after the", to complement the ability to
stroke "before the" in one stroke: `PW-FRT`, and it would seem that `AFT`
is what I am looking for. This has the effect of forcing me to build muscle
memory for `AF` for "after", which I don't think is necessarily a bad thing.

### `"AO*EPLT": "{&e-}"`

Currently, Plover uses the following 8(!) outlines for "empty":

```txt
empty:
   EPLT
   EFRPT
   AO*EPLT
   EPL/TEU
   *EPL/TEU
   EFRP/TEU
   EPLT/TEU
   EPLT/KWREU
```

Out of all these outlines, I think the one I would use most often for "empty"
would be the shortest one: `EPLT`.

I don't think I would ever think of using `AO*EPLT` for "empty", but I would
rather use that outline to match all of the other outlines using `-PLT`
that are allocated for "[stitching][]":

```txt
{&b-}:
   PW-PLT
{&c-}:
   KR-PLT
etc...
```

This is regardless of the fact that Plover _already_ has an outline for "{&e-}":

```txt
{&e-}:
   EFPL
```

But, to me, this seems like the odd outline out compared to the other similar
outlines, and it would be nice to have them all have some kind of consistency.

### `"AO*URB": "you shall"`, `"URB": "you shall"`, `"URBL": "you shall"`

Plover's entry for `AO*URB` is the company name "[Uber][]".

To me "Uber" sounds more like "Oober" rather than "Yuuber", so I ended up
assigning the unused `AO*RB` outline to "Uber", leaving `AO*URB` free for what I
feel is a more useful phrase, "you shall".

Also, Plover currently uses the following outlines for "you're":

```txt
you're:
   UR
   URB
   KWRO*UR
   KWRAO*UR
   UR/AE
```

`UR` is absolutely the outline I would use for "you're", and `URB`, with the
`RB` "-sh" sound, feels like it would also be more usefully allocated to "you
shall", so I will override that, too.

Finally, Plover currently uses the following outlines for "usual":

```txt
usual:
   URBL
   AOURB
   KWRAOURBL
   KWRAOUZ/WAL
   KWRAOUZ/KWRUL
   KWRAOUZ/KWRAL
```

I think I would be more likely to use `AOURB` with the long "u" sound here, and
would prefer `URBL` to be used in the various phrasing variants for "you shall",
so I have decided to override it.

### `"AOERT": "eater"`

Plover currently uses the following outlines for "either":

```txt
either:
   AOERT
   AOEURT
   AO*ERT
   AOERLT
   RAOERT
   AOEURLT
   AO*EURT
   AOE/THER
   AO*EUT/ER
```

The first outline, `AOERT` does not feel right for "either" given its
"th"-sound, so I think I would most likely use `AO*ERT` for "either". Since I
want to have a one stroke outline for "eater", `AOERT` feels like the most
appropriate candidate, so I have decided to override it.

### `"EFPLT": "estimate"`

Plover currently uses the following outlines for "{&E.}":

```txt
{&E.}:
   EFPLT
   *EFPLT
```

Most of the family of outlines for initials use a `*FPLT` suffix, and so it
would be `*EFPLT` that I would be most comfortable with for "{&E.}".

Plover uses the following outlines for "estimate":

```txt
estimate:
   STEUPLT
   EFT/PHAT
   *ES/PHAT
   EFT/PHAEUT
   *ES/PHAEUT
   ES/TEU/PHAT
   ES/TEU/PHAEUT
```

These are all fine, but the single stroke outline `STEUPLT`, pronounced
in my head as "stimate", seems to be less intuitive than a potential `EFPLT`
"esmate" outlines.

It will probably be convenient to have both outlines available, as I think I
would use "estimate" more than "{&E.}" anyway, so I have decided to override
`EFPLT` for "estimate".

### `"ETS": "etc"`

Plover currently uses the following outlines for "et cetera":

```txt
et cetera:
   ETS
   ELTS
   ETSZ
   EGTS
   ET/SET/RA
   ET/SET/TRA
```

`ETS` is a fine outline for "et cetera", but I think I would use "etc" (without
an ending period) more often. Plover does already have an outline for "etc.":

```txt
etc.:
   *ETS
```

This is a fine outline as well, but I would also prefer there to be an outline
without the ending period.

So, I have decided to override `ETS` for "etc", and use `ELTS` as my main
outline for the full word "et cetera".

### `"EUFB": "I've been"`

Plover currently uses the following outline for the phrase "I have been":

```txt
I have been:
   EUFB
```

And the following outline for the phrase "I've been":

```txt
I've been:
   AOEUFB
```

I think both these outlines are fine, but for phrases like these, I would rather
have `EUFB` be used for the truncated "I've been", and a new alternative outline
`*EUFB` be used for "I have been", with the `*`-flag standing in for the
truncated "ha" in "have".

Therefore, I have chosen to override `EUFB` for "I've been", and add an
alternative `*EUFB` outline for "I have been".

### `"H*ET/*ER": "Heather"`

Plover currently assigns the following outlines for "heather":

```txt
heather:
   H*ET/ER
   H*ET/*ER
```

However, there is no outline for the proper noun "Heather". For "heather" the
plant, I think I am most likely to use `H*ET/ER`, and given that `H*ET/*ER` is
`*`-flagged on the second stroke, it feels that it should be used for the proper
noun version of the word, so that is how I will override it.

### `"H*PLT": "{:STITCH:H}"`

Plover currently assigns the following outlines to "HTML":

```txt
HTML:
   H*PLT
   HAO*EPLT
```

In order to help with creation of a set of outlines for [stitching][], I would
like to use the `*PLT` suffix.

Although I do like the outline `H*PLT` for "HTML", I don't think I would use it
too much in everyday writing, so I'm happy to build up muscle-memory with the
alternative outline, `HAO*EPLT` (or just finger-spell it).

So, I would like to override `H*PLT` for `{:STITCH:H}`.

### `"HAO*EL": "he will"`

Plover currently has four outlines reserved for "he'll"...

```txt
he'll:
   *EL
   HAO*EL
   EL/AE
   HE/AOEL
```

...yet none for "he will". I wanted a single-stroke outline for the "he will"
phrase, so I decided to override `HAO*EL` for this since it felt more
appropriate to leave the shorter `*EL` for the "he'll" contraction.

### `"HAOEF": "he have"`

Plover currently has the following outlines for "heave":

```txt
heave:
   HAOEF
   HAO*EF
```

I think that for "heave", I think I am more likely to use `HAO*EF` with the
`*`-flag indicating a change from a "F" to "V" sound. I want to have a brief for
"he have", and `HAOEF` seems like a good candidate for it, so I have decided to
override it.

### `"HESZ": "Hess"` and `"HES": "he's"`

Plover uses the following outline for the proper noun "Hess":

```txt
Hess:
   HES
```

I would like to use that outline for the contraction "he's", so I have decided
to override it, and re-assign "Hess" to `HESZ`, which is currently untaken.

### `"HR*UF": "will you have"`

Plover currently uses the following outlines for "love":

```txt
love:
   HOF
   HRUF
   HR-F
   HROF
   HR*UF
```

I would like to have a single-stroke brief for "will you have", and this many
outlines for "love" seems like a lot. I think that I would be least likely to
use `HR*UF` for love, so I have decided to override it for "will you have". The
fact that its `*`-flagged will also help me remember that it is specifically for
a phrase brief.

### `"HO": "ho"` and `"HO*": "oh"`

Plover currently uses the following outlines for "who":

```txt
who:
   HO
   WHO
   KWHO
   WHRO
```

`WHO` makes the most sense to me as the outline for "who", but `HO` definitely
does not, so I'd like to override it for "ho".

This decision frees up the `HO*` outline currently assigned to "ho":

```txt
ho:
   HO*
   HO*E
```

I actually want to assign this to "oh", because Plover's current outline for
"oh" is incredibly unintuitive:

```txt
oh:
   O*ERBGS
```

This outline is meant to be the alternative for the "comma-less" version of
"oh,":

```txt
oh{,}:
   OERBGS
```

`RGBS` here comes from the outline for a comma:

```txt
{,}:
   -RB
   -RBG
   -RGS
   -RBS
   KW-B
   -BGS
   W-BG
   KW-BG
   -RBGS
   -FRBGS
```

Taking a comma after "oh" as an assumption means awkward strokes to make, say,
the comma-less exclamation phrase "oh no". I just want to make "oh" simpler, so
I have decided to take the `HO*` outline and consider the `*`-flag an indicator
to reverse the spelling of "ho".

### `"K-G": "can go"`

Plover currently has the following outlines for "kilogram":

```txt
kilogram:
   K*G
   K-G
   KEUL/TKPWRAPL
   K*EUG/TKPWRAPL
   K*EUL/TKPWRAPL
   KEUL/HRO/TKPWRAPL
```

I think that a "can go" would be a convenient phrase brief to have, and since
I don't think "kilogram" needs both `K*G` _and_ `K-G`, I've opted to override
the slightly easier to stroke `K-G` for "can go", as I think I would use that
more in everyday use than kilogram.

### `"KAEUT/KAEUT": "Cate"`

Plover currently does not have an outline for the name "Cate" with a "C". Two
outlines are used for "Kate":

```txt
Kate:
   KA*ET
   KAEUT/KAEUT
```

So, I decided to override the latter for "Cate" since it is probably(?) less
frequently used than "Kate".

### `"KAPL/KWROE": "cameo"`

Plover has a named entry for capitalised "Cameo", but not for lower cased:

```txt
Cameo:
   KAPL/KWROE
```

My view is that `KAPL/KWROE` should be for the lower cased general word "cameo",
and if there is a proper noun version, then it should be `*`-flagged. So, I have
decided to override `KAPL/KWROE` for "cameo", and add `KAPL/KWRO*E` as an
alternate brief for "Cameo".

### `"KE": "can he"`

Plover currently uses the following outline for the phrase "he can":

```txt
he can:
   KE
```

This outline reads to me more like "can he", than "he can". The outline `K*E`,
with the `*`-flag indicating a "backwards reading", feels more like the
appropriate outline for "can he".

Therefore, I have decided to override `KE` for "can he", and add `K*E` for "he
can" so the phrase brief is not lost.

### `"KHR*PB": ":{^}"`

As per [openstenoproject/plover#1407][], it looks like there is a bug in
`main.json`. The following outline causes an error in Plover:

```txt
{:^}:
   KHR*PB
```

So, to fix the bug, I'm overriding the outline to be `:{^}`.

### `"KR*D": "cd"`

Plover uses the following outline for the abbreviation "CD":

```txt
CD:
   KR*D
```

In principle, this is totally fine, but I want to have a one-stroke outline for
the Unix command `cd` (change directory), and I think `KR*D` fits the bill best,
so I have decided to override it.

I do not want to lose the entry for "CD", though, so I have decided to add in an
alternative outline for it: `KR*D/KR*D`.

### `"KRAETD": "created"`

Plover's outlines for "create" are:

```txt
create:
   KRAET
   KRAOET
   KRAOELT
   KRAOE/AEUT
   KRAOE/KWRAEUT
```

Yet the outlines for "created" are:

```txt
created:
   KRAOETD
   KRAOET/-D
   TKRAOET/-D
```

I want to be able to use the outline `KRAETD` for "created", but it's currently
being used by "credit":

```txt
credit:
   KRET
   KRETD
   KRAETD
   KREUTD
   SKRETD
   KRED/EUT
   KRE/TKEUT
   KRED/TKEUT
```

For "credit", I am most likely to use `KRETD`, or maybe `KRET`, but definitely
not `KRAETD`. So, I have decided to override `KRAETD` for "created".

### `"KRAOEPL/TPOR": "cream for"` and `"KREPL/TPOR": "creme for"`

Plover has the following entries for "[cremophor][]":

```txt
cremophor:
   KREPL/TPOR
Cremophor:
   KRAOEPL/TPOR
```

Unfortunately, these two outlines conflict with "creme for" and "cream for",
which I think I would use more often than "cremophor", so I have decided to
override these entries to prevent the conflicts, and make new outlines for
the originals:

`"KR*EPL/TPO*R": "Cremophor"` and `"KR*EPL/TPOR": "cremophor"`.

### `"KREBLGT": "correctly"`

Plover currently uses the following outlines for "correct":

```txt
correct:
   KREBGT
   KRERBG
   KREBLGT
   KOR/REBGT
```

These look fine, except for `KREBLGT`, which looks to me like it has an inverted
`L` for the final "ly" sound, due to the most logical brief being `KREBGT`.

Therefore, I have decided to override `KREBLGT` for "correctly".

### `"KOU": "could you"`

Plover currently has the following outlines for "cow":

```txt
cow:
   KOU
   KO*U
```

For "cow", I think I would be more likely to use `KO*U`, and since I would like
to have a brief for "could you", that mirrors Plover's own `"WOU": "would you"`
brief, I have decided to override `KOU` for "could you".

### `"KU/WAEUT": "can you wait"`

When you want to stroke "can you wait" using the `KU` brief for "can you",
Plover automatically changes the phrase to "Kuwait". "Kuwait" currently has
three outlines assigned to it:

```txt
Kuwait:
   KWAEUT
   KU/WAEUT
   KAOU/WAEUT
```

I figured that I would override `KU/WAEUT` because:

- I would stroke "can you wait" more often than "Kuwait"
- "Kuwait" can probably live without having three outlines
- I'm more likely to use the single-stroke outline anyway

### `"KWRA*BG": "yack"`

Plover assigns two outlines to "yak":

```txt
yak:
   KWRABG
   KWRA*BG
```

"[Yack][]" does not currently have an outline entry in Plover, and I figure that
"yak" does not need two. I do think I am more likely to use "yak" than "yack",
so "yack" gets the `*`-flagged version of the outline.

### `"KWRAUL": "yawl"`

Plover assigns the following outlines to "y'all":

```txt
y'all:
   KWRAUL
   KWRA*UL
   KWRA/AUL
   KWRAOU/AUL
```

"[Yawl][]" does not currently have an outline entry in Plover, and "y'all"
probably does not need to have both the `KWRAUL` and `KWRA*UL` assigned to it.
`KWRA*UL` for "y'all" probably makes the most sense to me, given the apostrophe,
so I have decided to override `KWRAUL` for "yawl".

### `"O*UFT": "outfit"`

Plover has the following outlines for "oust":

```txt
oust:
   OUFT
   O*UFT
```

`OUFT` feels like the one I would use all the time for "oust". I would like a
single-stroke outline for "outfit", and `O*UFT` seems like a good..._fit_...for
this word, so I've decided to override it.

### `"PA*RS": "passer"`

Plover currently uses the following outlines for "parse":

```txt
parse:
   PARS
   PA*RS
```

Both of these make sense, but I would like to have a one-stroke brief for
"passer" that uses an inverted `R`. Hence, I have decided to override `PA*RS`
for "passer", even though "passer" already has two outlines assigned to it:

```txt
passer:
   PAS/*ER
   PAS/SER
```

### `"PAUZ": "paws"`

Plover has the following outlines for "pause":

```txt
pause:
   PAUS
   PAUZ
```

Out of these two outlines, I think I would be more likely to use `PAUS` for
"pause", which leaves `PAUZ` free to assign to "paws", which I wanted a
one-stroke brief for, and which makes sense to me since the outline for "paw"
is `PAU`.

### `"PEPB/TPH*EU": "Penny"`

Plover currently uses the following outlines for "penny":

```txt
penny:
   PEPB/TPHEU
   PEPB/TPH*EU
```

This would be fine, but Plover does not have an outline for the proper noun
"Penny", short for "Penelope". `PEPB/TPH*EU` seems like the logical choice for
this outline given other `*`-flagged proper nouns, so I have decided to override
it.

### `"PHA*EPB": "mane"`

Plover currently does not have an outline entry for "[mane][]". My initial
preferred outline for this, `PHAEPB`, is assigned to "many", which I do not want
to change. The `*`-flagged version of this outline is currently assigned to:

```txt
Man:
   PHA*EPB
```

...which I figure I would use less than "mane", so I have overridden it.

### `"PHAEUF": "may've"` and `"PHAEUFB": "may've been"`

Plover currently uses the following outlines for the phrases "may have" and
"may have been":

```txt
may have:
   PHAEUF

may have been:
   PHAEUFB
```

These are fine outlines, but I would like to have similar ones for the truncated
versions of these phrases: "may've", and "may've been".

For phrases, I tend to use the `*`-flag to indicate that it's "standing in" for
missing letters, so I have decided to add two alternative phrase briefs for
"may have" (`PHA*EUF`), and "may have been" (`PHA*EUFB`), and override `PHAEUF`
and `´PHAEUFB` for "may've" and "may've been".

### `"PHREU": "reply"`

Plover currently uses the following outlines for "MRI":

```txt
MRI:
   PHREU
   PHR*EU
   PH-RBGS/R*EU
```

I would like to have a one-stroke brief for "reply", and `PHREU` seems like the
best candidate, so I will override it, since I think I would use "reply" more
often than "MRI". Keeping `PHR*EU` for "MRI" makes sense to me since it is an
abbreviation, and they are typically `*`-flagged.

### `"PR*PB": "{^}){^}"`

Plover uses the following outlines for the abbreviation "p.r.n." for the phrase
[pro re nata][]:

```txt
p.r.n.:
   PR*PB
   P*RPB
   P*PD/R*PB
```

The chances of me using this phrase often is extremely low since I do not use
medical terminology often. So, I would like to use the `PR*PB` outline as the
mirror outline for `PR-PB`, an alt outline I've created for left bracket (`(`).

### `"PROB": "problem"`

Plover currently has the following outlines for "probable" and for "problem":

```txt
probable:
   PROB
   PROB/-L
   PROB/-BL
```

```txt
problem:
   PRO*B
   PRO*FB
   TPRO*B
   PROB/HREPL
   PRO/PWHREPL
```

It seems strange to me that the `*`-flagged `PRO*B` is used for "problem", what
I would have thought to be a much more common word than "probable", which takes
`PROB`. Also, "probable" having the `PROB` outline by itself makes the rest of
it's outlines redundant.

In my mind, I often abbreviate "problem" to "prob", as in "no probs!", so it
makes more sense to me for `PROB` to resolve to "problem", so I have decided to
override it.

### `"PWA*EBG": "{^back}"`

Plover uses the following "back"-related prefix and suffix outlines:

```txt
{^back}:
   PWA*BG
{back^}:
   PWAEBG
   PWA*EBG
```

Given that the prefix {back^} is `PWAEBG`, it would make more sense to me to
have `PWA*EBG` be the outline for its partnering suffix {^back}.

Doing this would also "free up" the `PWA*BG` outline for other uses, most likely
for a custom command. Therefore, I have decided to override (or essentially
re-assign) `PWA*EBG` to {^back}.

### `"PWA*EUB": "Babe"`

Plover currently uses the following outlines for "baby":

```txt
baby:
   PWAEB
   PWA*EB
   PWA*EUB
   PWAEU/PWEU
   PWAEUB/PWEU
   PWAEUB/KWREU
```

I think the outline I would most likely use for "baby" is `PWAEB`, and I would
like to have a one-stroke outline for the proper noun "Babe", for "Babe Ruth".
Given that `PWAEUB` is the outline for "babe", having the `*`-flagged version of
the outline as it's proper noun version makes sense to me, so I have decided to
override `PWA*EUB` for "Babe".

### `"PWAEUFG": "behaving"`

Plover currently uses the following outlines for "behave":

```txt
behave:
   PWAEUF
   PWHAEUF
   PWHA*EUF
   PWHRAEUF
   PWE/HAEUF
   PWE/HA*EUF
   PWAOE/HAEUF
```

When adding a `G` to the shortest outline, `PWAEUF`, to form `PWAEUFG`, it
outputs "basing", which I think is unexpected. Plover's named outlines for
"basing" are:

```txt
basing:
   PWAEUFG
   PWAEUS/-G
```

Using standard Plover, you can also output "basing" with the outline `PWAEUGS`,
with an inverted `G`, which I find the most natural fit for "basing". Given that
that one-stroke outline is already available in Plover, I think that `PWAEUFG`
can be re-purposed for "behaving".

### `"PW*EUT": "by the"`

Plover currently uses the following outline for the suffix "-bit":

```txt
{^-bit}:
   PW*EUT
```

That suffix comes up way less often for me than the phrase "by the", which
does not have a named entry in the Plover dictionary, so I have decided to
override the `PW*EUT` outline for "by the".

The suffix "-bit" is still be a nice outline to have, so I have decided to move
it to an alternative outline: `PW*T`.

### `"PWOELD": "bowled"`

Plover uses the following outline for "bowl":

```txt
bowl:
   PWOEL
```

Yet, if you attempt a single-stroke plural, `PWOELD`, you get "bold":

```txt
bold:
   PWOLD
   PWOELD
```

There is no current entry for "bowled", and since "bold" has two, I think that
`PWOELD` can be overridden to fix this issue.

### `"PWORBG/-G": "borking"`

Plover uses the following outlines for "working":

```txt
working:
   WOG
   WORBG/-G
   PWORBG/-G
```

The first two are fine, but I would think that `PWORBG/-G` is a misstroke,
especially since `PWORBG` by itself is "bork".

So, I've decided to override `PWORBG/-G` for "borking" since I want to use that
word.


### `"REBGT/-G": "recollecting"`

Plover currently uses the following outlines for "recollection":

```txt
recollection:
   REBGT/-G
   REBG/HREGS
   REBG/HREBGS
   REBG/HR*EBGS
```

Using `-G` for the "shun" sound doesn't feel right to me, especially since
Plover's named entry for "recollecting" is:

```txt
recollecting:
   REBG/HREBGT/-G
```

That entry means you cannot brief `REBGT` for "recollect" when you want to
stroke "recollecting", but you can for "recollects", which I find strange.
Therefore, I have decided to override `REBGT/-G` for "recollecting".

As a result of this, I have also decided to introduce a `*GS` suffix for when
you want to add a "shun" sound at the end of a word that you have already
stroked, so "recollection" can be stroked as `REBGT/*GS`.

### `"ROEU": "roadway"`

Plover currently uses the following outlines for the proper noun "Roy":

```txt
Roy:
   ROEU
   RO*EU
   ROEU/ROEU
```

Platinum Steno uses `ROEU` as a brief for "roadway", which seems reasonable.
Since the `*`-flagged version would be the one I would most likely reach for to
stroke the proper noun "Roy", I'm happy to override `ROEU` for "roadway".

### `"ROFL": "revolve"` and `"RO*FL": "Rolf"`

Plover currently uses the following outlines for the name "Rolf"/"Rolfe":

```txt
Rolf:
   ROFL

Rolfe:
   RO*FL
```

This seems reasonable, but the outlines for "revolve", a likely more used word,
are:

```txt
revolve:
   RE/SROF
   RE/SROFL
   R*E/SROFL
   RE/SROL/*F
   RAOE/SROL/-F
```

These also seem reasonable, but then the outlines for "revolved" are:

```txt
revolved:
   ROFLD
   RE/SROFL/-D
   RE/SROL/*FD
   RE/SROL/TP-D
   RAOE/SROL/-FD
   RE/SROL/-F/-D
```

And it's that `ROFLD` outline that made me think whether it would be worth
overriding `ROFL` for "revolve", so I have decided to do just that, as well as
override proper noun "Rolf" to `RO*FL` and give its alternate spelling to a
new outline, `RO*FL/RO*FL`.

### `"S*EUBGS": "{six-^}"`

Plover currently has the following named outlines for "sixth":

```txt
sixth:
   S*BGS
   S*EUGT
   S*EUFGT
   S*EUBGS
```

Reason for wanting to override `S*EUBGS` to output "six-" are the similar to
ones described in entry for `"THRAO*E": "three-"`: I want some single-stroke
outlines for fraction numbers that include a dash.

In this case, I do like the `S*EUBGS` outline for "sixth", so it's unfortunate
that it needs to get overridden. I think my next likely used outline for this
would be `S*BGS`, but just in case, I have also added a new `S*EUBGTS` outline
for "sixth" since that's what my brain seems to be reaching for when wanting to
output "sixth".


### `"S*PLT": "{:STITCH:S}"`

Plover currently assigns the following outlines to "symptom":

```txt
symptom:
   S*PLT
   ST*PL
   SEUPL/TOPL
   SEUPLT/OPL
   SEUFRP/OPL
   SEUFRP/TOPL
   SEUFRPT/OPL
```

In order to help with creation of a set of outlines for [stitching][], I would
like to use the `*PLT` suffix.

Although I do like the outline `S*PLT` for "symptom", I do also like the
alternative single-stroke outline, `ST*PL`, and am happy to build up
muscle-memory with that outline.

So, I would like to override `S*PLT` for `{:STITCH:S}`.

### `"SHA*EUFR": "Shaffer"`

Plover currently has the following outlines for "shaver":

```txt
shaver:
   SHAEUFR
   SHA*EUFR
   SHAEUF/*ER
   SHA*EUF/ER
```

Plover does not contain an entry for the proper noun surname "Shaffer". Given
that shaver uses `SHAEUFR` and its `*`-flagged equivalent, I have decided to
override the latter for the surname "Shaffer".

### `"SHAO*ED": "she had"`

Way of thinking similar to `"*UD": "you had"`. Plover currently has the
following outlines for "she'd":

```txt
she'd:
   SHAOED
   SHAO*ED
   SHAOED/AE
```

I would like a single-stroke brief for "she had", and the `*`-flagged `SHAO*ED`
feels like the most appropriate brief to override for that.

### `"SHAO*EL": "she will"`

Way of thinking similar to `"HAO*EL": "he will"`. Plover currently has four
outlines for "she'll"...

```txt
she'll:
   SHAOEL
   SHAO*EL
   SHE/AOEL
   SHAOEL/AE
```

...yet none for "she will". I wanted a single-stroke outline for the "she will"
phrase, so I decided to override `SHAO*EL` for this since it felt more
appropriate to leave `SHAOEL` for the "she'll" contraction.

### `"SHAO*U": "shew"`

Plover currently uses the following outline for the proper noun surname "Zhou":

```txt
Zhou:
   SHAO*U
```

This is fine, but it's the outline that I would like to use for "shew".

So, I have decided to add in an alternate outline to keep "Zhou",
`SHAO*U/SHAO*U`, and override `SHAO*U` for "shew".

### `"SHES": "she's"`

Plover currently uses the following outline for "she is":

```txt
she is:
   SHES
```

For this phrase, I have decided to add a new entry, `SH*ES`, for "she is", with
the `*`-flag indicating absence of the "i", and hence override `SHES` for
"she's" for its literal pronunciation, given the existing `SHE` outline for
"she".

### `"SHOU": "should you"`

Plover uses the following outlines for "somehow":

```txt
somehow:
   SHOU
   SPHOU
   SPH/HOU
   SOPL/HOU
```

I think I am most likely to use `SPHOU` for "somehow", and I would like to have
a one-stroke outline for the phrase "should you", which `SHOU` feels best for.
So, I have decided to override it.

### `"SKPHORPBG": "and morning"`

Plover has the following named entry for the phrase "morning and":

```txt
morning and:
   SKPHORPBG
```

Given steno order, this outline makes more sense to me as "and morning", so I
have decided to add an alternative `*`-flagged outline, `SKPHO*RPBG`, for
"morning and", and override `SKPHORPBG` for "and morning".

### `"SKPOEFR": "and over"`

Plover has the following named entry for the phrase "over and":

```txt
over and:
   SKPOEFR
```

Given steno order, this outline makes more sense to me as "and over", so I have
decided to add an alternative `*`-flagged outline, `SKPO*EFR`, for "over and",
and override `SKPOEFR` for "and over".

### `"SKPREFRPBS": "and reference"`

Plover has the following named entry for the phrase "reference and":

```txt
reference and:
   SKPREFRPBS
```

Given steno order, this outline makes more sense to me as "reference and", so I
have decided to add an alternative `*`-flagged outline, `SKPRE*FRPBS`, for
"reference and", and override `SKPREFRPBS` for "and reference".

### `"SKPUF": "and you've"`

Plover uses the following outline for the phrase "and you have":

```txt
and you have:
   SKPUF
```

However, the brief for "you've" is `UF`, which makes me prefer having `SKPUF`
for "and you've", and create a new brief for "and you have", `SKP*UF`, with the
`*`-flag standing in for the missing letters of "have". So, I have done just 
that.

### `"SKPUP": "and up"`

Plover has the following named entry for the phrase "up and":

```txt
up and:
   SKPUP
```

Given steno order, this outline makes more sense to me as "and up", so I
have decided to add an alternative `*`-flagged outline, `SKP*UP`, for
"up and", and override `SKPUP` for "and up".

### `"SKRAO*E": "scree"`

Plover has the following outlines for "psychiatry":

```txt
psychiatry:
   SKRAOE
   SKRO*EU
   SKRAO*E
   SKREUT/REU
   SAOEUBG/TREU
   SAOEU/KAOEU/TREU
   SAOEU/KAOEUT/REU
```

But, it does not have an outline for "scree", a "a mass of small loose stones
that form or cover a slope on a mountain". I think I would use "psychiatry" more
than "scree", so I would like to keep my preferred brief, `SKRAOE`, for it.
Therefore, `SKRAO*E` would be the next-best candidate for "scree", so I will
override that.

### `"SKWR*EL": "jell"`

There is currently no official Plover outline for [jell][]. My first thoughts
were to assign it `SKWREL`, but that is reserved for "gel", which I agree with.
Looking at the `*`-flagged version of that outline, it seems to be used for
`{well-^}`, which seems a bit odd to me. Looking up its outline set, we find:

```txt
{well-^}:
   W*EL
   SKWR*EL
```

For "{well-^}", I am infinitely more likely to use `W*EL` over `SKWR*EL`, so
I decided to override `SKWR*EL` for "jell".

### `"SR-PBTD": "haven't had"`

Plover uses the following outlines for "haven't":

```txt
haven't:
   SR-PB
   SR-PBT
   SWR-PBT
   SR-PBTD
```

The outline I mostly use for "haven't" is `SR-PBT`, and I would like an outline
for the phrase "haven't had", and `SR-PBTD` fits the bill for me. So, I have
decided to override it.

### `"SR*EU": "I have"` and `"SREU": "have I"`

Plover has the following outline for "I have":

```txt
I have:
   SREU
```

This outline reads more to me like "have I", than "I have", and given the
propensity to use `*`-flagging for two-word briefs where the ordering of the
words should be reversed, I would like to override `SREU` to be "have I".

This leaves needing to replicate a brief for "I have", which I would like to
have as `SR*EU`. Plover currently uses the following briefs for "have a":

```txt
have a:
   SRA
   SR*EU
   SRAEU
   SRA*EU
```

I can agree with the assignment of all of those outlines, aside from `SR*EU`,
which definitely reads more like "I have" to me, so I am happy to override this
it for "I have".

### `"SR*U": "you have"`

Plover has the following outlines for "have you":

```txt
have you:
   SRU
   SR*U
```

I think it would also be nice to have a mirroring "you have" outline, and so
similar to my `"ST*": "it is"` override, I have opted to override the
`*`-flagged outline to indicate a switching of word order for an existing brief.

### `"SREUPL": "vim"`

Plover uses the following outlines for "victim":

```txt
victim:
   SREUPL
   SREUBGT/EUPL
   SREUBG/TEUPL
```

In general, these would be fine, but `SREUPL` is the perfect (and a more
accurate) outline for "vim", a word I use far more frequently than "victim". So,
I have decided to override it, and instead assign the outline `SR*EUPL` to
"victim", with the `*`-flag standing in for the missing "ct" sound.

### `"SRUFR": "have you ever"`

It seems that Plover has forced a capital letter on its "have you ever" brief:

```txt
Have you ever:
   SRUFR
```

So, this override just changes the phrase to be lowercase.

### `"ST*": "it is"`

Plover provides an outline for "is it" (`ST`), but not one for the opposite,
"it is", which I have been using often. My first thought was to use the
`*`-flagged version of the outline, but it is currently used for:

```txt
St.{-|}:
   S*T
   ST*
```

I do not think I would use `St.` that often, and certainly not more than
"it is". Out of the two outlines, `S*T` feels more natural for "St.", and I do
not think it requires two outlines, so I overrode `ST*` for "it is" to mirror
`ST` for "is it".

### `"STAR/TPEURB": "starfish"`

Plover does not currently have an entry for "starfish", so this outline is just
overriding Plover behaviour to nudge these two words together, rather than
replace an already existing entry, as I don't think the phrase "star fish" would
come up very often, if at all, for me.

### `"STH-RBGT": "is this correct"`

Plover currently has an outline for "is this correct?", with a trailing question
mark:

```txt
is this correct{?}:
   STH-RBGT
```

However, due to the nature of Q&A and it's addition of ending punctuation at the
end of sentences when a speaker switch occurs, the ending question mark gets in
the way. So, I've seen fit to override it to remove the question mark.

Removing the question mark also improves better brief chaining where the
sentence does not end in "correct", like "is this correct or not?"

### `"STHARBGT": "is that correct"`

Plover currently has an outline for "is that correct?", with a trailing question
mark:

```txt
is that correct{?}:
   STHARBGT
```

However, due to the nature of Q&A and it's addition of ending punctuation at the
end of sentences when a speaker switch occurs, the ending question mark gets in
the way. So, I've seen fit to override it to remove the question mark.

Removing the question mark also improves better brief chaining where the
sentence does not end in "correct", like "is that correct or not?"

### `"STKAOEFD": "deceased"`

Plover currently uses the following outlines for "deceased":

```txt
deceased:
   TKE/SAOEFD
   TKE/SAOES/-D
```

I would like to have a single-stroke outline for "deceased" to complement my
other override brief for "decease", `STKAOES`. `STKAOEFD` makes the most sense
to me, but Plover currently uses that outline for "deceived"

```txt
deceived:
   STKAOEFD
   STKAO*EFD
   TKAOE/SAOEFD
```

Given that "deceived" uses both `STKAOEFD` and the `*`-flagged variant, I think
one of them can be re-assigned. Since "deceived" has a harder "v" sound, I am
more inclined to keep the `*`-flagged `STKAO*EFD` outline assigned to it, and
override `STKAOEFD` to "deceased", which is what I have done.


### `"STKAOES": "decease"`

Plover currently uses 14(!) outlines for "disease":

```txt
disease:
   TK-Z
   STKEZ
   STAOES
   STKAOE
   STKAOES
   STKAOED
   STKAOEZ
   STKAO*ES
   STKPAOES
   STKAO/ES
   TKEU/SAO*EZ
   TKEU/SAOEZ
   TKEUS/AOES
   TKEUZ/AOEZ
```

Yet, only one two-stroke outline for "decease":

```txt
decease:
   TKE/SAOES
```

I think "decease" can be given a single-stroke outline, and the one that makes
the most sense to me is `STKAOES`, given the softer "s" sound at the end of the
word, versus the hard "s"/"z" sound at the end of "disease". So, I have decided
to override `STKAOES` for "decease".

### `"STKO": "and do"`

Plover uses the following outline for the phrase "do is":

```txt
do is:
   STKO
```

The phrase "do is" reads a bit awkward to me, and I would rather use this
outline for and new phrase, "and do", which I think I would use more often.

So, I have decided to override `STKO` for "and do", but also keep "do is" by
assigning it an alternate phrase of `STKO*`.

### `"STKPWEPB": "and again"`

Plover uses the following outlines for "again":

```txt
again:
   STPWEB
   TKPWEPB
   SKPWEPB
   STPWEPB
   STKPWEB
   STKPWEP
   STKWEPB
   STKPWEPB
   STKPWHEPB
   STKPW*EPB
```

The outline I use the most for "again" is `TKPWEPB`. I wouldn't think of using
`STKPWEPB` for "again", but think of it more as "and again".

Even though Plover already has an named outline for the phrase "and again":

```txt
and again:
   STKPWEPBG
```

I think that `STKPWEPB` fits better than `STKPWEPBG`, so I have decided to
override `STKPWEPB` for "and again".

### `"STO*EUD": "studio"`

Plover currently uses the following outline for capitalised "studio":

```txt
studio:
   STAOUD/KWROE
   STAO*UD/KWROE
   STAOUD/SKWROE
   STAOUD/TKWROE
Studio:
   STO*EUD
```

It seems strange to me to allocate the one-stroke outline to a proper noun
version of a word, since I would wager the general lowercase-d version would
come up more often.

So, I have decided to override `STO*EUD` to be lowercase studio, but add a
specific alternative outline for "Studio": `STAOUD/KWRO*E` (though I wager I'd
more likely use `KPA/STO*EUD` or `STO*EUD/KPAD` for "Studio").

### `"STPH": "is in"`

Plover currently uses the following 11(!) outlines for {?}:

```txt
{?}:
   H*F
   H-F
   STP
   STPH
   H-FPB
   KW-PL
   STKPH
   STPH*
   STPHA
   STH/PHOEUFP
   TP-PL/STPH-RB
```

For a question mark, I tend to use `H-F`, which leaves the rest open to
overriding. I want to have a brief for "is in", and to me, either `STPH` or
`STPH*` seem like good candidates.

For now, I think that the non-`*`-flagged version seems like the most natural
fit, so I have decided to override `STPH` for "is in".

### `"T-T": "it the"`

Although I don't envisage I would use "it the" as a phrase very often, it seems
strange to me that `T-T` is currently used for "the". Plover currently assigns
it five outlines:

```txt
the:
   -T
   -LT
   -TD
   -TS
   T-T
```
###  `"T*EFD": "testified"`, `"TEF/-D": "tested"`, and `"TEFD": "tested"`

Plover uses the following outlines for "test":

```txt
test:
   TEF
   T*ES
   TEFT
   TEFLT
```

Given that `TEF` is assigned to "test", you may think that `TEFD` would be the
outline used for "tested", but instead Plover has the following outlines for
"tested":

```txt
tested:
   T*EFD
   TEFTD
```

Okay, so what _is_ Plover's output for `TEFD`? It's "testified":

```txt
testified:
   TEFD
   TEFRD
   TEF/-D
   TEFT/TPAOEUD
```

And, working backwards, what is the Plover outline for "testify"?

```txt
testify:
   T*EF
   T*ES/TPEU
   TES/TEU/TPEU
```

It would seem to me that the outlines for the past tense of both of these words
are the wrong way around, so I am happy to override them in a way that makes
more sense to me: given `TEF` outputs "test", `TEFD` should be "tested", and
given `T*EF` outputs "testified", `T*EFD` should be "testified".


### `"T*ET": "at the time"`

Platinum Steno uses `TET` as a brief for "at the time", but Plover already
uses `TET` for "[Tet][]":

```txt
Tet:
   TET
```

I figured perhaps `T*ET` might be a good alternative, but Plover already uses
that, too, for "death":

```txt
death:
   TK*T
   T*ET
   TKEGT
   TK*ET
```

However, for "death", I think I am most likely to use the `TK*ET` outline, and
I would really like that one-stroke brief for "at the time", and `T*ET` seems
like the current best candidate, so I have decided to override it.

### `"T*EUF": "tiff"`

Plover uses the following strokes for suffix "{^tive}":

```txt
{^tive}:
   TEUF
   T*EUF
```

Plover does not have an outline for [tiff][], and I think there should be one.
Out of the two outlines for `{^tive}`, I think I would use `TEUF` the most, and
so would like to use `T*EUF` for "tiff", and so have overridden it.

### `"T*L": "it will"`

In the same vein as "he'll", Plover has three outlines for "it'll"...

```txt
it'll:
   T*L
   T-L
   EUT/AOEL
```

...yet none for "it will". I wanted a single-stroke outline for "it will", so
I decided to override the `*`-flagged outline since `T-L` feels like a better
match for the "it'll" contraction, and I would wager I would use it more often
for "it'll" than I would `T*L`.

Given that `T-T` uses initial `T-` for "it" and final `-T` for "the", it makes
more sense to me to assign it to "it the".

### `"TH*L": "this will"`

In the same vein as "he will" and "it will", Plover assigns three outlines to
"this'll"...

```txt
this'll:
   TH*L
   TH-L
   TH-L/AE
```

...yet none to "this will" Similar to "it will", I felt that overriding the
`*`-flagged version for "this will" was more appropriate, leaving the `TH-L`
outline for the "this'll" contraction.

### `"THA*F": "that have"`

Plover currently assigns the following outlines to "that've":

```txt
that've:
   THAF
   THA*F
   THA/AO*EF
```

I would like a phrase brief for "that have", and so `THA*F` seemed like the most
logical choice to override, mirroring other similar overrides I've done.

### `"THA*L": "that will"`

Plover currently assigns 6(!) outlines to "that'll":

```txt
that'll:
   THAL
   THA*L
   THALT
   THAO*EL
   THAL/AE
   THA/AOEL
```

I would like a phrase brief for "that will", and so `THA*L` seemed like the most
logical choice to override, mirroring the other "x will" overrides I've done.

### `"THA*T": "at the time"`

Platinum Steno uses `TAT` as a brief for "at that time", but Plover already
uses `TAT` for "[tat][]":

```txt
tat:
   TAT
```

I figured perhaps `THA*T` might be a good alternative, but Plover already uses
that, too, for "that the":

```txt
that the:
   THAT
   THA*T
   THA*ET
```

### `"THAOUS": "enthuse"`

Plover uses the following outlines for "enthusiasm":

```txt
enthusiasm:
   THUFPL
   THAOUS/AFPL
   THAOUS/KWRAFPL
   SPWAOUZ/KWRAFPL
   SPWHAOUZ/KWRAFPL
   EPB/THUS/KWRAFPL
   SPWAOUZ/KWRAS/P-L
   EPB/THAOUZ/KWRAFPL
```

Of note is the `THUFPL` outline, which I augmented with other outlines to more
emphasise the "oo" sound of "enthusiasm": `THAOUFPL` and `THAOFPL`. Given this
augmentation, which makes sense to me, I wanted a similar sounding brief, then,
for "enthuse".

Plover has the following entries for "enthuse":

```txt
enthuse:
   SPWAOUZ
   SPWHAOUZ
   EPB/THAOUS
   EPB/THAOUZ
```

The top two briefs seem quite detached from even Plover's `THUFPL` brief for
"enthusiasm", so I want to bring these two words "closer together". The brief
I want to use is `THAOUS`, but Plover currently uses it for phrase "use it":

```txt
use it:
   TAOUS
   THAOUS
```

Out of these two briefs, I think I would be more likely to use `TAOUS` for "use
it", which leaves `THAOUS` free for overriding, which is what I have done.

However, for "that the", I think I am most likely to use the `THAT` outline, and
I would really like that one-stroke brief for "at that time", and `THA*T` seems
like the current best candidate, so I have decided to override it.

### `"THR*S": "there is"`

Plover currently has 8(!) outlines reserved for "there's":

```txt
there's:
   THR*S
   THR-S
   THR-GS
   THR-SZ
   TPHR-S
   THRAOES
   THR/AES
   THR-S/AE
```

...and yet just one for "there is", which feels a bit unintuitive to me:

```txt
there is:
   THR-LGS
```

Therefore, I've chosen to override `THR*S` for "there is", with the `*`
indicating that there are missing letters where the gap is being filled.

### `"THR*": "it will"`

Plover has three outlines for "there":

```txt
there:
   THR
   TH-R
   THR*
```

For "there", I am most likely to use only `THR`, so I think being able to stroke
"it will" on mostly the left half of the keyboard with `THR*` will be handy.

### `"THR*L": "there will"`

Plover has the following outlines for "there'll":

```txt
there'll:
   THR*L
   THR-L
   THRAO*EL
   THR/AOEL
   THR-L/AE
```

`THR-L` is the outline I use most for "there'll". I would like to have a
one-stroke outline for "there will" as well, and the `*`-flagged `THR*L` outline
feels like the best candidate to me, so I will override that for "there will".

### `"THRAO*E": "{three-^}"`

Plover currently has an entry for capitalised "Three":

```txt
Three:
   THRAO*E
```

I am assuming this is because of the propensity of "Three" to appear title-ised
in book and movie names, but this rule of title-ised number entries is not
consistent across all numbers.

Given that I would like to have a set of `*`-flagged number briefs for fractions
that output in the form of "n-" (a number word [n] followed by a dash), I will
override `THRAO*E` for `three-` since I think that will come up more than the
need to use three like a proper noun, and even then I can just `KPA`-capitalise
it.

### `"TKEF/STAEUTD": "devastated"`

Plover currently uses the following outlines for "devastate":

```txt
devastate:
   TKWAFT
   TKE/STAEUT
   TKEF/STAEUT
   TKEF/STAEUTD
   TK*EF/STAEUT
   TKWAFT/TAEUT
```

I can understand `TKEF/STAEUT`, but also using `TKEF/STAEUTD` as well would seem
to take away a good outline for "devastated", so I have decided to override it.

### `"TKOPBLT": "do not"`

Plover does have an outline entry for "do not", which I think is fine:

```txt
do not:
   TKPHOT
```

However, many of the "x not" entries use `-PBLT` in them:

```txt
are not: R-PBLT
is not: S-PBLT
did not: TK-PBLT
were not: WR-PBLT
will not: HR-PBLT
have not: SR-PBLT
had not: H-PBLT
cannot: KA-PBLT
```

I figure that building up muscle memory here will make me want to use `-PBLT`
for "do not" as well, and so I would like that option.

Plover assigns `TKOPBLT` to "doesn't", as well as four other outlines:

```txt
doesn't:
   TKOPBT
   TKUPBT
   TKOPBLT
   TKOPBTD
   TKPOPBT
```

I figure that out of this set, I'm more likely to use `TKOPBT` for "doesn't",
so I can override `TKOPBLT` for "do not".

### `"TKPWO*ET": "go to"`

In Plover, "goat" is assigned both of the following outlines:

```txt
goat:
   TKPWOET
   TKPWO*ET
```

I think I would only ever use `TKPWOET` for "goat", and I think it would be
nice to have a single-stroke outline for "go to", so I have decided to override
`TKPWO*ET`.

### `"TKU/PWAOEU": "did you buy"`

A similar issue to `"KU/WAEUT": "can you wait"`: stroking `TKU/PWAOEU` when you
intend to use `TKU` for "did you" and then `PWAOEU` for "buy", forces output to
the city "Dubai". Plover assigns three outlines to "Dubai":

```txt
Dubai:
   TKU/PWAOEU
   TKAOUB/AOEU
   TKU/PWAO*EU
```

Out of these three, I would most likely use `TKU/PWAO*EU` for "Dubai" since
`*`-flagging is used often for [proper nouns][], so I overrode the flag-less
version for the "did you buy" phrase I would expect.

### `"TK*UF": "did you have"`

Plover uses the following outlines for "dove":

```txt
dove:
   TKOF
   TKO*F
   TK*UF
   TKOEF
   TKO*EF
```

I would like a single-stroke outline for "did you have", and `TK*UF` fits the
bill in my mind for that. Since "dove" has five outlines, I figure it will not
miss one, so I have decided to override `TK*UF` for "did you have".

### `"TKO*RPB": "Doner"`

Plover uses the following outline for "Doner":

```txt
Doner:
   TKOEPB/*ER
```

It would be nice to have a one-stroke outline for it. Something like `TKO*RPB`
would be nice, but it's already being used by "donor":

```txt
donor:
   TKORPB
   TKO*RPB
   TKOERPB
   TKOE/TPHOR
   TKOEPB/O*R
```

Given that "donor" already has so many entries, and that I would most likely use
`TKORPB` for "donor", I have decided to override `TKO*RPB` for "Doner".

### `"TO*T": "tot"`

Plover has the following outlines for "to the":

```txt
to the:
   TOT
   TO*T
```

Plover does not have an entry for the word "[tot][]", and it would be great to
have one. Out of the two outlines above, I think I would be most likely to use
`TOT` for "to the", which leaves overriding `TO*T` for "tot".

### `"TO*UR": "to our"`

Plover currently uses the following outlines for "tower":

```txt
tower:
   TOUR
   TO*UR
```

I don't think both the `*`-flagged and non-flagged versions need to be used for
this word, and I would like to have a single-stroke outline for the phrase
"to our" (kind of as a "squeezed" brief), so I have decided to override the
`*`-flagged version for this as it feels like the most natural choice.

### `"TP-PLT": "{&f-}"`

Plover has 32(!!) outlines assigned to "{.}":

```txt
{.}:
   *FPLT
   -FP
   -FP/-RB
   -FP/PHOEUFP
   -FP/PHR-RB
   -FPL
   -FPLT
   -FPLT/-FPLT
   -FPLTD
   -FPT
   -FRLT
   -FRP
   -P
   -PL
   -PLT
   -PT
   P-FP
   P-FP/PHOEUFP
   P-PL
   PR*RD
   T-PL
   TH-PL
   TP-F
   TP-FPL
   TP-L
   TP-LT
   TP-P
   TP-PL
   TP-PL/PHOEUFP
   TP-PLT
   TPH-PL
   TPHR-FRPBLT
```

At this point, I'm not sure which of these I would end up using the most, but
I figure that if any of them feel like a candidate to be overridden, then the
impact of doing so is negligible.

In this case, when fingerspelling (or "stitching") out a verbally spelled word,
like "J-o-n-e-s", where every letter aside from the final one needs to have a
dash attached after it, Plover provides briefs for _most_ letters for this
situation, like:

```txt
{&b-}:
   PW-PLT

{&c-}:
   KR-PLT
```

Most of the Plover-provided briefs use the letter outline, then a `-PLT`
ending. _However_, there is no outline given for "{&f-}", and the outline that
seems most appropriate for me, `TP-PLT`, is taken by "{.}". So, given the number
of outlines that already service "{.}", I have decided to override `TP-PLT` for
"f-".

There were other outlines in this family that Plover seemed to miss(?), or which
did not use the `-PLT` ending (I would like to standardise this stem), which I
have added in as briefs in my own dictionary:

```txt
"AEUPLT": "{&a-}",
"AO*EUPLT": "{&i-}",
"AOEPLT": "{&e-}",
"AOUPLT": "{&u-}",
"STKPW-PLT": "{&z-}",
```

### `"TP*EUF": "{five-^}"`

Plover currently has the following named outlines for "five":

```txt
five:
   TPEUF
   TP*EUF
   TPAOEUF
```

Reason for wanting to override `TP*EUF` to output "five-" are similar to
ones described in entry for `"THRAO*E": "three-"`: I want some single-stroke
outlines for fraction numbers that include a dash.

### `"TPAOEF": "fief"`

Plover currently has the following outlines for "fever":

```txt
fever:
   TPAOEF
   TPAOEFR
   TPAO*EFR
   TPAO*EF/ER
```

These are all generally good, but Plover doesn't have an outline for "fief",
and `TPAOEF` fits the bill in my mind. Given that I would likely use `TPAOEFR`
for "fever", I think it's okay to override `TPAOEF` for "fief".

### `"TPEUBG": "if I can"`

Plover currently has the following outlines for proper noun "Fick":

```txt
Fick:
   TPEUBG
   TP*EUBG
```

I would like a single-stroke brief for "if I can" (Plover currently has a
two-stroke brief: `TP/EUBG`), and `TPEUBG` seems like the best candidate since I
think I would use it more than "Fick", and there is already a general steno
convention to `*`-flag proper nouns.

### `"TPHA*F": "nav"`

Plover currently uses the following outlines for "1/2":

```txt
1/2:
   HA*F
   TPHA*F
```

`HA*F` makes sense to me, and is the outline I use. `TPHA*F` does not make sense
to me in this context, and I would like to have an outline that maps to "nav",
so I have decided to override `TPHA*F` for it.

### `"TPHRA*BG": "flack"`

Plover currently uses the outline `TPHRA*BG` for "FLAC", for, I'm assuming, the
abbreviation of "[Free Lossless Audio Codec][]". This would be fine if Plover
also had an entry for the word "[flack][]", which it does not (it does have
`TPHRABG` for "[flak][]", though).

I think I am more likely to use (and want) an outline for "flack" over "FLAC",
so I have decided to override `TPHRA*BG` for "flack", and give "FLAC" its own
new kind-of similar outline, `TPHRA*EUBG`.

### `"TPO*UR": "{four-^}"`

Plover currently has an entry for capitalised "Four":

```txt
Four:
   TPO*UR
```

### `"TPORB": "for sure"`

Plover currently has the following outlines for the word "for":

```txt
for:
   P-R
   TPOR
   TP-R
   230R
   TPO*R
   TPORB
```

I would like to have a one-stroke phrase for "for sure", and `TPORB` looks like
it fits the bill best. Since I am most likely to use `TPOR` or `TP-R` for "for",
I'm happy to override `TPORB` for this.

Reason for wanting to override this to output "four-" are the same as described
in entry for `"THRAO*E": "three-"`.

### `"TPUD": "if you'd"`

In the same vein as the `"*UD": "you had"` override. Plover currently has the
following entry for "if you had":

```txt
if you had:
   TPUD
```

Given that `UD` is the outline I would most likely use for "you'd", I'd prefer
the `TPUD` brief to output "if you'd", and add a alt-brief to keep "if you had"
with the outline `"TP*UD": "if you had"`.

### `"TPUF": "if you've"`

Plover uses the following brief for the phrase "if you have":

```txt
if you have:
   TPUF
```

However, it uses the `UF` brief for "you've":

```txt
you've:
   UF
   AOUF
   KWRO*UF
   KWRAO*UF
   UF/AE
   KWROU/AO*EF
```

And there does not seem to be a brief for "if you've", which can make things
a bit confusing if that's the phrase you want to stroke. Therefore, I have
decided to override `TPUF` for "if you've", and add a new phrase brief of
`TP*UF` for "if you have".

### `"UPBGS": "understanding"`

Plover currently uses the following outline for ["unction"][]:

```txt
unction:
   UPBGS
   *UPBGS
```

This makes sense, but I would like to have a one-stroke brief for
"understanding" that uses Plover's `UPBS` brief, and `UPBGS` fits the bill.
Since I would use "understanding" as a word significantly more than "unction",
and it is still left with an outline, I am comfortable overriding it.

### `"URL": "you recall"` and `"URLD": "you recalled"`

Plover uses the following outlines for "URL":

```txt
URL:
   URL
   *URL
```

Given that `-RL` is the outline for "recall", it would be nice to have a
"you recall" phrase brief. `URL` fits this bill for me, and I'm happy to have
the `*`-flagged `*URL` indicate an abbreviation.

Also, Plover uses the following outlines for "ultrasound":

```txt
ultrasound:
   URLD
   UL/TRA/SOUPD
   UL/TRA/SOUPBD
```

Given the change above to use `URL` for "you recall", I would like `URLD` to
be used for "you recalled", but also keep a one-stroke brief for "ultrasound".

So, I have decided to assign `*URLD` to ultrasound (since it it not currently
used), with the `*`-flag indicating a word squeeze, and override `URLD` for
"you recall".

### `"WAEPBLT": "was not"`

Plover uses the following outlines for "eventually":

```txt
eventually:
   *ERBL
   *EFPBL
   WAEPBLT
   AOEPT/WAEL
   AEPBT/WAEL
   SREPBT/WAEL
   AOEPBT/WAEL
   AOEPBTS/WAEL
   AOEPBT/SRAEL
   AOEPBLT/WAEL
```

Out of the single-stroke entries, I think I am least likely to use `WAEPBLT`.
I would also like a single-stroke brief for the phrase "was not" that
complements the `WAEPBT` brief for "wasn't", and `WAEPBLT` fits the bill for
that, so I have decided to override it.

### `"WAO*EL": "we will"`

Similar rationale to `"HAO*EL": "he will"` and `"T*L": "it will"`. Plover
assigns five outlines to "we'll"...

```txt
we'll:
   WAOEL
   WAO*EL
   WAOEPL
   WE/AOEL
   WAOEL/AE
```

...yet none to "we will", so I decided to override the `*`-flagged version for
"we will" and keep `WAOEL` for the "we'll" contraction.

### `"WH-F": "when've"` and `"WH*F": "when have"`

Plover uses the following outlines for the phrases "when've" and "when have":

```txt
when've:
   WH*F
   WHEPB/AO*EF

when have:
   WH-F
```

Given that I would like to standardise phrasing strokes where contractions are
possible to use `*`-flagged outlines for the non-contracted versions, I have
decided to override these outlines by switching them around.

### `"WEF": "we've"` and `"W*EF": "we have"`

Plover has the following outlines for "weave":

```txt
weave:
   WEF
   WAEF
   WAO*EF
```

This seems like a lot of outlines for what I think is a rarely used word, and I
think the `WEF` outline in particular could be put to better use as a brief for
the more common phrase "we've".

Following that, Plover uses the following outlines for "we've":

```txt
we've:
   W*EF
   WAOEF
   WRAOEF
   WE/AO*EF
   WAOEF/AE
```

Since `WEF` is now used for "we've", the `*`-flagged version of the outline
can be freed up for "we have", so I have decided to override that, too.

### `"WEFPBT": "we haven't"`

Plover has the following 7(!) outlines for "went":

```txt
went:
   WEBLT
   WEPBT
   WEBLTS
   WEFPBT
   WEPBLT
   WEPBTS
   WEUPBLTS
```

Out of all these briefs, I think the one I would likely use the most often for
"went" would be `WEPBT`. I would like to have an outline for the phrase "we
haven't", which connects the my other `"WEF": "we have"` override, and `WEFPBT`
is my favourite candidate, so it gets overridden.

### `"WER": "we're"`

Plover uses the following outline for "we are" and "we're":

```txt
we are:
   WER

we're:
   WAOER
   WAO*ER
   WAOERG
   WAOERB
   WAOER/AE
```

I understand the reasoning behind using the `WAOE` stem with "we're", but I
would rather have a set of outlines like:

- `"WER": "we're"`
- `"W*ER": "we are"`

Where the `*`-flag is "standing in" for the missing letters.

Therefore, I have added `"W*ER": "we are"` as an alternative outline, while
overriding `WER` for "we're".

### `"WEUL/HROE/TRAOE": "willow tree"`

Currently, Plover has the following outline:

```txt
WillowTree:
   WEUL/HROE/TRAOE
```

This, to me, looks like a proper noun for perhaps a company name. It
unfortunately also gets in the way of writing "willow tree". So, I've decided
to override it, and create a new `WEUL/HROE/TRAO*E` outline for "WillowTree"
that is `*`-flagged to indicate that it is a proper noun.

### `"WH-RP": "when were"`

I have to assume that the current Plover `"WH-RP": "When were"` with the
capitalised "When" is a typo, so I'm overriding it with the more flexible lower
case version.

### `"WHA*L": "what will"`

Plover currently has the following outlines for "what'll":

```txt
what'll:
   WHAL
   WHA*L
   WHA/AOEL
```

Yet, it does not have a single-stroke outline for "what will", so I have decided
to override the `*`-flagged `WHA*L` for it.

### `"WHO*F": "who have"`

Plover has three outlines for "who've", but none for "who have":

```txt
who've:
   WHOF
   WHO*F
   WHO/AO*EF
```

So, I have decided to override `WHO*F` for who have, with the `*`-flag to
indicate the shortening of "have".

### `"WHO*L": "who will"`

Plover has three outlines for "who'll", but none for "who will":

```txt
who'll:
   WHOL
   WHO*L
   WHO/AOEL
```

So, I've decided to override `WHO*L` for "who will", with the `*`-flag to
indicate the shortening of "will".

### `"WO*E": "would he"`

Plover has the following outlines for "woe":

```txt
woe:
   WOE
   WO*E
```

For "woe", I am most likely to just use `WOE`, and I would like a brief for
"would he", so `WO*E` seems like the most appropriate outline to override.

### `"WO*F": "would've"`

Plover currently uses the following outline for "wolf":

```txt
wolf:
   WOF
   WOFL
   WOL/-F
   WOL/*F
```

The outline I think I would use most for wolf would be `WOFL`, and I would like
to have a short brief for the contraction "would've", and `WOF` fits the bill.
So, I have decided to override `WOF` for "would've".

### `"WO*G": "would go"`

Plover has the following outlines for "working":

```txt
working:
   WOG
   WO*G
   WORBG/-G
   PWORBG/-G
```

For "working", I am most likely to just use `WOG`, and I would like a brief for
"would go", so `WO*G` seems like the most appropriate outline to override.

### `"WOUF": "would you've"`, `"WOUFB": "would you've been"`, and `"WO*UF": "would you have"`

Plover currently uses the following outline for the phrases "would have" and
"would have been":

```txt
would have:
   WOUF

would have been:
   WOUFB
```

Given that the brief for "would" is `WO`, the inclusion of the `U` in these
briefs do not make sense to me, and are preventing the potential inclusion of
the word "you" in those phrases for "would you've" and "would you've been",
both of which do not currently have named entries in Plover's dictionary.

Therefore, I have decided to add some alternative entries for these two phrases:

- `"WO*F": "would have"`
- `"WO*FB": "would have been"`

and override `WOUF` for "would you've", and `WOUFB` for "would you've been".

### `"WRAOEUGT": "writing"`

Plover currently uses the following outlines for the proper noun "Wright":

```txt
Wright:
   WRA*ET
   WRAOEUGT
   WRAO*EUT
```

These are all generally fine, but I think I would mostly use `WRAO*EUT` for
"Wright", and I want a one-stroke brief for the word "writing" that uses an
inverted "g", to match the `WRAOEUT` outline for "write", and `WRAOEUGT` fits
the bill. Therefore, I have decided to override `WRAOEUGT` for "writing".

### `"WRU": "were you"`

Plover has the following outlines for "you were":

```txt
you were:
   URP
   WRU
```

`URP` makes sense to me, but to have the "reversal" outline `WRU` _also_ resolve
to "you were" when there is not an official outline for the phrase "were you"
does not make sense to me, so I have decided to override `WRU` for "were you".

[@paulfioravanti]: https://www.twitter.com/paulfioravanti
[`asdf`]: https://github.com/asdf-vm/asdf
[cremophor]: https://www.sciencedirect.com/topics/pharmacology-toxicology-and-pharmaceutical-science/cremophor
[fief]: https://dictionary.cambridge.org/dictionary/english/fiefdom?q=fief
[flack]: https://dictionary.cambridge.org/dictionary/english/flack
[flak]: https://dictionary.cambridge.org/dictionary/english/flak
[Free Lossless Audio Codec]: https://xiph.org/flac/
[jell]: https://dictionary.cambridge.org/dictionary/english/jell
[mane]: https://dictionary.cambridge.org/dictionary/english/mane
[openstenoproject/plover#1407]: https://github.com/openstenoproject/plover/issues/1407
[Plover Stitching]: https://github.com/morinted/plover_stitching
[proper nouns]: https://en.wikipedia.org/wiki/Proper_and_common_nouns
[pro re nata]: https://en.wikipedia.org/wiki/Pro_re_nata
[shew]: https://www.collinsdictionary.com/dictionary/english/shew
[steno_dictionaries issues]: https://github.com/paulfioravanti/steno_dictionaries/issues
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
[tat]: https://dictionary.cambridge.org/dictionary/english/tat
[Tet]: https://www.merriam-webster.com/dictionary/Tet
[tiff]: https://dictionary.cambridge.org/dictionary/english/tiff
[tot]: https://dictionary.cambridge.org/dictionary/english/tot
[Uber]: https://www.uber.com/
[unction]: https://dictionary.cambridge.org/dictionary/english/unction
[Yack]: https://dictionary.cambridge.org/dictionary/english/yack
[Yawl]: https://www.collinsdictionary.com/us/dictionary/english/yawl
