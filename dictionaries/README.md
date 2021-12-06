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

- **Command**: containing outlines that reference the custom [Plover
  Control Commands][]. Details about what the commands do can be found can be
  found in this directory, while the code and technical details for the commands
  can be found in the [`config/command`][] directory.

- **Lookup**: containing Plover dictionary "lookup improvements": words that can
  be stroked using standard Plover conventions, but do not yet have a named
  entry in the main Plover dictionary. So, without these entries, they would
  essentially be "hidden" from view when you attempt a dictionary lookup.<br />
  These dictionaries are pretty much just a staging area until I can make pull
  requests into the [`condensed-strokes.json`][] and
  [`dict-en-AU-with-extra-stroke.json`][] dictionaries in
  [Di's steno dictionaries][], so they can be shared more widely.

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

- **Number**: containing number-specific entries that _do not_ currently have
  a named entry in the main Plover dictionary. They are divided into the
  following dictionary types:
    - **Number Ordinals**: containing new [ordinal numeral][] entries.
    - **Number Time**: containing new time-related entries, specifically related
      to being able to compactly stroke minutes more granularly.
    - **Number List**: containing new entries specifically covering a use case
      of "create briefs that add a period after a number and capitalise the next
      outline".
    - **Number Other**: containing other number-related entries involving big
      numbers and hypened-numbers.

- **Override**: containing dictionaries with outlines where I think an existing
  Plover outline would be better mapped to another word or phrase. Since I
  cannot put comments in [JSON][], I have attempted to document my
  justifications for going against Plover entries in the [overrides `README`][].

- **Q&A**: containing briefs related to switching between different people or
   lines of questioning in a conversation. More information about the concept of
   Q&A can be found in the [Platinum Steno Lesson 27 QA video][]. These briefs
   might only really be applicable for court-reporting, but since there are
   Q&A exercises in the Platinum Steno lessons, and I'm currently learning them,
   I've attempted to port their briefs to Plover (download the
   [lesson 27 materials][Platinum Steno Lesson 27 lesson materials] for free to
   see the briefs they use).

- **Stitching**: containing outlines related to [stitching][], which, for the
   most part, use the `:stitch:` macro from the [Plover Stitching][] Plover
   plugin have ended up being some kind of "backwards" stitching outlines.
   Not all of the letters are represented in this dictionary, as some of the
   outlines had to come from overriding some existing Plover outlines. These
   overrides are enumerated in the [overrides `README`][].
   I deliberately have only created stitching outlines for uppercase letters,
   since it is apparently convention in court reporting that words verbally
   spelled are all in uppercase letters.

## Standing on the Shoulders of Others

I do not use the dictionaries in this repo in isolation. They are used in
conjunction with, and augment, the work of others.

Obviously, [Plover's `main.json`][Plover main.json] dictionary is the bedrock on
which everything stands. But, above that, I also use dictionaries from
[Di's steno dictionaries][] repo (`di-steno-dictionaries` below), and then my
dictionaries live on top of them.

So, my dictionary "stack" in the Plover application currently looks like the
following:

|                            Dictionaries                              |
|----------------------------------------------------------------------|
| steno-dictionaries/dictionaries/command/command-vlc.json             |
| steno-dictionaries/dictionaries/command/command-plover.json          |
| steno-dictionaries/dictionaries/command/command-other.json           |
| steno-dictionaries/dictionaries/command/command-applications.json    |
| steno-dictionaries/dictionaries/override/override-words.json         |
| steno-dictionaries/dictionaries/override/override-proper-nouns.json  |
| steno-dictionaries/dictionaries/override/override-phrases.json       |
| steno-dictionaries/dictionaries/number/number-time.json              |
| steno-dictionaries/dictionaries/number/number-other.json             |
| steno-dictionaries/dictionaries/number/number-ordinals.json          |
| steno-dictionaries/dictionaries/number/number-list.json              |
| steno-dictionaries/dictionaries/new/new-words.json                   |
| steno-dictionaries/dictionaries/new/new-proper-nouns.json            |
| steno-dictionaries/dictionaries/new/new-phrases.json                 |
| steno-dictionaries/dictionaries/lookup/lookup-words.json             |
| steno-dictionaries/dictionaries/lookup/lookup-au-words.json          |
| steno-dictionaries/dictionaries/alt/alt-words.json                   |
| steno-dictionaries/dictionaries/alt/alt-proper-nouns.json            |
| steno-dictionaries/dictionaries/alt/alt-phrases.json                 |
| steno-dictionaries/dictionaries/alt/alt-au-words.json                |
| steno-dictionaries/dictionaries/stitching.json                       |
| steno-dictionaries/dictionaries/q-and-a.json                         |
| di-steno-dictionaries/dictionaries/tabbing.json                      |
| di-steno-dictionaries/dictionaries/plover-use.json                   |
| di-steno-dictionaries/dictionaries/navigation.json                   |
| di-steno-dictionaries/dictionaries/modifiers-single-stroke.json      |
| di-steno-dictionaries/dictionaries/markdown.json                     |
| di-steno-dictionaries/dictionaries/dict-en-AU-with-extra-stroke.json |
| di-steno-dictionaries/dictionaries/dict-en-AU-vocab.json             |
| di-steno-dictionaries/dictionaries/computer-use.json                 |
| di-steno-dictionaries/dictionaries/computer-powerups.json            |
| user.json                                                            |
| commands.json                                                        |
| main.json                                                            |

Custom commands is on the top because there may be times where I want to
override existing outlines to perform some command, rather than output text.

This list is not meant to be prescriptive for any steno learners, just
illustrative of the set of dictionaries I currently use.

Some dictionaries that are in this repo, and I use from other repos, may be
helpful and relevant to others, or maybe not. Everyone is different, so there is
no "correct" set of dictionaries to use. Whatever helps you is best!

[`condensed-strokes.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/condensed-strokes.json
[`config/command`]: ../config/command
[Di's steno dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[`dict-en-AU-with-extra-stroke.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/dict-en-AU-with-extra-stroke.json
[JSON]: https://en.wikipedia.org/wiki/JSON
[ordinal numeral]: https://en.wikipedia.org/wiki/Ordinal_numeral
[`overrides` directory]: ./overrides/
[overrides `README`]: ./overrides/README.md
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[Platinum Steno Lesson 27 lesson materials]: https://platinumsteno.com/downloads/theory-lesson-27/
[Platinum Steno Lesson 27 QA video]: https://www.youtube.com/watch?v=tEgaJ7hWIvg
[Plover]: http://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[Proper Nouns]: https://en.wikipedia.org/wiki/Proper_and_common_nouns
[Plover Stitching]: https://github.com/morinted/plover_stitching
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/