# Overrides Dictionary

This dictionary contains overrides for already-existing Plover outlines. The
reasons why I chose to override an outline will vary, but could include things
like:

- The outline looks like handling for a mis-stroke that perhaps the original
  dictionary author needed, but that I don't feel I need, and would rather
  re-purpose
- The outline looks like a brief that doesn't resonate with me, and I'd
  rather re-purpose
- The outline looks like it would be better used for some other word where
  Plover has established a pattern for words of a similar type
- The pronounced accent on the outline doesn't seem right to me, and causes
  confusion (happens a fair bit with long/short vowels)
- The original outline could be the cause of a Plover bug and needs to be
  overridden in order to fix the bug
- The outline looks valid and consistent with Plover theory, but:
  - the frequency that I would use a word causes me to want to swap the entries
    for an outline and its `*`-flagged version
  - it's more convenient for me to use it for something else
  - I want to build muscle memory on a preferred outline that requires me to
    override an existing outline
  - the text that it maps to already has multiple other outlines entries, and
    so the outline would be better re-purposed being mapped to another word
    that, say, Plover theory did not assign a one stroke brief to
  - there was some other reason I wanted to change it

> Many entries had specific explanations about why I chose to override them, but
> I removed them since I never seemed to reference them again after I wrote
> them. If you need it, you may be able to find the original override reason in
> [this version][] of the overrides dictionary

I expect this to be a living dictionary, with words added, removed, and changed
as Plover updates, and my understanding of Plover increases.

Comments after the entries indicate the original Plover mapping.

<!-- vim-markdown-toc GFM -->

* [Words](#words)

<!-- vim-markdown-toc -->

## Words

```yaml
"*EB": "eastbound"           # {^en}
"-PT": "want"                # {^.^}
"-TD": "they"                # the
"A*RPBG": "anchor"           # anger
"AL/HREU": "alley"           # ally
"AOERPB": "eastern"          # Eastern
"AOERT": "eater"             # either
"AOEUD": "id"                # I'd
"AUPL/-S": "automobiles"     # alms
"AUPLS": "automobiles"       # alms
"EFLT": "evaluate"           # {^est}
"EFPBS": "essence"           # Evans
"EFPLT": "estimate"          # {&E.}
"ETS": "etc"           # et cetera                   
"EUFRPB": "inch"             # {infra^}
"H*ERPS": "helpers"          # herpes
"H*U": "uh"                  # huh
"HARLD": "hardly"            # Harold
"HO": "ho"                   # who
"HO*": "oh"                  # ho
"HO*EUR": "hurry"            # hero
"HR*UFRPB": "lurch"          # lunch
"HRO*EU": "alloy"            # I will
"HRUFRPB": "lunch"           # lurch
"HU": "huh"                  # uh
"KAOURT": "accurate"         # cutter
"KAPL/KWROE": "cameo"        # Cameo
"KAUFD": "coughed"           # caused
"KAUFG": "coughing"          # causing
"KAUFS": "coughs"            # causes
"KOUPBL": "council"          # counsel
"KR*D": "{^cd}"              # CD
"KRAETD": "created"          # credit
"KRAOET": "concrete"         # create
"KREBLGT": "correctly"       # correct
"KWRA*BG": "yack"            # yak
"KWRAER": "area"             # {^iary}
"KWRAUL": "yawl"             # y'all
"O*UFT": "outfit"            # oust
"OB": "obvious"              # on
"OEFRDZ": "overrides"        # offered
"OULT": "outline"            # out
"OUTD": "outed"              # out
"PA*RS": "passer"            # parse
"PAUZ": "paws"               # pause
"PH*E": "meh"                # Maine
"PHA*EPB": "mane"            # Man
"PHAOEP": "meetup"           # mean
"PHAOEP/-S": "meetups"       # means
"PHAOEPS": "meetups"         # means
"PHREU": "reply"             # MRI
"POBGS": "position"          # pox
"POEUT": "point"             # PO2
"PRAL": "principle"          # principal
"PROB": "problem"            # probable
"PROEBL": "probable"         # probably
"PWAEUFG": "behaving"        # basing
"PWAOEUFBG": "bicycle"       # basic
"PWOELD": "bowled"           # bowl
"PWORBG/-G": "borking"       # working
"R*ELGS": "religion"         # relation
"RA*EUFD": "raved"           # raised
"RAEUPLD": "remained"        # Raymond
"RAO*ER": "either"           # endoplasmic reticulum
"RAOUFS": "refuse"           # reduces
"REBGT/-G": "recollecting"   # recollection
"ROEU": "roadway"            # Roy
"ROFL": "revolve"            # Rolf
"RORBG": "rhetoric"          # Rourke
"SAOURP": "super"            # supper
"SEFL": "self"               # {^self}
"SEUPBLG/*L": "sigil"        # single
"SHAEBG": "shak"             # chic
"SHAO*U": "shew"             # Zhou
"SKERPB": "concern"          # cancer
"SKRAO*E": "scree"           # psychiatry
"SKWR*EL": "jell"            # {well-^}
"SKWRAOUR": "injure"         # injury
"SKWRER/SEU": "jersey"       # Jersey
"SKWRUFLT": "justly"         # just
"SOERL": "solar"             # sorely
"SPWAOUS": "induce"          # abuse
"SPWAPBL": "entangle"        # substantial
"SR*ERT": "subvert"          # severity
"SREUPL": "vim"              # victim
"SRO*EULTD": "violated"      # violate
"STAR/TPEURB": "starfish"    # star fish
"STKAOEFD": "deceased"       # deceived
"STKAOES": "decease"         # disease
"STO*EUD": "studio"          # Studio
"STO*EUPB": "stoin"          # steno
"SURP": "supper"             # syrup
"T*EFD": "testified"         # tested
"T*EUF": "tiff"              # {^tive}
"TAOUPL": "tuple"            # tomb
"TEF": "testify"             # test
"TEF/-D": "testified"        # tested
"THAOUS": "enthuse"          # use it
"TKAO*EUD": "dyed"           # died
"TKEF/STAEUTD": "devastated" # devastate
"TKPW*/PHAEUL": "gmail"      # Gmail
"TKPWA*RPB": "gardener"      # garden
"TKREUBGT": "district"       # direct
"TO*T": "tot"                # to the
"TPAOEF": "fief"             # fever
"TPAOEPBGS": "phoenix"       # Phoenix
"TPH-GTS": "noticing"        # notice
"TPHA*F": "nav"              # 1/2
"TPHERPBLG": "energy"        # merge
"TPHO*E": "info"             # know
"TPHORPB": "northern"        # Northern
"TPHRA*BG": "flack"          # FLAC
"TPRAOEUPBG": "frightening"  # frying
"TRA*PBS": "trance"          # trans
"TRAEUPL": "trademark"       # train
"UPBGS": "understanding"     # unction
"WA*EPB": "weaken"           # wane
"WERPB": "western"           # Western
"WRAOEUGT": "writing"        # Wright
```

[this version]: https://github.com/paulfioravanti/steno-dictionaries/blob/5c75e3ef78a6d4884f13f0000493ba57a098e5e8/dictionaries/overrides.md
