# Steno Dictionaries

This repository contains my personal stenography dictionaries.

The dictionaries are in [JSON][] format, and either use, or are intended to
supplement, [Plover][] theory, and _generally_ not be in conflict with [Plover's
default `main.json` dictionary][Plover main.json].

More information about these dictionaries and what led to their creation can
be found in the following blog posts I wrote:

- _[Going Platinum][]_

## Categorisation

The dictionaries are divided up into the following main types:

- **Briefs**: containing non-phonetic words and phrases that sometimes may have
   shortened, non-traditional/alternatively-stroked, weird, or just "makes sense
   to me, personally" outlines. They are divided into the following dictionary
   types:
   - **Alternative Briefs**: containing briefs for words that
     _already have an existing entry_ in
     [Plover's `main.json`][Plover main.json].
   - **Phrases**: containing briefed phrases of two or more words that
     _currently have no existing entry_ in
     [Plover's `main.json`][Plover main.json].
   - **Words**: containing other briefed words that
     _currently have no existing entry_ in
     [Plover's `main.json`][Plover main.json].

- **Lookup Improvements**: containing words that can be stroked using standard
  Plover conventions, but do not have a named entry in the main Plover
  dictionary.<br />
  These dictionaries are ultimately about improving outline lookups in Plover,
  and are pretty much just a staging area until I can make pull requests into
  the [`condensed-strokes.json`][] and [`dict-en-AU-with-extra-stroke.json`][]
  dictionaries in [Di's steno dictionaries][], so they can be shared more
  widely.

- **Overrides**: containing dictionaries with outlines where I think an existing
  Plover outline would be better mapped to another word or phrase. Since I
  cannot put comments in JSON, I have attempted to document my justifications
  for going against Plover entries in the [overrides `README`][].

- **Numbers**: containing non-word briefs concerned specifically with numbers.
   They are in their own dictionary, and not in `briefs.json`, because the one
   scenario of "create briefs that add a period after a number and capitalise
   the next outline" resulted in more than 100 briefs needing to be constructed.
   I did not want them "polluting" up word-only dictionaries, so they live in
   their own specialised dictionary.

- **[Proper Nouns][]**: containing nouns that identify a single entity and is
   used to refer to that entity: names of people, companies, animal types etc.
   The proper nouns in this dictionary are _new_ and _currently do not have an
   existing entry_ in [Plover's `main.json`][Plover main.json]. New outlines for
   proper nouns which have an existing entry in Plover are contained in
   `alt-briefs.json`

- **Q&A**: containing briefs related to switching between different people or
   lines of questioning in a conversation. More information about the concept of
   Q&A can be found in the [Platinum Steno Lesson 27 QA video][]. These briefs
   might only really be applicable for court-reporting, but since there are
   Q&A exercises in the Platinum Steno lessons, and I'm currently learning them,
   I've attempted to port their briefs to Plover (download the
   [lesson 27 materials][Platinum Steno Lesson 27 lesson materials] for free to
   see the briefs they use).

- **Stitching**: containing outlines related to [stitching][], which in my case
   have ended up being some kind of "backwards" stitching outlines. Not all of
   the letters are represented in this dictionary, as some of the outlines had
   to come from overriding some existing Plover outlines. These overrides are
   enumerated in the [overrides `README`][]. I deliberately have only created
   stitching outlines for lowercase letters for now, as that's all I currently
   have need for.

- **Words**: containing any other _new_ word that _currently has no existing
   entry_ in [Plover's `main.json`][Plover main.json], where the outline is
   meant to make "intuitive sense" (subjectively, of course) when used in Plover
   — the outline is phonetic and/or the outline _generally_ follows Plover's
   rules.

## Standing on the Shoulders of Others

I do not use the dictionaries in this repo in isolation. They are used in
conjunction with, and augment, the work of others.

Obviously, [Plover's `main.json`][Plover main.json] dictionary is the bedrock on
which everything stands. But, above that, I also use dictionaries from
[Di's steno dictionaries][] repo (`steno-dictionaries` below), and then my
dictionaries live on top of them.

So, my dictionary "stack" in the Plover application currently looks like the
following:

|                            Dictionaries                           |
|-------------------------------------------------------------------|
| steno_dictionaries/dictionaries/overrides/words.json              |
| steno_dictionaries/dictionaries/overrides/proper-nouns.json       |
| steno_dictionaries/dictionaries/overrides/briefs.json             |
| steno_dictionaries/dictionaries/lookup-improvements/words.json    |
| steno_dictionaries/dictionaries/lookup-improvements/au-words.json |
| steno_dictionaries/dictionaries/briefs/words.json                 |
| steno_dictionaries/dictionaries/briefs/phrases.json               |
| steno_dictionaries/dictionaries/briefs/alt-briefs.json            |
| steno_dictionaries/dictionaries/words.json                        |
| steno_dictionaries/dictionaries/stitching.json                    |
| steno_dictionaries/dictionaries/q-and-a.json                      |
| steno_dictionaries/dictionaries/proper-nouns.json                 |
| steno_dictionaries/dictionaries/numbers.json                      |
| steno-dictionaries/dictionaries/tabbing.json                      |
| steno-dictionaries/dictionaries/plover-use.json                   |
| steno-dictionaries/dictionaries/navigation.json                   |
| steno-dictionaries/dictionaries/modifiers-single-stroke.json      |
| steno-dictionaries/dictionaries/markdown.json                     |
| steno-dictionaries/dictionaries/dict-en-AU-vocab.json             |
| steno-dictionaries/dictionaries/dict-en-AU-with-extra-stroke.json |
| steno-dictionaries/dictionaries/computer-use.json                 |
| steno-dictionaries/dictionaries/computer-powerups.json            |
| user.json                                                         |
| commands.json                                                     |
| main.json                                                         |

This list is not meant to be prescriptive for any steno learners, just
illustrative of the set of dictionaries I currently use.

Some dictionaries that are in this repo, and I use from other repos, may be
helpful and relevant to others, or maybe not. Everyone is different, so there is
no "correct" set of dictionaries to use. Whatever helps you is best!

## Hat Tips :tophat:

Inspiration for additions have been:

- [Di's steno dictionaries][]
- [Platinum Steno][] video course

## License

This project is licensed under the terms of the GNU General Public License v3.0.

See [`LICENSE.txt`][] for details.

[`condensed-strokes.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/condensed-strokes.json
[Di's steno dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[`dict-en-AU-with-extra-stroke.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/dict-en-AU-with-extra-stroke.json
[Going Platinum]: https://www.paulfioravanti.com/blog/going-platinum/
[JSON]: https://en.wikipedia.org/wiki/JSON
[`LICENSE.txt`]: ./LICENSE.txt
[`overrides` directory]: ./dictionaries/overrides/
[overrides `README`]: ./dicionaries/overrides/README.md
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[Platinum Steno Lesson 27 lesson materials]: https://platinumsteno.com/downloads/theory-lesson-27/
[Platinum Steno Lesson 27 QA video]: https://www.youtube.com/watch?v=tEgaJ7hWIvg
[Plover]: http://www.openstenoproject.org/plover/
[Plover main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[Proper Nouns]: https://en.wikipedia.org/wiki/Proper_and_common_nouns
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
