# Cycleable Entries

The following outlines all leverage the [Plover Cycle Translations][] plugin to
make their translations cycleable to any existing [homophones][], [proper
nouns][], alternative spellings, or other words I may deem "relevant".

The first word in the cycleable word list is the one whose outline is
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

The following are outlines for _new_ word entries that are not currently
contained in Plover theory. These cycleable entries override [New entries in my
Words Dictionary][]

```yaml
"AERPB": "=CYCLE:erne,earn,urn"
"KHO*EL": "=CYCLE:Kohl,kohl,coal,cole,Cole"
"KHOURD": "=CYCLE:cowherd,coward,cowered"
"KO*EUPB": "=CYCLE:quoin,coign,coin"
"KO*URS": "=CYCLE:corse,course,coarse"
"KRO*EL": "=CYCLE:cole,Cole,coal,kohl,Kohl"
"KROEUPB": "=CYCLE:coign,quoin,coin"
"KWRAO*EFS": "=CYCLE:Yves,eaves,eves"
"KWRAOEFS": "=CYCLE:Yves,eaves,eves"
"PWO*URPB": "=CYCLE:Bourne,bourn,borne,born"
"PWRA*EUZ": "=CYCLE:Braze,braze,braise,brays"
"PWRA*EZ": "=CYCLE:Braze,braze,braise,brays"
```

## Alternative

The following outlines are overrides to _alternative_ outlines for word entries
that already exist in Plover theory. These cycleable entries override
[Alternative entries in my Words Dictionary][].


```yaml
"PWA*EUFS": "=CYCLE:basis,bases,basses"
"STKAR": "=CYCLE:cedar,ceder,seeder"
"TKAO*EUR": "=CYCLE:dyer,dire,dier"
```

## Overrides

The following outlines technically override the ones in Plover: not because
I think they would be better mapped elsewhere, but just because I want to make
their translations cycleable. They also could override [Overrides entries in my
Words Dictionary][].


```yaml
"*EUL": "=CYCLE:I'll,aisle,isle"
"A*EFS": "=CYCLE:eaves,eves,Yves"
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
"AOEFS": "=CYCLE:eves,eaves,Yves"
"AOEU": "=CYCLE:eye,aye,I"
"AOEUL": "=CYCLE:I'll,aisle,isle"
"EBGS/*EL": "=CYCLE:Excel,excel"
"EBGS/EL": "=CYCLE:excel,Excel"
"ERPB": "=CYCLE:earn,urn,erne"
"KAO*ED": "=CYCLE:cede,seed"
"KAO*ED/*ER": "=CYCLE:ceder,seeder,cedar"
"KAOELG": "=CYCLE:ceiling,sealing,seeling"
"KAORS": "=CYCLE:coarse,course,corse"
"KAUL": "=CYCLE:call,caul,col"
"KH*EUL/KWREU": "=CYCLE:chili,chilly,Chile"
"KHAO*EUL": "=CYCLE:Chile,chili,chilly"
"KHEUL/*E": "=CYCLE:Chile,chili,chilly"
"KHEUL/*EU": "=CYCLE:chili,chilly,Chile"
"KHEUL/HREU": "=CYCLE:chilly,chili,Chile"
"KHOERD": "=CYCLE:chord,cord,cored"
"KHORD": "=CYCLE:chord,cord,cored"
"KO*EL": "=CYCLE:Cole,cole,coal,kohl,Kohl"
"KO*URD": "=CYCLE:cowered,coward,cowherd"
"KOEL": "=CYCLE:coal,cole,Cole,kohl,Kohl"
"KOEUPB": "=CYCLE:coin,quoin,coign"
"KOL": "=CYCLE:col,call,caul"
"KOR/-D": "=CYCLE:cored,cord,chord"
"KORD": "=CYCLE:cord,chord,cored"
"KORS": "=CYCLE:course,coarse,corse"
"KOURD": "=CYCLE:coward,cowered,cowherd"
"KOURS": "=CYCLE:course,coarse,corse"
"KP*EL": "=CYCLE:Excel,excel"
"KRA*UL": "=CYCLE:caul,call,col"
"KRAED": "=CYCLE:cede,seed"
"KRAED/*ER": "=CYCLE:ceder,seeder,cedar"
"KRAO*ED": "=CYCLE:cede,seed"
"KRAO*ED/*ER": "=CYCLE:ceder,seeder,cedar"
"KRAOELG": "=CYCLE:ceiling,sealing,seeling"
"KREPBT": "=CYCLE:cent,sent,scent"
"KRERPBS": "=CYCLE:censor,censer,sensor"
"KWORS": "=CYCLE:course,coarse,corse"
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
"TKAOEUR": "=CYCLE:dire,dyer,dier"
"TKO*ES": "=CYCLE:does,doze,doughs"
"TKOEZ": "=CYCLE:doze,does,doughs"
"URPB": "=CYCLE:urn,earn,erne"
```

[Alternative entries in my Words Dictionary]: ./words.md#alternative
[homophones]: https://en.wikipedia.org/wiki/Homophone
[New entries in my Words Dictionary]: ./words.md#new
[Overrides entries in my Words Dictionary]: ./words#overrides
[Plover Cycle Translations]: https://github.com/paulfioravanti/plover-cycle-translations
[proper nouns]: https://en.wikipedia.org/wiki/Proper_noun
