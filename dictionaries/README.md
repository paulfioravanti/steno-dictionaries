# Steno Dictionaries

The dictionaries are divided up into the following types:

- **Alt**: containing "alternative" non-phonetic words and phrases that
  sometimes may have shortened, non-traditional, alternatively-stroked, weird,
  or just "makes sense to me, personally" outlines. They are alternatives
  specifically for outlines that _already have an existing entry_ in
  [Plover's `main.json`][Plover main.json]. They are divided into the following
  dictionary types:
    - **Alt AU Words**: containing alternative Australian/British spellings
      versions for Alt Words entries, where appropriate, using the `/A*U` suffix
      convention established in [`dict-en-AU-with-extra-stroke.json`][] in
      [Di's steno dictionaries][].
    - **Alt Phrases**: containing alternative briefs for existing [Plover][]
      phrases, defined as two or more words.
    - **Alt [Proper Nouns][]**: containing alternative entries for existing
      Plover proper nouns.
    - **Alt Words**: containing alternative outlines for existing Plover words
      (and sometimes prefixes, suffixes or other entries not _strictly_ words).

- **Code**: containing code- and programming-related outlines.

- **Command**: containing outlines that reference the custom [Plover
  Control Commands][]. Details about what the commands do can be found can be
  found in this directory, while the code and technical details for the commands
  can be found in the [`src/command`][] directory.

- **Japanese**: containing outlines related to performing Japanese language
  input in a Plover-like way. They were created for use with the
  [Japanese Romaji][] dictionary and [Google Japanese Input Method Editor][]
  (IME).

- **Lookup**: containing Plover dictionary "lookup improvements": words that can
  be stroked using standard Plover conventions, but do not yet have a named
  entry in the main Plover dictionary. So, without these entries, they would
  essentially be "hidden" from view when you attempt a dictionary lookup.<br />
  These dictionaries are pretty much just a staging area until I can make pull
  requests into the [`condensed-strokes.json`][] and
  [`dict-en-AU-with-extra-stroke.json`][] dictionaries in
  [Di's steno dictionaries][], so they can be shared more widely. The
  `lookup-words-personal.json` dictionary is for entries that can technically be
  stroked with standard Plover, but are against Plover conventions, or generally
  not applicable for sharing with a wider audience via Di's dictionaries.

- **New**: containing new outline entries that _do not_ currently have a named
  entry in [Plover's `main.json`][Plover main.json]. They are divided into the
  following dictionary types:
  - **New Phrases**: containing briefed phrases of two or more words.
  - **New [Proper Nouns][]**: containing nouns that identify a single entity and
   is used to refer to that entity: names of people, companies, animal types
   etc.
  - **New Words**: containing any other _new_ word. I have tried to make the
    new outline make "intuitive sense" for a Plover user: the outline is
    phonetic and/or the outline _generally_ follows Plover's rules.

- **Overrides**: containing dictionaries with outlines where I think an existing
  Plover outline would be better mapped to another word or phrase.

- **Accented Letters**: containing outlines for accented letters that I would
  typically use in Italian.

- **[Emoji][]**: containing single-stroke outlines for my more frequently used
  emoji.

- **Gaming**: containing outlines related to video games.

- **Numbers**: containing number-specific entries that _do not_ currently have
  a named entry in the main Plover dictionary.

- **Q&A**: containing briefs related to switching between different people or
  lines of questioning in a conversation.

- **Stitching**: containing outlines related to [stitching][].

## Standing on the Shoulders of Others

I do not use the dictionaries in this repo in isolation. They are used in
conjunction with, and augment, the work of others.

Obviously, [Plover's `main.json`][Plover main.json] dictionary is the bedrock on
which everything stands. But, above that, I also use dictionaries from
[Di's steno dictionaries][] repo (`di-steno-dictionaries` below), and then my
dictionaries live on top of them.

So, my dictionary "stack" in the Plover application currently looks like the
following when typing in English:

|                            Dictionaries                                      |
|------------------------------------------------------------------------------|
| [✓] steno-dictionaries/dictionaries/command.md                               |
| [&#8193;] steno-dictionaries/dictionaries/japanese/japanese-commands.json    |
| [&#8193;] steno-dictionaries/dictionaries/japanese/japanese-punctuation.json |
| [&#8193;] steno-dictionaries/src/japanese_romaji/japanese_romaji.py          |
| [✓] steno-dictionaries/dictionaries/overrides.md                             |
| [✓] steno-dictionaries/dictionaries/new/new-words.json                       |
| [✓] steno-dictionaries/dictionaries/new/new-proper-nouns.json                |
| [✓] steno-dictionaries/dictionaries/new/new-phrases.json                     |
| [✓] steno-dictionaries/dictionaries/lookup/lookup-words.json                 |
| [✓] steno-dictionaries/dictionaries/lookup/lookup-au-words.json              |
| [✓] steno-dictionaries/dictionaries/alt/alt-words.json                       |
| [✓] steno-dictionaries/dictionaries/alt/alt-proper-nouns.json                |
| [✓] steno-dictionaries/dictionaries/alt/alt-phrases.json                     |
| [✓] steno-dictionaries/dictionaries/alt/alt-au-words.json                    |
| [✓] steno-dictionaries/dictionaries/stitching.md                             |
| [✓] steno-dictionaries/dictionaries/q-and-a.md                               |
| [✓] steno-dictionaries/dictionaries/numbers.md                               |
| [✓] steno-dictionaries/dictionaries/lookup.md                                |
| [✓] steno-dictionaries/dictionaries/gaming.md                                |
| [✓] steno-dictionaries/dictionaries/emoji.md                                 |
| [✓] steno-dictionaries/dictionaries/code.md                                  |
| [✓] steno-dictionaries/dictionaries/accented-letters.md                      |
| [✓] [di-steno-dictionaries/dictionaries/dict-en-AU-with-extra-stroke.json][] |
| [✓] [di-steno-dictionaries/dictionaries/dict-en-AU-vocab.json][]             |
| [✓] [di-steno-dictionaries/dictionaries/condensed-strokes.json][]            |
| [✓] [main.json][]                                                            |

The Japanese dictionaries get toggled by strokes defined in the
`japanese-google-ime.json` dictionary.

Custom commands is on the top because there may be times where I want to
override existing outlines to perform some command, rather than output text.

This list is not meant to be prescriptive for any steno learners, just
illustrative of the set of dictionaries I currently use.

Some dictionaries that are in this repo, and I use from other repos, may be
helpful and relevant to others, or maybe not. Everyone is different, so there is
no "correct" set of dictionaries to use. Whatever helps you is best!

[`src/command`]: ../src/command
[Di's steno dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[di-steno-dictionaries/dictionaries/condensed-strokes.json]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/condensed-strokes.json
[di-steno-dictionaries/dictionaries/dict-en-AU-vocab.json]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/dict-en-AU-vocab.json
[di-steno-dictionaries/dictionaries/dict-en-AU-with-extra-stroke.json]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/dict-en-AU-with-extra-stroke.json
[`dict-en-AU-with-extra-stroke.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/dict-en-AU-with-extra-stroke.json
[Emoji]: https://en.wikipedia.org/wiki/Emoji
[Google Japanese Input Method Editor]: https://www.google.co.jp/ime/
[Japanese Romaji]: ../src/japanese_romaji
[main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[Plover]: http://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[Proper Nouns]: https://en.wikipedia.org/wiki/Proper_and_common_nouns
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
[Vim]: https://www.vim.org/
