# Steno Dictionaries

This repository contains my personal stenography dictionaries.

The dictionaries are in [JSON][] format, and either use, or are intended to
supplement, [Plover][] theory, and generally not be in conflict with [Plover's
default `main.json` dictionary][Plover main.json].

Outlines where I have a strong enough preference for them to use them over the
ones that Plover provides are contained in dictionaries under the
[`overrides` directory][]. Since I cannot put comments in the JSON, I have
attempted to document my justifications for going against Plover entries in
the [overrides `README`][].

## Categorisation

The dictionaries are primarily divided up into four main types:

1. **Briefs**: containing non-phonetic words and phrases that sometimes may have
   non-traditional, weird, or just "makes sense to me, personally" outlines.

2. **Numbers**: containing non-word briefs concerned specifically with numbers.
   They are in their own dictionary, and not in `briefs.json`, because the one
   scenario of "create briefs that add a period after a number and capitalise
   the next outline" resulted in more than 100 briefs needing to be constructed.
   I did not want them "polluting" up word-only dictionaries, so they live in
   their own specialised dictionary.

3. **[Proper Nouns][]**: containing nouns that identify a single entity and is
   used to refer to that entity: names of people, companies, animal types etc.

4. **Words**: containing any other word where the outline is meant to make
   "intuitive sense" (subjectively, of course) to be used in Plover — the
   outline is phonetic and/or the outline _generally_ follows Plover's rules.

## Hat Tips :tophat:

Inspiration for additions have been:

- [Di's steno dictionaries][]
- [Platinum Steno][] video course

## License

This project is licensed under the terms of the GNU General Public License v3.0.

See [`LICENSE.txt`][] for details.

[Di's steno dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[JSON]: https://en.wikipedia.org/wiki/JSON
[`LICENSE.txt`]: ./LICENSE.txt
[`overrides` directory]: ./dictionaries/overrides/
[overrides `README`]: ./dicionaries/overrides/README.md
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[Plover]: http://www.openstenoproject.org/plover/
[Plover main.json]: https://github.com/openstenoproject/plover/blob/master/plover/assets/main.json
[Proper Nouns]: https://en.wikipedia.org/wiki/Proper_and_common_nouns
