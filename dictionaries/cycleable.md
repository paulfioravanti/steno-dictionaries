# Cycle-able Entries

The following outlines all leverage the [Plover Cycle Translations][] plugin to
make their translations cycleable to any existing [homophones][] or [proper
noun][], or other words I may deem "relevant".

The first word in the cycle-able word list is the one whose outline is
overridden.

The "selector stroke" I use to cycle between the words in the list is:

```yaml
"R*R": "=CYCLE:NEXT"
```

<!-- vim-markdown-toc GFM -->

* [New](#new)
* [Alternative](#alternative)
* [Overrides](#overrides)

<!-- vim-markdown-toc -->

## New

```yaml
"PWO*URPB": "=CYCLE:Bourne,bourn,borne,born"
"PWRA*EUZ": "=CYCLE:Braze,braze,braise,brays"
"PWRA*EZ": "=CYCLE:Braze,braze,braise,brays"
```

## Alternative

The following outlines are overrides to _alternative_ outlines for word entries
that already exist in Plover theory. The original entries can be found in
[`words.md`][].

```yaml
"PWA*EUFS": "=CYCLE:basis,bases,basses"
```

## Overrides

The following outlines technically override the ones in Plover: not because
I think they would be better mapped elsewhere, but just because I want to make
their translations cycleable.

```yaml
"*EUL": "=CYCLE:I'll,aisle,isle"
"A*EUD": "=CYCLE:aide,aid"
"ABG/SEL": "=CYCLE:axel,axle,axil"
"ABG/SEUL": "=CYCLE:axil,axle,axel"
"ABGS/*L": "=CYCLE:axle,axel,axil"
"ABGS/-L": "=CYCLE:axle,axel,axil"
"ABGS/EL": "=CYCLE:axel,axle,axil"
"AED": "=CYCLE:aide,aid"
"AEUD": "=CYCLE:aid,aide"
"AEUT": "=CYCLE:ate,eight,ait"
"AO*EU": "=CYCLE:aye,eye,I"
"AOEU": "=CYCLE:eye,aye,I"
"AOEUL": "=CYCLE:I'll,aisle,isle"
"EBGS/*EL": "=CYCLE:Excel,excel"
"EBGS/EL": "=CYCLE:excel,Excel"
"KAUL": "=CYCLE:call,caul,col"
"KOL": "=CYCLE:col,call,caul"
"KP*EL": "=CYCLE:Excel,excel"
"KWR*EUL": "=CYCLE:I'll,aisle,isle"
"PW*EUR": "=CYCLE:birr,bur,burr"
"PWAES": "=CYCLE:basis,bases,basses"
"PWAES": "=CYCLE:basis,bases,basses"
"PWAEUSZ": "=CYCLE:bases,basis,basses"
"PWAO*EUT": "=CYCLE:byte,bite,bight"
"PWAOEUT": "=CYCLE:bite,byte,bight"
"PWAULD": "=CYCLE:bald,balled,bawled"
"PWO": "=CYCLE:bo,Bo,bow,beau"
"PWO*": "=CYCLE:Bo,bo,bow,beau"
"PWO*EL": "=CYCLE:bole,bowl,boll"
"PWO*RPB": "=CYCLE:borne,born,bourn,Bourne"
"PWOE": "=CYCLE:bow,beau,bo"
"PWOEL": "=CYCLE:bowl,bole,boll"
"PWOELD": "=CYCLE:boweled,bold,bolled"
"PWOERPB": "=CYCLE:borne,born,bourn,Bourne"
"PWOL": "=CYCLE:boll,bowl,bole"
"PWOLD": "=CYCLE:bold,bolled,bowled"
"PWORPB": "=CYCLE:born,borne,bourn,Bourne"
"PWOU": "=CYCLE:bow,beau,bo"
"PWRAEUZ": "=CYCLE:braise,brays,braze,Braze"
"PWRAEZ": "=CYCLE:braze,Braze,braise,brays"
"PWRO": "=CYCLE:borough,burrow,burro"
"PWROE": "=CYCLE:borough,burrow,burro"
"PWUR": "=CYCLE:burr,bur,birr"
"PWUR/RO": "=CYCLE:burro,burrow,borough"
"PWUR/RO*E": "=CYCLE:burro,burrow,borough"
"PWUR/ROE": "=CYCLE:burrow,borough,burro"
```

[homophones]: https://en.wikipedia.org/wiki/Homophone
[Plover Cycle Translations]: https://github.com/paulfioravanti/plover-cycle-translations
[proper nouns]: https://en.wikipedia.org/wiki/Proper_noun
[`words.md`]: ./words.md
