# Cycle-able Entries

The following outlines all leverage the [Plover Cycle Translations][] plugin to
make their translations cycle-able to any existing [homophones][] or [proper
noun][], or other words I may deem "relevant".

The "selector stroke" I use to cycle between the words in the list is:

```yaml
"R*R": "{:CYCLE:NEXT}"
```

<!-- vim-markdown-toc GFM -->

* [Cycle Overrides](#cycle-overrides)

<!-- vim-markdown-toc -->

## Cycle Overrides

The following outlines technically override the ones in Plover: not because
I think they would be better mapped elsewhere, but just because I want to make
their translations cycle-able.

The first word in the cycle-able word list is the one whose Plover outline is
overridden.

```yaml
"*EUL": "{:CYCLE:I'll,aisle,isle}"
"A*EUD": "{:CYCLE:aide,aid}"
"AED": "{:CYCLE:aide,aid}"
"AEUD": "{:CYCLE:aid,aide}"
"AOEUL": "{:CYCLE:I'll,aisle,isle}"
"KWR*EUL": "{:CYCLE:I'll,aisle,isle}"
```

[homophones]: https://en.wikipedia.org/wiki/Homophone
[Plover Cycle Translations]: https://github.com/paulfioravanti/plover-cycle-translations
[proper nouns]: https://en.wikipedia.org/wiki/Proper_noun
