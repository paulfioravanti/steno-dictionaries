# Lookup Dictionary

This dictionary, and the dictionaries in the `lookup/` directory, contain Plover
dictionary "lookup improvements": words that can be stroked using standard
Plover conventions, but do not yet have a named entry in the main Plover
dictionary. So, without these entries, they would essentially be "hidden" from
view when you attempt a dictionary lookup.

The dictionaries in the `lookup/` directory are pretty much just a staging area
until I can make pull requests into the [`condensed-strokes.json`][] and
[`dict-en-AU-with-extra-stroke.json`][] dictionaries in
[Di's steno dictionaries][], so they can be shared more widely.

The entries in this dictionary file can technically be stroked with standard
Plover, but are against Plover conventions, or generally not applicable for
sharing with a wider audience via Di's dictionaries.

```yaml
"-GT": "thing"
"STKPWHRAOEUFRPBLGTS": "{#}"
```

[`condensed-strokes.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/condensed-strokes.json
[Di's steno dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[`dict-en-AU-with-extra-stroke.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/dict-en-AU-with-extra-stroke.json
