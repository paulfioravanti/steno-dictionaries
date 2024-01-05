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
* [Proper Nouns](#proper-nouns)
* [Prefixes, Suffixes, Abbreviations](#prefixes-suffixes-abbreviations)
* [Phrases](#phrases)
* [Fingerspelling](#fingerspelling)
* [Punctuation](#punctuation)
* [Commands](#commands)

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

## Proper Nouns

```yaml
"A*L/A*L": "Alabama"    # Al           
"AEUD/*EPB": "Aiden"    # Aidan        
"H*ET/*ER": "Heather"   # heather      
"HA*RLD": "Harold"      # hardly       
"KAEUT/KAEUT": "Cate"   # Kate         
"KAO*EPB": "Keene"      # keen         
"KW*ERT": "QWERTY"      # Qwerty       
"KWER/TEU": "Qwerty"    # QWERTY       
"PAO*ET": "Peat"        # Pete         
"PEPB/TPH*EU": "Penny"  # penny        
"PW*ERL": "Beryll"      # Beryl        
"PWA*EUB": "Babe"       # baby         
"TK*UF": "Duff"         # dove         
"PWAO*E": "Bea"         # {bio^}       
"RAED/PHAO*E": "README" # readme       
"RO*FL": "Rolf"         # Rolfe        
"SHA*EUFR": "Shaffer"   # shaver       
"THOPL": "Thom"         # Tom          
"TK-R": "Dr."           # --           
"TKO*RPB": "Doner"      # donor        
"TPA*EU": "Fay"         # if a         
"TPHO*RPB": "Northern"  # northern     
```

## Prefixes, Suffixes, Abbreviations

```yaml
"A*BG": "acc"          # Arkansas                    
"A*EUT": "{eight-^}"   # eight                       
"A*FD": "asdf"         # avid                        
"AO*EBGS": "eex"       # objection                   
"AO*UT": "{out-^}"     # {out^}                      
"ETS": "etc"           # et cetera                   
"EUG": "{ig^}"         # ig                          
"KWRA*ER": "{^iary}"   # area                        
"KWRO*UT": "{^-out}"   # {out-^}                     
"O*UT": "{^out}"       # {^-out}                     
"P*BGS": "{^px}"       # People's Exhibit No.#G      
"P-BGS": "px"          # People's Exhibit#G          
"PWA*EBG": "{^back}"   # {back^}                     
"S*EFL": "{^self}"     # self                        
"S*EUBGS": "{six-^}"   # sixth                       
"S-FG": "svg"          # SVG                         
"S-FGS": "svgs"        # SVGs                        
"THRAO*E": "{three-^}" # Three                       
"TP*EUF": "{five-^}"   # five                        
"TPH*PL": "npm"        # New Mexico                  
"TPO*UR": "{four-^}"   # Four                        
```

## Phrases

```yaml
"*ED": "he'd"                    # Ed
"*EUD": "I'd"                    # Idaho
"*EUG": "I go"                   # {Ig^}
"*EUL": "I'll"                   # Illinois
"*UF": "you've"                  # UV
"*UFB": "you've been"            # usb
"*UFD": "you've had"             # USD
"*UG": "you go"                  # ugh
"*UPBG": "you think"             # uncle
"*UR": "you're"                  # you are
"-FPL": "of my"                  # {.}
"-FTS": "was the"                # of the
"-FZ": "of those"                # 600
"-PL/H-PL": "mm-hmm"             # Mm-hmm
"-T/HRAOUFR": "the louver"       # the Louver
"-T/HROEUPB": "the loin"         # loin
"-TS": "it is"                   # the
"AEUFR": "a few"                 # Acer
"AFT": "after the"               # after
"AO*URB": "you shall"            # Uber
"AOEUF": "I have"                # I've
"AOEUFB": "I have been"          # I've been
"AOUFT": "used to"               # out of
"AUB": "all about"               # {sub^}
"AUFS": "all of us"              # office
"ED": "he had"                   # Ed
"EUD": "I had"                   # id
"EUFL": "I feel"                 # {^ively}
"EUFRG": "I went"                # Irving
"EULTS": "it's like"             # its
"EUP": "I happen"                # IP
"EURPBD": "I wonder"             # understand
"H*EPBGS": "he thinks"           # hypertension
"H*ES": "he's"                   # Hess
"H-B": "had been"                # {^-^}
"HA": "had a"                    # that
"HAO*EL": "he will"              # he'll
"HAOEF": "he have"               # heave
"HAOERDZ": "here is the"         # heard
"HAOERS": "here is"              # here's
"HAOES": "he is"                 # he's
"HERP": "he were"                # herpes
"HO*UFR": "how far"              # however
"HO*UT": "how to"                # how the
"HOUD": "how had"                # how'd
"HRAFPLT": "last time"           # Louisiana
"HRAOF": "a lot of"              # loaf
"HRUF": "will you have"          # love
"HRUFR": "will you ever"         # lover
"HU/HU": "huh-huh"               # uh-uh
"K*T": "can the"                 # Connecticut
"K-G": "can go"                  # kilogram
"KA*": "can a"                   # Kansas
"KE": "can he"                   # he can
"KHOER": "each other"            # chore
"KO*F": "could've"               # cognitive
"KO*UF": "could you've"          # could've
"KOF": "could have"              # cough
"KOU": "could you"               # cow
"KOUB": "could you be"           # could be
"KOUF": "could you have"         # could have
"KOUPBLT": "could you not"       # count
"KRAOEPL/TPOR": "cream for"      # Cremophor
"KREPL/TPOR": "creme for"        # cremophor
"KU/WAEUT": "can you wait"       # Kuwait
"KUFR": "can you ever"           # customer
"KWHRAOER": "last year"          # year
"KWR*EUPBG": "I think"           # Ying
"KWR*PB": "y'know"               # I know
"KWR-LD": "why would"            # ideal
"KWR-S": "why is"                # {^s ,}
"KWREUPBG": "I think"            # I don't think
"KWREUPBGS": "I think so"        # I didn't think so
"O*BG": "{^, okay,}"             # Oklahoma
"O*ERBGS": "{^, oh,}"            # oh
"O*EUPLT": "I am the"            # ointment
"O*FRD": "off the record"        # offered
"O*PBT": "on it"                 # on the
"OEFRT": "over the"              # overt
"PH*UFT": "must have"            # must
"PHAO*EU": "am I"                # my
"PHUB": "must be"                # money
"PW*EUT": "by the"               # {^-bit}
"PWA*E": "by a"                  # Bea
"PWA*UT": "because the"          # bought
"PWAEUBL": "be able"             # baseball
"PWHOF": "on behalf of"          # above
"PWUT": "but the"                # but
"PWUTD": "but the"               # but
"RAOEURT": "right here"          # right
"S*E": "as he"                   # {^es}
"S*PB": "is an"                  # sine
"S*T": "as the"                  # St.{-|}
"SA*PB": "as an"                 # is an
"SEBGD/HRAOEUF": "second life"   # Second Life
"SHAOED": "she had"              # she'd
"SHAOEL": "she will"             # she'll
"SHOU": "should you"             # somehow
"SKP-RB": "and she"              # and shall
"SKP-TS": "and it is"            # {^s and the}
"SKPHORPBG": "and morning"       # morning and
"SKPOEFR": "and over"            # over and
"SKPOPB": "and on"               # on and
"SKPREFRPBS": "and reference"    # reference and
"SKPUL": "and you will"          # and you'll
"SKPUP": "and up"                # up and
"SKPUR": "and you are"           # and you're
"SKPW": "and with"               # and
"SKWAL": "is equal"              # equal
"SKWRAO*E": "I see"              # Jay
"SO*R": "or so"                  # sore
"SR*EU": "I have"                # have a
"SR*U": "you have"               # have you
"SR-PB": "have an"               # haven't
"SR-PBTD": "haven't had"         # haven't
"SRA*EU": "I have a"             # have a
"SREU": "have I"                 # I have
"SRUFR": "have you ever"         # Have you ever
"STH-RBGT": "is this correct"    # is this correct{?}
"STHARBGT": "is that correct"    # is that correct{?}
"STHATS": "so that's"            # that's
"STHEUPBG": "same thing"         # something
"STKO": "and do"                 # do is
"STKPWEPB": "and again"          # again
"STP": "as if"                   # {?}
"STPH": "is in"                  # {?}
"STPHRAOEUPB": "single line"     # center line
"T*DZ": "it doesn't"             # {&T}
"T*ET": "at the time"            # death
"T*PB": "to know"                # Tennessee
"T-D": "it had"                  # {^ed it}
"T-L": "it will"                 # it'll
"T-PL": "to me"                  # {.}
"T-S": "it is"                   # St.{-|}
"T-T": "at it"                   # the
"TA": "at a"                     # that
"TA*UL": "at all"                # {^-tall}
"TAO*US": "use it"               # Tuesday
"TAOUS": "to use"                # use it
"TH-L": "this will"              # this'll
"THA*EUD": "that I'd"            # they'd
"THA*EUF": "that I've"           # they've
"THA*T": "at that time"          # that the
"THABG": "that can"              # thank
"THAD": "that had"               # {^ed that}
"THAEUBG": "that I can"          # take
"THAEUD": "that I had"           # they'd
"THAEUFR": "of their"            # their
"THAF": "that have"              # that've
"THAL": "that will"              # that'll
"THALGTS": "that that"           # that's
"THARB": "that she"              # that shall
"THATD": "that they"             # that'd
"THAUF": "that you have"         # that you've
"THAUR": "that you are"          # that you're
"THED": "they had"               # they'd
"THEF": "they have"              # they've
"THEFPL": "of them"              # them
"THEL": "they will"              # they'll
"THER": "they are"               # they're
"THOEPL": "at home"              # them
"THR*": "it will"                # there
"THR-D": "there had"             # there'd
"THR-L": "there will"            # there'll
"THR-S": "there is"              # there's
"THU": "thank you"               # you this
"TK*UG": "did you go"            # Doug
"TKAO*UT": "due to"              # duty
"TKHE": "did he"                 # they did
"TKO*UPB": "do you know"         # {^-down}
"TKOEPB": "don't know"           # done
"TKOEUT": "do it"                # data
"TKOPBLT": "do not"              # doesn't
"TKPW*FG": "gonna have"          # gonna
"TKPW*GS": "gonna say"           # going to
"TKPW-B": "go back"              # goodbye
"TKPW-T": "go to"                # get
"TKPWETD": "get the"             # get
"TKPWO*ET": "go to"              # goat
"TKPWUFS": "give us"             # gives
"TKU/PWAOEU": "did you buy"      # Dubai
"TKUF": "did you have"           # Duff
"TKUFR": "did you ever"          # duffer
"TKUZ": "did you see"            # does
"TKWROUR": "to your"             # your
"TO*ER": "to her"                # tore
"TO*S": "to say"                 # toss
"TO*UR": "to our"                # tower
"TOD": "to do"                   # {^ed to}
"TOFRB": "to have been"          # torch
"TOG": "to go"                   # {^ing to}
"TP-RB": "if she"                # efficient
"TPAEU": "if a"                  # Fay
"TPEUBG": "if I can"             # Fick
"TPEUF/PERS": "five percent"     # 5%
"TPH*E": "if he"                 # Nebraska
"TPH*T": "in it"                 # income tax
"TPH-FP": "in which"             # inch
"TPHA": "in a"                   # that
"TPHAO*": "into a"               # into
"TPHAO*EUPL": "in my"            # New York Public Library
"TPHE": "if he"                  # to me
"TPHED": "if he had"             # Ned
"TPHER": "in her"                # {^ener}
"TPHEUFT": "any of the"          # {^ist}
"TPHO*EUPBS": "no one's"         # autonomic nervous system
"TPHO*U": "{^, now,}"            # now
"TPHOEUPBS": "no one said"       # no one's
"TPHORB": "not sure"             # New York
"TPHORTD": "in order to"         # in order
"TPHROPBT": "in front"           # front
"TPHUP": "end up"                # newspaper
"TPHURPB": "in turn"             # turn in
"TPO*PL": "for my"               # facilities/operations management
"TPOEUT": "for it"               # photo
"TPORB": "for sure"              # for sure
"TPOT": "for the"                # not
"TPREUTS": "from its"            # Fritz
"UD": "you had"                  # you'd
"UF": "you have"                 # you've
"UFB": "you have been"           # USB
"UFPB": "you knew"               # {un^}
"UL": "you will"                 # you'll
"UR": "you are"                  # you're
"URB": "you shall"               # you're
"URBL": "you shall"              # usual
"URL": "you recall"              # URL
"URLD": "you recalled"           # ultrasound
"W*PL": "with my"                # WPM
"W-PL": "with me"                # WPM
"W-RS": "where is"               # where's
"WA*": "with a"                  # Washington
"WAEPBLT": "was not"             # eventually
"WAO*ED": "we'd"                 # weed
"WAOED": "weed"                  # we'd
"WAOEF": "we have"               # we've
"WAOEL": "we will"               # we'll
"WAOER": "we are"                # we're
"WEF": "we have"                 # weave
"WEFPBT": "we haven't"           # went
"WEFRB": "we need"               # everywhere
"WEUL/HROE/TRAOE": "willow tree" # WillowTree
"WEUR": "which are"              # wire
"WH-RB": "when she"              # when shall
"WH-RP": "when were"             # when were
"WHAL": "what will"              # what'll
"WHARB": "what she"              # what shall
"WHATD": "what they"             # what'd
"WHATS": "what is the"           # what's
"WHAUF": "what you have"         # what you've
"WHE": "when he"                 # when
"WHOF": "who have"               # who've
"WHOL": "who will"               # who'll
"WHOR": "who are"                # whore
"WHOU": "who you"                # how
"WHOUR": "who you are"           # who you're
"WHUR": "when you are"           # when you're
"WO*E": "would he"               # woe
"WO*G": "would go"               # working
"WO*UF": "would you've"          # would've
"WOF": "would have"              # wolf
"WOPT": "would want"             # won't
"WOUB": "would you be"           # would be
"WOUF": "would you have"         # would have
"WOUFB": "would you have been"   # would have been
"WR-RB": "where she"             # whereby
"WRU": "were you"                # you were
```

## Fingerspelling

```yaml
"*EU": "{^i^}"    # {>}{&i}
"A*FPLT": "{&A.}" # amount
"TP-PLT": "{&f-}" # {.}
```

## Punctuation

```yaml
"-RB": "--"       # {^,^}                                                                       
"KHR*PB": ":{^}"  # {:^} (see https://github.com/openstenoproject/plover/issues/1407)           
"KW*L": "{^=^}"   # =                                                                           
"PR*PB": "{^)^}"  # p.r.n. (pro re nata)                                                        
"STK-RB": "{^--}" # --                                                                          
"TK-RBG": "{--^}" # --                                                                          
"HA*ERB": "{^#^}" # #                                                                           
```

## Commands

```yaml
"SK-PBT": "{MODE:CAPS}{MODE:SET_SPACE:_}" # cannot
```

[this version]: https://github.com/paulfioravanti/steno-dictionaries/blob/5c75e3ef78a6d4884f13f0000493ba57a098e5e8/dictionaries/overrides.md
