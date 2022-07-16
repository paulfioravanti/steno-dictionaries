# Chidori - A Japanese Romaji Dictionary

This [Python][] dictionary for [Plover][] intends to enable Japanese input using
a steno keyboard in a Plover-like way.

It translates steno chords into _[romaji][]_ strings, which can then be used as
input to a Japanese Input Method Editor (IME), like:

- [Google IME][]
- [Kotoeri][]
- [Microsoft Japanese IME][]

It is not necessarily built for speed like other Japanese steno theories, but
just as a convenience for those who know Plover, have a steno keyboard, and want
to input Japanese without having to switch keyboards. I hope that it can be at
least a bit faster than using QWERTY with an IME.

## Install

In order to use this dictionary, you will need to install the [Plover Python
Dictionary][] plugin. This should be available from the Plugins Manager in your
Plover dictionaries window.

Once you have installed Plover Python Dictionary, you should be able to add the
`japanese_romaji.py` file to your Plover dictionaries in the same way you would
a [JSON][] or [Rich Text Format][] (RTF) dictionary.

In my [dictionary stack][], the Japanese Romaji dictionary, as well as
[other companion dictionaries][] I created for it, are disabled by default. I
use a [Google IME-specific dictionary][] to toggle them on and off. Feel free to
use the dictionaries the way I do, or customise to your liking.

## Chords

The _romaji_ chords are intended to feel instinctive to those with a working
knowledge of Plover and Japanese (I currently only have myself as a basis for
these instincts, so I am happy to receive any feedback).

As a general rule, the romaji output uses [Hepburn romanization][], but
[_Kunrei-shiki_ romanization][] is used if the number of characters output is
less than Hepburn.

Uppercase chords are transformed into lowercase letters so they can be used as
inputs to IMEs.

## Vowels

As per [Plover fingerspelling conventions][], vowels `"A"`, `"O"`, `"E"`, `"U"`
are output as-is, and the `"EU"` chord is transformed into `"i"`.

Since Japanese does not have single-character long vowels (_[chōonpu][]_),
though, chording multiple vowels together just outputs the vowels in succession
(which also allows for [volitional form][] verb endings):

- `"AE": "ae"`
- `"AO": "ao"`
- `"AOEU": "aoi"`
- `"AOU": "aou"`
- `"AU": "au"`
- `"OE": "oe"`
- `"OEU": "oi"`
- `"OU": "ou"`

Any vowel sound can be stretched into a long vowel by using the [prolong vowel
chord][], `-DZ`:

- `"ADZ": "aa"`
- `"EDZ": "ee"`
- `"EUDZ": "ii"`
- `"ODZ": "oo"`
- `"UDZ": "uu"`

## Initial Chords

### Consonants

The initial consonant of a chord, stroked by the left half of the keyboard,
generally follows [Plover fingerspelling conventions][], and the specific
mappings for consonants that require more than one letter can be found
in the [`INITIAL_ROMAJI` constant][].

- `"KA": "ka"`
- `"TPHA": "na"`
- `"PWA": "ba"`
- etc...

Note that although `"TPHA"` outputs `"na"`, just stroking `"TPH"` will output
"nn" for ん, and is considered a "standalone" chord for mapping to _romaji_.
Standalone mappings can be found in the [`STANDALONE_OUTPUT` constant][].

### Exception Chords

Before checking for fingerspelling chords, there are a limited amount of
"exception" chords that are matched against when determining an initial chord:

- **Z-Chord**: Since `"STKPW"` can be a bit heavy to stroke for characters
  beginning with "z" (eg `"STKPWA": "za"`), the `S*` chord is also accepted (eg
  `"SA*": "za"`)
- **[We][] and [Wi][]** (ゐ/ヰ, ゑ/ヱ): These characters might be nearly
  obsolete, but since they are still seen around, we need a way to stroke them.
  Their mappings are `"WE": "wye"` and `"WEU": "wyi"` so that they can be used
  as input to IMEs
- **"Ti" compound character** (てぃ/ティ): Input "ti" into an IME and you get
  the output for "chi" (ち) as per [_Kunrei-shiki_ romanization][]. Since we
  already have the [Hepburn romanization][]-based chord `"KHEU"` for `"chi"`, I
  think it makes sense to have the `"TEU"` chord as a convenience chord to
  output `"texi"`

### Yōon

_[Yōon][]_ are two-character compounds typically ending with a small "ya", "yu",
or "yo" (eg "kya" [きゃ], "shu" [しゅ], "cho" [ちょ] etc).

The fingerspelling chord for "y" is `"KWR"`, which makes it impossible to
combine with some of the fingerspelling chords for characters that can be used
to form a _yōon_. So, taking some inspiration from [plover_japanese_kana][], I
decided to also use the `R` key to indicate a small character (the key's
position on the steno keyboard also makes me think of the placement of the small
character at the bottom-right of the compound):

- `"KRA": "kya"`
- `"TPHRU": "nyu"`
- `"PHRO": "myo"`

In order to stroke characters beginning with `"ry"`, `W` was added to make
`"WRA": "rya"`.

### Devoicing

In the intial chord, [devoicing][] can be used in a limited way to naturally add
an extra character in the chord, and hence a bit of efficiency, while still
keeping with [steno order][]:

- `"K": "ku"` (eg `"KWA": "kuwa"`)
- `"S": "su"` (eg `"SKEU": "suki"`)
- `"TP": "fu"` (eg `"TPRAEU": "furai"`)

## Final Chords

The mappings for any potential characters that could be made as a result of
strokes on the right-hand side of the keyboard can be found in the
[`FINAL_ROMAJI` constant][].

Their allocations are arbitrary to the closest character for how I pronounced
the Plover chord (or how they sound devoiced in my head), as well as some more
inspiration from [plover_japanese_kana][]:

- `"FPL": "-"`
- `"FP": "ti"`
- `"RB": "si"`
- `"PBLG": "ji"`
- `"PB": "nn"`
- `"PL": "ma"`
- `"BG": "ku"`
- `"TS": "tu"`
- `"F": "fu"`
- `"R": "ru"`
- `"P": "pu"`
- `"B": "bu"`
- `"L": "xtu"`
- `"G": "gu"`
- `"T": "ta"`
- `"S": "su"`

## Convenience Chords

The `D` and `Z` keys are used in convenience chords for use cases that can occur
in Japanese.

### Repeat Character Chord

The `-D` chord is used to output a repeat of the chord stroked, rather than have
to stroke the chord twice.

For a singular vowel, it has the same effect as prolonging the vowel sound, but
becomes more of a convenience when using it with one or more characters in a
single chord:

- `"AD": "aa"`
- `"EUD": "ii"`
- `"KAD": "kaka"`
- `"KAEUD": "kaikai"`

### Repeat Character Chord with Diacritic

The `*D` chord works the same way as the Repeat Character chord, but it will add
a diacritic (_[dakuten][]_) to the first character of the repetition to
indicate it should be "voiced" or a "harder" sound. Or, if the chord already has
a diacritic, the repetition will remove the diacritic sound.

- `"KA*D": "kaga"`
- `"KA*EUD": "kaigai"`
- `"TKPWA*EUD": "gaikai"`

Note that going from _dakuten_ to _handakuten_ is prioritised over going from
_dakuten_ to no diacritic, which means the following diacritic reversals are not
possible: `"b": "h", "by": "hy"`

### Small Character Chord

The `-Z` chord is used to modify the final vowel character in a chord into a
small character (_[sokuon][]_):

- `"AZ": "xa"`
- `"EUZ": "xi"`
- `"KAZ": "xka"`
- `"TUZ": "xtu"`

### Prolong Vowel Chord

The `-DZ` chord is used to prolong the final vowel sound in a chord:

- `"ADZ": "aa"`
- `"EUDZ": "ii"`
- `"KADZ": "kaa"`
- `"KAEUDZ": "kaii"`

### Prolong Vowel with Small Character Chord

The `*DZ` chord prolongs the final vowel sound in a chord with a _[sokuon][]_:

- `"A*DZ": "axa"`
- `"KA*DZ": "kaxa"`
- `"KA*EUDZ": "kaixi"`

## Other Punctuation

- Since Japanese does not have spaces between words, and _kanji_ conversions via
  an IME can change the number of characters output, the `*` key's job is made
  harder, if not impossible(?). So, the dictionary simply maps it to the
  keyboard Backspace key.
- There is not a way to input _[handakuten][]_ on ka, ki, ku, ke, or ko using
  an IME to form the [phonetic shift][] "nga" (か゚) etc sounds. There isn't even
  a way to input a _dakuten_ or _handakuten_ in isolation, so there is a set of
  strokes in Chidori that does this:

  ```txt
  "TKABGT": "{^゙^}", # DAKuTen
  "TKHABGT": "{^゚^}" # HanDAKuTen
  ```

## Tests

Given that the tests consist of making sure that chords are transformed into
the expected _romaji_ strings, Python [subtests][] are heavily used.

Run tests:

- From the repo top level directory:

```sh
python -m unittest discover --start src/chidori
```

- From the `chidori` directory:

```sh
python -m unittest
```

[chōonpu]: https://en.wikipedia.org/wiki/Ch%C5%8Donpu
[dakuten]: https://en.wikipedia.org/wiki/Dakuten_and_handakuten
[devoicing]: https://en.wikipedia.org/wiki/Japanese_phonology#Devoicing
[dictionary stack]: ../../dictionaries/README.md#standing-on-the-shoulders-of-others
[`FINAL_ROMAJI` constant]: ./chidori.py#L157
[Google IME]: https://www.google.co.jp/ime/
[Google IME-specific dictionary]: ../../dictionaries/japanese/japanese-google-ime.json
[handakuten]: https://en.wikipedia.org/wiki/Dakuten_and_handakuten
[Hepburn romanization]: https://en.wikipedia.org/wiki/Hepburn_romanization
[`INITIAL_ROMAJI` constant]: ./chidori.py#L107
[JSON]: https://www.json.org/json-en.html
[Kotoeri]: https://en.wikipedia.org/wiki/Kotoeri
[_Kunrei-shiki_ romanization]: https://en.wikipedia.org/wiki/Kunrei-shiki_romanization
[Microsoft Japanese IME]: https://support.microsoft.com/en-us/windows/microsoft-japanese-ime-da40471d-6b91-4042-ae8b-713a96476916
[other companion dictionaries]: ../../dictionaries/japanese
[phonetic shift]: https://en.wikipedia.org/wiki/Dakuten_and_handakuten#Phonetic_shifts
[Plover]: https://github.com/openstenoproject/plover
[Plover fingerspelling conventions]: https://www.artofchording.com/sounds/fingerspelling.html
[plover_japanese_kana]: https://github.com/Willem3141/plover_japanese_kana
[Plover Python Dictionary]: https://github.com/benoit-pierre/plover_python_dictionary
[prolong vowel chord]: #prolong-vowel-chord
[Python]: https://www.python.org/
[Rich Text Format]: https://en.wikipedia.org/wiki/Rich_Text_Format
[romaji]: https://en.wikipedia.org/wiki/Romanization_of_Japanese
[sokuon]: https://en.wikipedia.org/wiki/Sokuon
[`STANDALONE_OUTPUT` constant]: ./chidori.py#L30
[steno order]: https://sites.google.com/site/learnplover/lesson-2-steno-order
[subtests]: https://docs.python.org/3/library/unittest.html#distinguishing-test-iterations-using-subtests
[Volitional form]: https://en.wikipedia.org/wiki/Japanese_verb_conjugation#Volitional
[We]: https://en.wikipedia.org/wiki/We_(kana)
[Wi]: https://en.wikipedia.org/wiki/Wi_(kana)
[Yōon]: https://en.wikipedia.org/wiki/Y%C5%8Don
