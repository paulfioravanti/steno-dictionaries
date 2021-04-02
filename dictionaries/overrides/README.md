# Plover Overrides

This document is meant to explain or provide a justification for why I chose
to override an already-existing Plover outline with one of my own choosing in
the dictionaries under this directory.

Hopefully, it will help you make a decision on whether you would like to also
supplement your Plover dictionaries with any of the overrides I have, but mostly
future-me needs this to remember why I made the decisions to override any
outlines in the first place.

Ideally, every entry in `overrides.json` should have a corresponding
justification here, and I expect this to be a living document, with words added
and removed as Plover updates.

If you see any outlines here that you think will get me in trouble, or you are
just baffled by (I am a total amateur at this...), by all means please let me
know, either by opening an issue, or [tweeting at me][@paulfioravanti].

## Outline Overrides

<!-- vim-markdown-toc GFM -->

- [`"-T/HROEUPB": "the loin"`](#-throeupb-the-loin)
- [`"AO*URB": "you shall"`](#aourb-you-shall)
- [`"H*ES": "Hess"` and `"HES": "he is"`](#hes-hess-and-hes-he-is)
- [`"HAO*EL": "he will"`](#haoel-he-will)
- [`"K-G": "can go"`](#k-g-can-go)
- [`"KAEUT/KAEUT": "Cate"`](#kaeutkaeut-cate)
- [`"KU/WAEUT": "can you wait"`](#kuwaeut-can-you-wait)
- [`"KWRA*BG": "yack"`](#kwrabg-yack)
- [`"PHA*EPB": "mane"`](#phaepb-mane)
- [`"SHAO*EL": "she will"`](#shaoel-she-will)
- [`"SHAO*U": "should you"`](#shaou-should-you)
- [`"SR*EU": "have I"`](#sreu-have-i)
- [`"SR*U": "you have"`](#sru-you-have)
- [`"SKWR*EL": "jell"`](#skwrel-jell)
- [`"ST*": "it is"`](#st-it-is)
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
- [`"W*ERB": "we shall"`](#werb-we-shall)
- [`"WAO*EL": "we will"`](#waoel-we-will)
- [`"WEUL/HROE/TRAOE": "willow tree"`](#weulhroetraoe-willow-tree)
- [`"WH-RP": "when were"`](#wh-rp-when-were)
- [`"WHO*L": "who will"`](#whol-who-will)

<!-- vim-markdown-toc -->

---

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

### `"AO*URB": "you shall"`

Plover's entry for `AO*URB` is the company name "[Uber][]".

To me "Uber" sounds more like "Oober" rather than "Yuuber", so I ended up
assigning the unused `AO*RB` outline to "Uber", leaving `AO*URB` free for what I
feel is a more useful phrase, "you shall".

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

[@paulfioravanti]: https://www.twitter.com/paulfioravanti
[jell]: https://dictionary.cambridge.org/dictionary/english/jell
[mane]: https://dictionary.cambridge.org/dictionary/english/mane
[proper nouns]: https://en.wikipedia.org/wiki/Proper_and_common_nouns
[tiff]: https://dictionary.cambridge.org/dictionary/english/tiff
[tot]: https://dictionary.cambridge.org/dictionary/english/tot
[Uber]: https://www.uber.com/
[Yack]: https://dictionary.cambridge.org/dictionary/english/yack
