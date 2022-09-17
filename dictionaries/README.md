# Steno Dictionaries

The dictionaries are divided up into the following types:

- **Accented Letters**: containing outlines for accented letters that I would
  typically use in Italian.
- **Alt**: containing "alternative" non-phonetic words and phrases that
  sometimes may have shortened, non-traditional, alternatively-stroked, weird,
  or just "makes sense to me, personally" outlines.
- **[Chidori][]**: Japanese for "Plover", this dictionary contains outlines
  related to performing Japanese language input in a Plover-like way.<br />
  It was created for use with [Google Japanese Input Method Editor][] (IME).
- **Code**: containing code- and programming-related outlines.
- **Command**: containing outlines that reference the custom [Plover
  Control Commands][]. Details about what the commands do can be found can be
  found in this directory, while the code and technical details for the commands
  can be found in the [`src/command`][] directory.
- **[Emoji][]**: containing single-stroke outlines for my more frequently used
  emoji.
- **Gaming**: containing outlines related to video games.
- **Lookup**: containing Plover dictionary "lookup improvements": words that can
  be stroked using standard Plover conventions, but do not yet have a named
  entry in the main Plover dictionary.
- **New**: containing new outline entries that _do not_ currently have a named
  entry in [Plover's `main.json`][Plover main.json].
- **Numbers**: containing number-specific entries that _do not_ currently have
  a named entry in the main Plover dictionary.
- **Overrides**: containing outlines where I think an existing Plover outline
  would be better mapped to another word or phrase.
- **Punctuation**: containing new and alternative outlines containing only
  punctuation and/or non-word characters.
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
| [&#8193;] steno-dictionaries/src/chidori/chidori.py                          |
| [✓] steno-dictionaries/dictionaries/overrides.md                             |
| [✓] steno-dictionaries/dictionaries/lookup/lookup-words.json                 |
| [✓] steno-dictionaries/dictionaries/lookup/lookup-au-words.json              |
| [✓] steno-dictionaries/dictionaries/stitching.md                             |
| [✓] steno-dictionaries/dictionaries/q-and-a.md                               |
| [✓] steno-dictionaries/dictionaries/punctuation.md                           |
| [✓] steno-dictionaries/dictionaries/numbers.md                               |
| [✓] steno-dictionaries/dictionaries/new.md                                   |
| [✓] steno-dictionaries/dictionaries/lookup.md                                |
| [✓] steno-dictionaries/dictionaries/gaming.md                                |
| [✓] steno-dictionaries/dictionaries/emoji.md                                 |
| [✓] steno-dictionaries/dictionaries/code.md                                  |
| [✓] steno-dictionaries/dictionaries/alt.md                                   |
| [✓] steno-dictionaries/dictionaries/accented-letters.md                      |
| [✓] [di-steno-dictionaries/dictionaries/dict-en-AU-with-extra-stroke.json][] |
| [✓] [di-steno-dictionaries/dictionaries/dict-en-AU-vocab.json][]             |
| [✓] [di-steno-dictionaries/dictionaries/condensed-strokes.json][]            |
| [✓] [main.json][]                                                            |

The Japanese dictionaries get toggled by strokes defined in the
`Google IME` section of the `command.md` dictionary.

Custom commands is on the top because there may be times where I want to
override existing outlines to perform some command, rather than output text.

This list is not meant to be prescriptive for any steno learners, just
illustrative of the set of dictionaries I currently use.

Some dictionaries that are in this repo, and I use from other repos, may be
helpful and relevant to others, or maybe not. Everyone is different, so there is
no "correct" set of dictionaries to use. Whatever helps you is best!

[Chidori]: ../src/chidori
[Di's steno dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[di-steno-dictionaries/dictionaries/condensed-strokes.json]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/condensed-strokes.json
[di-steno-dictionaries/dictionaries/dict-en-AU-vocab.json]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/dict-en-AU-vocab.json
[di-steno-dictionaries/dictionaries/dict-en-AU-with-extra-stroke.json]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/dict-en-AU-with-extra-stroke.json
[Emoji]: https://en.wikipedia.org/wiki/Emoji
[Google Japanese Input Method Editor]: https://www.google.co.jp/ime/
[main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[Plover]: http://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[`src/command`]: ../src/command
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
[Vim]: https://www.vim.org/
