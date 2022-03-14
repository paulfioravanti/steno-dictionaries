# Japanese Romaji

This [Python][] dictionary for [Plover][] intends to enable Japanese input using
a steno keyboard in a Plover-like way.

It translates steno chords into _[romaji][]_ strings, which can then be used as
input to a Japanese Input Method Editor (IME), like:

- [Google IME][] 
- [Kotoeri][] 
- [Microsoft Japanese IME][]

It was not built for speed like other Japanese steno theories, but just as a
convenience for those who know Plover, have a steno keyboard, and want to input
Japanese.

In my [dictionary stack][], the Japanese Romaji dictionary, as well as
[other companion dictionaries][] I created for it, are disabled by default. I
use a [Google IME-specific dictionary][] to toggle them on and off.

## Chords

### Vowels

### Initial Chords

### Final Chords

## Tests

Given that the tests consist of making sure that chords are transformed into
the expected romaji strings, Python [subtests][] are heavily used.

Run tests:

From the repo top level directory:

```sh
python -m unittest discover --start src/japanese_romaji
```

From the `japanese_romaji` directory:

```sh
python -m unittest
```

[dictionary stack]: ../../dictionaries/README.md#standing-on-the-shoulders-of-others
[Google IME]: https://www.google.co.jp/ime/
[Google IME-specific dictionary]: ../../dictionaries/japanese/japanese-google-ime.json
[Kotoeri]: https://en.wikipedia.org/wiki/Kotoeri
[Microsoft Japanese IME]: https://support.microsoft.com/en-us/windows/microsoft-japanese-ime-da40471d-6b91-4042-ae8b-713a96476916
[other companion dictionaries]: ../../dictionaries/japanese
[Plover]: https://github.com/openstenoproject/plover
[Python]: https://www.python.org/
[romaji]: https://en.wikipedia.org/wiki/Romanization_of_Japanese
[subtests]: https://docs.python.org/3/library/unittest.html#distinguishing-test-iterations-using-subtests
