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
"KHO*EL": "=CYCLE:Kohl,kohl,coal,cole,Cole"
"KRO*EL": "=CYCLE:cole,Cole,coal,kohl,Kohl"
"PWO*URPB": "=CYCLE:Bourne,bourn,borne,born"
"PWRA*EUZ": "=CYCLE:Braze,braze,braise,brays"
"PWRA*EZ": "=CYCLE:Braze,braze,braise,brays"
```

## Alternative

The following outlines are overrides to _alternative_ outlines for word entries
that already exist in Plover theory. The original entries can be found in
[`words.md`][].

```yaml
"STKAR": "=CYCLE:cedar,ceder,seeder"
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
"AO*EUL": "=CYCLE:aisle,isle,I'll"
"AOEU": "=CYCLE:eye,aye,I"
"AOEUL": "=CYCLE:I'll,aisle,isle"
"EBGS/*EL": "=CYCLE:Excel,excel"
"EBGS/EL": "=CYCLE:excel,Excel"
"KAO*ED": "=CYCLE:cede,seed"
"KAO*ED/*ER": "=CYCLE:ceder,seeder,cedar"
"KAOELG": "=CYCLE:ceiling,sealing,seeling"
"KAUL": "=CYCLE:call,caul,col"
"KH*EUL/KWREU": "=CYCLE:chili,chilly,Chile"
"KHAO*EUL": "=CYCLE:Chile,chili,chilly"
"KHEUL/*E": "=CYCLE:Chile,chili,chilly"
"KHEUL/*EU": "=CYCLE:chili,chilly,Chile"
"KHEUL/HREU": "=CYCLE:chilly,chili,Chile"
"KHOERD": "=CYCLE:chord,cord,cored"
"KHORD": "=CYCLE:chord,cord,cored"
"KO*EL": "=CYCLE:Cole,cole,coal,kohl,Kohl"
"KOEL": "=CYCLE:coal,cole,Cole,kohl,Kohl"
"KOL": "=CYCLE:col,call,caul"
"KOR/-D": "=CYCLE:cored,cord,chord"
"KORD": "=CYCLE:cord,chord,cored"
"KP*EL": "=CYCLE:Excel,excel"
"KRA*UL": "=CYCLE:caul,call,col"
"KRAED": "=CYCLE:cede,seed"
"KRAED/*ER": "=CYCLE:ceder,seeder,cedar"
"KRAO*ED": "=CYCLE:cede,seed"
"KRAO*ED/*ER": "=CYCLE:ceder,seeder,cedar"
"KRAOELG": "=CYCLE:ceiling,sealing,seeling"
"KREPBT": "=CYCLE:cent,sent,scent"
"KRERPBS": "=CYCLE:censor,censer,sensor"
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
"SAELG": "=CYCLE:sealing,ceiling,seeling"
"SAO*ED": "=CYCLE:seed,cede"
"SAO*ED/*ER": "=CYCLE:seeder,cedar,ceder"
"SAOE/TKAR": "=CYCLE:cedar,ceder,seeder"
"SAOED": "=CYCLE:seed,cede"
"SAOED/*ER": "=CYCLE:seeder,cedar,ceder"
"SAOED/A*R": "=CYCLE:cedar,ceder,seeder"
"SAOED/AR": "=CYCLE:cedar,ceder,seeder"
"SAOELG": "=CYCLE:sealing,ceiling,seeling"
"SE/TKAR": "=CYCLE:cedar,ceder,seeder"
"SEPB/SER": "=CYCLE:censer,censor,sensor"
"SEPBS/ER": "=CYCLE:censer,censor,sensor"
"SEPBT": "=CYCLE:sent,cent,scent"
"SERPBS": "=CYCLE:sensor,censor,censer"
"SKEPBT": "=CYCLE:scent,sent,cent"
"SKRAOELG": "=CYCLE:ceiling,sealing,seeling"
"SKREPBT": "=CYCLE:scent,sent,cent"
```

[homophones]: https://en.wikipedia.org/wiki/Homophone
[Plover Cycle Translations]: https://github.com/paulfioravanti/plover-cycle-translations
[proper noun]: https://en.wikipedia.org/wiki/Proper_noun
[`words.md`]: ./words.md
