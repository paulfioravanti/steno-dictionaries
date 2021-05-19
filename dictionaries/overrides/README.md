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

If you see any outlines here that you think will get me in trouble, or you are
just baffled by (I am a total amateur at this...), by all means please let me
know, either by [opening an issue][steno_dictionaries issues], or
[tweeting at me][@paulfioravanti].

## Outline Overrides

<!-- vim-markdown-toc GFM -->

- [`"-T/HROEUPB": "the loin"`](#-throeupb-the-loin)
- [`"A*FPLT": "{&A.}"`](#afplt-a)
- [`"AO*URB": "you shall"`](#aourb-you-shall)
- [`"AO*EPLT": "{&e-}"`](#aoeplt-e-)
- [`"H*ES": "Hess"` and `"HES": "he is"`](#hes-hess-and-hes-he-is)
- [`"HAO*EL": "he will"`](#haoel-he-will)
- [`"HAOEF": "he have"`](#haoef-he-have)
- [`"H*ET/*ER": "Heather"`](#heter-heather)
- [`"K-G": "can go"`](#k-g-can-go)
- [`"KAEUT/KAEUT": "Cate"`](#kaeutkaeut-cate)
- [`"KOU": "could you"`](#kou-could-you)
- [`"KU/WAEUT": "can you wait"`](#kuwaeut-can-you-wait)
- [`"KWRA*BG": "yack"`](#kwrabg-yack)
- [`"O*UFT": "outfit"`](#ouft-outfit)
- [`"PAUZ": "paws"`](#pauz-paws)
- [`"PEPB/TPH*EU": "Penny"`](#pepbtpheu-penny)
- [`"PHA*EPB": "mane"`](#phaepb-mane)
- [`"SHAO*EL": "she will"`](#shaoel-she-will)
- [`"SHAO*U": "should you"`](#shaou-should-you)
- [`"SKWR*EL": "jell"`](#skwrel-jell)
- [`"SR*EU": "have I"`](#sreu-have-i)
- [`"SR*U": "you have"`](#sru-you-have)
- [`"ST*": "it is"`](#st-it-is)
- [`"STPH*": "is in"`](#stph-is-in)
- [`"STAR/TPEURB": "starfish"`](#startpeurb-starfish)
- [`"T*L": "it will"`](#tl-it-will)
- [`"T-T": "it the"`](#t-t-it-the)
- [`"TH*L": "this will"`](#thl-this-will)
- [`"THA*L": "that will"`](#thal-that-will)
- [`"THR*": "it will"`](#thr-it-will)
- [`"THR-S": "there is"`](#thr-s-there-is)
- [`"T*EUF": "tiff"`](#teuf-tiff)
- [`"TKOPBLT": "do not"`](#tkopblt-do-not)
- [`"TKPWO*ET": "go to"`](#tkpwoet-go-to)
- [`"TKU/PWAOEU": "did you buy"`](#tkupwaoeu-did-you-buy)
- [`"TO*T": "tot"`](#tot-tot)
- [`"TP-PLT": "{&f-}"`](#tp-plt-f-)
- [`"TPEUBG": "if I can"`](#tpeubg-if-i-can)
- [`"TPHRA*BG": "flack"`](#tphrabg-flack)
- [`"W*ERB": "we shall"`](#werb-we-shall)
- [`"WAO*EL": "we will"`](#waoel-we-will)
- [`"WEUL/HROE/TRAOE": "willow tree"`](#weulhroetraoe-willow-tree)
- [`"WH-RP": "when were"`](#wh-rp-when-were)
- [`"WHO*L": "who will"`](#whol-who-will)
- [`"WEF": "we have"`](#wef-we-have)
- [`"WEFPBT": "we haven't"`](#wefpbt-we-havent)
- [`"WO*E": "would he"`](#woe-would-he)
- [`"WO*G": "would go"`](#wog-would-go)
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

### `"AO*URB": "you shall"`

Plover's entry for `AO*URB` is the company name "[Uber][]".

To me "Uber" sounds more like "Oober" rather than "Yuuber", so I ended up
assigning the unused `AO*RB` outline to "Uber", leaving `AO*URB` free for what I
feel is a more useful phrase, "you shall".

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

### `"H*ES": "Hess"` and `"HES": "he is"`

I wanted to have an outline for "he is" that mirrored the Plover outline for
"she is":

```txt
she is:
   SHES
```

Plover has no default outline for "he is". The current entry for what I consider
to be the mirroring entry, `HES`, is assigned to the proper noun "Hess", which
I do not think I would use very often.

Therefore, I decided to override `HES` to be "he is", and re-assign "Hess" to
`H*ES`, which fits nicely with the general `*`-flagging rule for proper nouns.

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

### `"SHAO*U": "should you"`

Plover's official entry for the `SHAO*U` outline is the surname "Zhou", which I
think I would use significantly less than the phrase "should you", which has no
official outline in Plover.

I ended up moving proper noun "Zhou" to a new entry, `"SHAO*U/SHAO*U": "Zhou"`,
using the common pattern of repeating an outline for the proper noun entry.

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

### `"SR*EU": "have I"`

Plover has the following outline for "I have":

```txt
I have:
   SREU
```

I think it would also be nice to have a mirroring "have I" outline using a
`*`-flag. Plover currently assigns the following outlines to the phrase
"have a":

```txt
have a:
   SRA
   SR*EU
   SRAEU
   SRA*EU
```

I can agree with the assignment of all of those outlines, aside from `SR*EU`,
which definitely reads more like "have I" to me, so I have decided to override
it for "have I".

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

### `"STPH*": "is in"`

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
`STPH*` seem like good candidates. I think for now I will use `STPH*`, but will
consider using the un-`*`-flagged `STPH` if I find that to be more of a natural
outline.

### `"STAR/TPEURB": "starfish"`

Plover does not currently have an entry for "starfish", so this outline is just
overriding Plover behaviour to nudge these two words together, rather than
replace an already existing entry, as I don't think the phrase "star fish" would
come up very often, if at all, for me.

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

### `"THR-S": "there is"`

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

Therefore, I've chosen to override `THR-S` for "there is", since `THR*S` feels
more like it would be used for a contracted "there's" sound.

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

### `"TPHRA*BG": "flack"`

Plover currently uses the outline `TPHRA*BG` for "FLAC", for, I'm assuming, the
abbreviation of "[Free Lossless Audio Codec][]". This would be fine if Plover
also had an entry for the word "[flack][]", which it does not (it does have
`TPHRABG` for "[flak][]", though).

I think I am more likely to use (and want) an outline for "flack" over "FLAC",
so I have decided to override `TPHRA*BG` for "flack", and give "FLAC" its own
new kind-of similar outline, `TPHRA*EUBG`.

### `"W*ERB": "we shall"`

Plover assigns three outlines to "Welsh":

```txt
Welsh:
   WERB
   W*ERB
   WEL/*RB
```

I felt like I wanted to override one of them for the phrase "we shall",
something I am wagering I will use more often than "Welsh". I initially
considered overriding `WERB`, since proper nouns tend to be `*`-flagged, but
instead chose `W*ERB` to instead flag that my override "go against the grain" of
Plover. I may consider swapping these in the future.

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

### `"WEF": "we have"`

Plover has the following outlines for "weave":

```txt
weave:
   WEF
   WAEF
   WAO*EF
```

This seems like a lot of outlines for what I think is a rarely used word, and I
think the `WEF` outline in particular could be put to better use as a brief for
the more common phrase "we have".

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


### `"WO*E": "would he"`

Plover has the following outlines for "woe":

```txt
woe:
   WOE
   WO*E
```

For "woe", I am most likely to just use `WOE`, and I would like a brief for
"would he", so `WO*E` seems like the most appropriate outline to override.

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
[flack]: https://dictionary.cambridge.org/dictionary/english/flack
[flak]: https://dictionary.cambridge.org/dictionary/english/flak
[Free Lossless Audio Codec]: https://xiph.org/flac/
[jell]: https://dictionary.cambridge.org/dictionary/english/jell
[mane]: https://dictionary.cambridge.org/dictionary/english/mane
[proper nouns]: https://en.wikipedia.org/wiki/Proper_and_common_nouns
[steno_dictionaries issues]: https://github.com/paulfioravanti/steno_dictionaries/issues
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
[tiff]: https://dictionary.cambridge.org/dictionary/english/tiff
[tot]: https://dictionary.cambridge.org/dictionary/english/tot
[Uber]: https://www.uber.com/
[Yack]: https://dictionary.cambridge.org/dictionary/english/yack
