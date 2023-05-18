# Overrides Dictionary

This dictionary contains override outlines for already-existing Plover outlines,
along with explanations and attempted justifications for why I thought they were
needed.

Hopefully, the dictionary will serve as a reference for whether you would like
to also supplement your Plover dictionaries with any of the overrides I have.
However, it mostly exists so that future-me remembers why I made the decisions
to override any outlines in the first place.

I expect this to be a living dictionary, with words added and removed as Plover
updates, and my understanding of Plover increases.

If you see any outlines here that you think will get me in trouble, or you are
just baffled by (I am a total amateur at this...), by all means please let me
know, either by [opening an issue][steno_dictionaries issues], or
[tweeting at me][@paulfioravanti].

<!-- vim-markdown-toc GFM -->

* [Words](#words)
    - [`"-PT": "want"`](#-pt-want)
    - [`"A*BG": "acc"`](#abg-acc)
    - [`"A*EUT": "{eight-^}"`](#aeut-eight-)
    - [`"A*FD": "asdf"`](#afd-asdf)
    - [`"A*FPLT": "{&A.}"`](#afplt-a)
    - [`"A*RPBG": "anchor"`](#arpbg-anchor)
    - [`"AL/HREU": "alley"`](#alhreu-alley)
    - [`"AO*EBGS": "eex"`](#aoebgs-eex)
    - [`"AO*UT": "{out-^}"`, `"O*UT": "{^out}"`, and `"KWRO*UT": "{^-out}"`](#aout-out--out-out-and-kwrout--out)
    - [`"AOERPB": "eastern"`](#aoerpb-eastern)
    - [`"AOERT": "eater"`](#aoert-eater)
    - [`"EFLT": "evaluate"`](#eflt-evaluate)
    - [`"EFPBS": "essence"`](#efpbs-essence)
    - [`"EFPLT": "estimate"`](#efplt-estimate)
    - [`"ETS": "etc"`](#ets-etc)
    - [`"EUFRPB": "inch"`](#eufrpb-inch)
    - [`"H*U": "huh"` and `"HU": "uh"`](#hu-huh-and-hu-uh)
    - [`"HAOERS": "here is"`](#haoers-here-is)
    - [`"HARLD": "hardly"` and `"HA*RLD": "Harold"`](#harld-hardly-and-harld-harold)
    - [`"HO": "ho"` and `"HO*": "oh"`](#ho-ho-and-ho-oh)
    - [`"HO*EUR": "hurry"`](#hoeur-hurry)
    - [`"HRAOF": "a lot of"`](#hraof-a-lot-of)
    - [`"HRUFRPB": "lunch"` and `"HR*UFRPB": "lurch"`](#hrufrpb-lunch-and-hrufrpb-lurch)
    - [`"KAOURT": "accurate"`](#kaourt-accurate)
    - [`"KAPL/KWROE": "cameo"`](#kaplkwroe-cameo)
    - [`"KAUFD": "coughed"`, `"KAUFG": "coughing"`, `"KAUFS": "coughs"`](#kaufd-coughed-kaufg-coughing-kaufs-coughs)
    - [`"KHR*PB": ":{^}"`](#khrpb-)
    - [`"KOUPBL": "council"`](#koupbl-council)
    - [`"KR*D": "cd"`](#krd-cd)
    - [`"KRAETD": "created"`](#kraetd-created)
    - [`"KRAOET": "concrete"`](#kraoet-concrete)
    - [`"KREBLGT": "correctly"`](#kreblgt-correctly)
    - [`"KW*L": "{^=^}"`](#kwl-)
    - [`"KWRA*BG": "yack"`](#kwrabg-yack)
    - [`"KWRAER": "area"` and `"KWRA*ER": "{^iary}"`](#kwraer-area-and-kwraer-iary)
    - [`"KWRAUL": "yawl"`](#kwraul-yawl)
    - [`"O*EUPLT": "I am the"`](#oeuplt-i-am-the)
    - [`"O*UFT": "outfit"`](#ouft-outfit)
    - [`"OB": "obvious"`](#ob-obvious)
    - [`"OULT": "outline"`](#oult-outline)
    - [`"OUTD": "outed"`](#outd-outed)
    - [`"P*BGS": "{^px}"` and `"P-BGS": "px"`](#pbgs-px-and-p-bgs-px)
    - [`"PA*RS": "passer"`](#pars-passer)
    - [`"PAUZ": "paws"`](#pauz-paws)
    - [`"PHA*EPB": "mane"`](#phaepb-mane)
    - [`"PHAOEP": "meetup"`, `"PHAOEPS": "meetups"`, and `"PHAOEP/-S": "meetups"`](#phaoep-meetup-phaoeps-meetups-and-phaoep-s-meetups)
    - [`"PHREU": "reply"`](#phreu-reply)
    - [`"PR*PB": "{^}){^}"`](#prpb-)
    - [`"PRAL": "principle"`](#pral-principle)
    - [`"PROB": "problem"`](#prob-problem)
    - [`"PWA*EBG": "{^back}"`](#pwaebg-back)
    - [`"PWAEUFG": "behaving"`](#pwaeufg-behaving)
    - [`"PWAO*E": "Bea"` and `"PWA*E": "by a"`](#pwaoe-bea-and-pwae-by-a)
    - [`"PWAOEUFBG": "bicycle"`](#pwaoeufbg-bicycle)
    - [`"PWOELD": "bowled"`](#pwoeld-bowled)
    - [`"PWORBG/-G": "borking"`](#pworbg-g-borking)
    - [`"PWUT": "but the"`](#pwut-but-the)
    - [`"R*ELGS": "religion"`](#relgs-religion)
    - [`"RA*EUFD": "raved"`](#raeufd-raved)
    - [`"RAED/PHAO*E": "README"`](#raedphaoe-readme)
    - [`"RAEUPLD": "remained"`](#raeupld-remained)
    - [`"RAOUFS": "refuse"`](#raoufs-refuse)
    - [`"REBGT/-G": "recollecting"`](#rebgt-g-recollecting)
    - [`"ROEU": "roadway"`](#roeu-roadway)
    - [`"RORBG": "rhetoric"`](#rorbg-rhetoric)
    - [`"S*EUBGS": "{six-^}"`](#seubgs-six-)
    - [`"S-FG": "svg"` and `"S-FGS": "svgs"`](#s-fg-svg-and-s-fgs-svgs)
    - [`"SEFL": "self"` and `"S*EFL": "{^self}"`](#sefl-self-and-sefl-self)
    - [`"SEUPBLG/*L": "sigil"`](#seupblgl-sigil)
    - [`"SHAEBG": "shak"`](#shaebg-shak)
    - [`"SHAO*U": "shew"`](#shaou-shew)
    - [`"SK-PBT": "{MODE:CAPS}{MODE:SET_SPACE:_}"`](#sk-pbt-modecapsmodeset_space_)
    - [`"SKERPB": "concern"`](#skerpb-concern)
    - [`"SKRAO*E": "scree"`](#skraoe-scree)
    - [`"SKWR*EL": "jell"`](#skwrel-jell)
    - [`"SOERL": "solar"`](#soerl-solar)
    - [`"SREUPL": "vim"`](#sreupl-vim)
    - [`"SRO*EULTD": "violated"`](#sroeultd-violated)
    - [`"STAR/TPEURB": "starfish"`](#startpeurb-starfish)
    - [`"STKAOEFD": "deceased"`](#stkaoefd-deceased)
    - [`"STKAOES": "decease"`](#stkaoes-decease)
    - [`"STK-RB": "{^--}"`, `"TK-RBG": "{--^}"`, and `"STK-RBG": "{^--^}"`](#stk-rb----tk-rbg----and-stk-rbg---)
    - [`"STO*EUPB": "stoin"`](#stoeupb-stoin)
    - [`"STO*EUD": "studio"`](#stoeud-studio)
    - [`"TEF": "testify"`, `"TEF/-D": "testified"`, and `"T*EFD": "testified"`](#tef-testify-tef-d-testified-and-tefd-testified)
    - [`"T*EUF": "tiff"`](#teuf-tiff)
    - [`"TAOUPL": "tuple"`](#taoupl-tuple)
    - [`"THAOUS": "enthuse"`](#thaous-enthuse)
    - [`"THRAO*E": "{three-^}"`](#thraoe-three-)
    - [`"THU": "thank you"`](#thu-thank-you)
    - [`"TK-R": "Dr."`](#tk-r-dr)
    - [`"TKAO*EUD": "dyed"`](#tkaoeud-dyed)
    - [`"TKEF/STAEUTD": "devastated"`](#tkefstaeutd-devastated)
    - [`"TKPW*/PHAEUL": "gmail"`](#tkpwphaeul-gmail)
    - [`"TKREUBGT": "district"`](#tkreubgt-district)
    - [`"TO*T": "tot"`](#tot-tot)
    - [`"TP*EUF": "{five-^}"`](#tpeuf-five-)
    - [`"TP-PLT": "{&f-}"`](#tp-plt-f-)
    - [`"TPA*EU": "Fay"`](#tpaeu-fay)
    - [`"TPAOEF": "fief"`](#tpaoef-fief)
    - [`"TPAOEPBGS": "phoenix"`](#tpaoepbgs-phoenix)
    - [`"TPH*E": "if he"`](#tphe-if-he)
    - [`"TPH-GTS": "noticing"`](#tph-gts-noticing)
    - [`"TPH*PL": "in my"`](#tphpl-in-my)
    - [`"TPHA*F": "nav"`](#tphaf-nav)
    - [`"TPHERPBLG": "energy"`](#tpherpblg-energy)
    - [`"TPHO*E": "info"`](#tphoe-info)
    - [`"TPHO*U": "{^, now,}"`](#tphou--now)
    - [`"TPHORPB": "northern"` and `"TPHO*RPB": "Northern"`](#tphorpb-northern-and-tphorpb-northern)
    - [`"TPHRA*BG": "flack"`](#tphrabg-flack)
    - [`"TPRAOEUPBG": "frightening"`](#tpraoeupbg-frightening)
    - [`"TPO*UR": "{four-^}"`](#tpour-four-)
    - [`"TRAEUPL": "trademark"`](#traeupl-trademark)
    - [`"UPBGS": "understanding"`](#upbgs-understanding)
    - [`"WRAOEUGT": "writing"`](#wraoeugt-writing)
* [Phrases](#phrases)
    - [`"*ED": "he'd"`](#ed-hed)
    - [`"*EUD": "I'd"`, `"EUD": "I had"`, and `"AOEUD": "id"`](#eud-id-eud-i-had-and-aoeud-id)
    - [`"*EUL": "I'll"`](#eul-ill)
    - [`"*UFD": "you have had"`](#ufd-you-have-had)
    - [`"*UPBG": "you think"`](#upbg-you-think)
    - [`"-FTS": "was the"`](#-fts-was-the)
    - [`"-FZ": "of those"`](#-fz-of-those)
    - [`"-T/HRAOUFR": "the louver"`](#-thraoufr-the-louver)
    - [`"-T/HROEUPB": "the loin"`](#-throeupb-the-loin)
    - [`"-TS": "it is"` and `"-TD": "they"`](#-ts-it-is-and--td-they)
    - [`"AFT": "after the"`](#aft-after-the)
    - [`"AOEUF": "I have"` and `"AOEUFB": "I have been"`](#aoeuf-i-have-and-aoeufb-i-have-been)
    - [`"AO*URB": "you shall"`, `"URB": "you shall"`, `"URBL": "you shall"`](#aourb-you-shall-urb-you-shall-urbl-you-shall)
    - [`"AUB": "all about"`](#aub-all-about)
    - [`"AUFS": "all of us"`](#aufs-all-of-us)
    - [`"ED": "he had"`](#ed-he-had)
    - [`"EUFRG": "I went"`](#eufrg-i-went)
    - [`"EULTS": "it's like"`](#eults-its-like)
    - [`"H*EPBGS": "he thinks"`](#hepbgs-he-thinks)
    - [`"H*ES": "he's"`](#hes-hes)
    - [`"H-B": "had been"`](#h-b-had-been)
    - [`"HAO*EL": "he will"`](#haoel-he-will)
    - [`"HAOEF": "he have"`](#haoef-he-have)
    - [`"HAOERDZ": "here is the"`](#haoerdz-here-is-the)
    - [`"HAOES": "he is"`](#haoes-he-is)
    - [`"HERP": "he were"` and `"H*ERPS": "helpers"`](#herp-he-were-and-herps-helpers)
    - [`"HO*UT": "how to"`](#hout-how-to)
    - [`"HOUD": "how had"`](#houd-how-had)
    - [`"HRUF": "will you have"` and `"HRUFR": "will you ever"`](#hruf-will-you-have-and-hrufr-will-you-ever)
    - [`"HU/HU": "huh-huh"`](#huhu-huh-huh)
    - [`"K*T": "can the"`](#kt-can-the)
    - [`"K-G": "can go"`](#k-g-can-go)
    - [`"KA*": "can a"`](#ka-can-a)
    - [`"KE": "can he"`](#ke-can-he)
    - [`"KOF": "could have"`, `"KO*F": "could've"`, `"KOUF": "could you have"`, `"KO*UF": "could you've"`](#kof-could-have-kof-couldve-kouf-could-you-have-kouf-could-youve)
    - [`"KOU": "could you"`, `"KOUB": "could you be"`, `"KOUPBLT": "could you not"`](#kou-could-you-koub-could-you-be-koupblt-could-you-not)
    - [`"KRAOEPL/TPOR": "cream for"` and `"KREPL/TPOR": "creme for"`](#kraoepltpor-cream-for-and-krepltpor-creme-for)
    - [`"KU/WAEUT": "can you wait"`](#kuwaeut-can-you-wait)
    - [`"KUFR": "can you ever"`](#kufr-can-you-ever)
    - [`"KWR*PB": "y'know"`](#kwrpb-yknow)
    - [`"KWR-S": "why is"`](#kwr-s-why-is)
    - [`"KWREUPBG": "I think"` and `"KWR*EUPBG": "I think"`](#kwreupbg-i-think-and-kwreupbg-i-think)
    - [`"KWREUPBGS": "I think so"`](#kwreupbgs-i-think-so)
    - [`"O*BG": "{^, okay,}"`](#obg--okay)
    - [`"O*ERBGS": "{^, oh,}"`](#oerbgs--oh)
    - [`"O*PBT": "on it"`](#opbt-on-it)
    - [`"OEFRT": "over the"`](#oefrt-over-the)
    - [`"PW*EUT": "by the"`](#pweut-by-the)
    - [`"PWA*UT": "because the"`](#pwaut-because-the)
    - [`"PWAEUBL": "be able"`](#pwaeubl-be-able)
    - [`"PWUTD": "but the"`](#pwutd-but-the)
    - [`"RAOEURT": "right here"`](#raoeurt-right-here)
    - [`"S*PB": "as an"`](#spb-as-an)
    - [`"S*T": "as the"`](#st-as-the)
    - [`"SEBGD/HRAOEUF": "second life"`](#sebgdhraoeuf-second-life)
    - [`"SHAOED": "she had"`](#shaoed-she-had)
    - [`"SHAOEL": "she will"`](#shaoel-she-will)
    - [`"SHOU": "should you"`](#shou-should-you)
    - [`"SHRAO*EUPB": "single line"`](#shraoeupb-single-line)
    - [`"SKP-RB": "and she"`](#skp-rb-and-she)
    - [`"SKPHORPBG": "and morning"`](#skphorpbg-and-morning)
    - [`"SKPOEFR": "and over"`](#skpoefr-and-over)
    - [`"SKPREFRPBS": "and reference"`](#skprefrpbs-and-reference)
    - [`"SKPUP": "and up"`](#skpup-and-up)
    - [`"SKPUR": "and you are"`](#skpur-and-you-are)
    - [`"SKPW": "and with"`](#skpw-and-with)
    - [`"SR*EU": "I have"` and `"SREU": "have I"`](#sreu-i-have-and-sreu-have-i)
    - [`"SR*U": "you have"`](#sru-you-have)
    - [`"SR-PBTD": "haven't had"`](#sr-pbtd-havent-had)
    - [`"SRUFR": "have you ever"`](#srufr-have-you-ever)
    - [`"SKWAL": "is equal"`](#skwal-is-equal)
    - [`"SKWRAO*E": "I see"`](#skwraoe-i-see)
    - [`"STH-RBGT": "is this correct"`](#sth-rbgt-is-this-correct)
    - [`"STHARBGT": "is that correct"`](#stharbgt-is-that-correct)
    - [`"STKO": "and do"`](#stko-and-do)
    - [`"STKPWEPB": "and again"`](#stkpwepb-and-again)
    - [`"STPH": "is in"`](#stph-is-in)
    - [`"T*DZ": "it doesn't"`](#tdz-it-doesnt)
    - [`"T*ET": "at the time"`](#tet-at-the-time)
    - [`"T*PB": "to know"`](#tpb-to-know)
    - [`"T-D": "it had"`](#t-d-it-had)
    - [`"T-L": "it will"`](#t-l-it-will)
    - [`"T-PL": "to me"`](#t-pl-to-me)
    - [`"T-S": "it is"`](#t-s-it-is)
    - [`"T-T": "at it"`](#t-t-at-it)
    - [`"TA": "at a"` and `"HA": "had a"`](#ta-at-a-and-ha-had-a)
    - [`"TA*UL": "at all"`](#taul-at-all)
    - [`"TAOUS": "to use"` and `"TAO*US": "use it"`](#taous-to-use-and-taous-use-it)
    - [`"TH-L": "this will"`](#th-l-this-will)
    - [`"THA*EUF": "that I've"`](#thaeuf-that-ive)
    - [`"THA*T": "at the time"`](#that-at-the-time)
    - [`"THAD": "that had"`](#thad-that-had)
    - [`"THAEUD": "that I had"` and `"THA*EUD": "that I'd"`](#thaeud-that-i-had-and-thaeud-that-id)
    - [`"THAF": "that have"`](#thaf-that-have)
    - [`"THAL": "that will"`](#thal-that-will)
    - [`"THALGTS": "that that"`](#thalgts-that-that)
    - [`"THATD": "that they"`](#thatd-that-they)
    - [`"THAUF": "that you have"` and `"THAUR": "that you are"`](#thauf-that-you-have-and-thaur-that-you-are)
    - [`"THED": "they had"`, `"THEF": "they have"`, `"THEL": "they will"`, and](#thed-they-had-thef-they-have-thel-they-will-and)
    - [`"THEFPL": "of them"`](#thefpl-of-them)
    - [`"THAEUFR": "of their"`](#thaeufr-of-their)
    - [`"THR*": "it will"`](#thr-it-will)
    - [`"THR-D": "there had"`](#thr-d-there-had)
    - [`"THR-L": "there will"`](#thr-l-there-will)
    - [`"THR-S": "there is"`](#thr-s-there-is)
    - [`"TK*UF": "Duff"` and `"TKUF": "did you have"`](#tkuf-duff-and-tkuf-did-you-have)
    - [`"TKOPBLT": "do not"`](#tkopblt-do-not)
    - [`"TKPW*FG": "gonna have"`](#tkpwfg-gonna-have)
    - [`"TKPW-T": "go to"`](#tkpw-t-go-to)
    - [`"TKPWO*ET": "go to"`](#tkpwoet-go-to)
    - [`"TKU/PWAOEU": "did you buy"`](#tkupwaoeu-did-you-buy)
    - [`"TKUFR": "did you ever"`](#tkufr-did-you-ever)
    - [`"TKWROUR": "to your"`](#tkwrour-to-your)
    - [`"TO*ER": "to her"`](#toer-to-her)
    - [`"TO*S": "to say"`](#tos-to-say)
    - [`"TO*UR": "to our"`](#tour-to-our)
    - [`"TOD": "to do"`](#tod-to-do)
    - [`"TOG": "to go"`](#tog-to-go)
    - [`"TPEUBG": "if I can"`](#tpeubg-if-i-can)
    - [`"TPEUF/PERS": "five percent"`](#tpeufpers-five-percent)
    - [`"TPH*T": "in it"`](#tpht-in-it)
    - [`"TPH-FP": "in which"`](#tph-fp-in-which)
    - [`"TPHA": "in a"`](#tpha-in-a)
    - [`"TPHAO*EUPL": "in my"`](#tphaoeupl-in-my)
    - [`"TPHER": "if her"`](#tpher-if-her)
    - [`"TPHORB": "not sure"`](#tphorb-not-sure)
    - [`"TPHUP": "end up"`](#tphup-end-up)
    - [`"TPHURPB": "in turn"`](#tphurpb-in-turn)
    - [`"TPOEUT": "for it"`](#tpoeut-for-it)
    - [`"TPORB": "for sure"`](#tporb-for-sure)
    - [`"TPOT": "for the"`](#tpot-for-the)
    - [`"UL": "you will"`](#ul-you-will)
    - [`"URL": "you recall"` and `"URLD": "you recalled"`](#url-you-recall-and-urld-you-recalled)
    - [`"W*PL": "with my"`](#wpl-with-my)
    - [`"W-RS": "where is"`](#w-rs-where-is)
    - [`"WA*": "with a"`](#wa-with-a)
    - [`"WAEPBLT": "was not"`](#waepblt-was-not)
    - [`"WAOEL": "we will"`](#waoel-we-will)
    - [`"WAOER": "we are"` and `"WAOEF": "we have"`](#waoer-we-are-and-waoef-we-have)
    - [`"WEF": "we have"`](#wef-we-have)
    - [`"WEFPBT": "we haven't"`](#wefpbt-we-havent)
    - [`"WEFRB": "we need"`](#wefrb-we-need)
    - [`"WERPB": "western"`](#werpb-western)
    - [`"WEUL/HROE/TRAOE": "willow tree"`](#weulhroetraoe-willow-tree)
    - [`"WEUR": "which are"`](#weur-which-are)
    - [`"WH-RB": "when she"`](#wh-rb-when-she)
    - [`"WH-RP": "when were"`](#wh-rp-when-were)
    - [`"WHAL": "what will"`](#whal-what-will)
    - [`"WHARB": "what she"`](#wharb-what-she)
    - [`"WHATD": "what they"`](#whatd-what-they)
    - [`"WHATS": "what is the"`](#whats-what-is-the)
    - [`"WHAUF": "what you have"`](#whauf-what-you-have)
    - [`"WHE": "when he"`](#whe-when-he)
    - [`"WHUR": "when you are"`](#whur-when-you-are)
    - [`"WHOF": "who have"`](#whof-who-have)
    - [`"WHOL": "who will"`](#whol-who-will)
    - [`"WHOR": "who are"`](#whor-who-are)
    - [`"WHOU": "who you"`](#whou-who-you)
    - [`"WHOUR": "who you are"`](#whour-who-you-are)
    - [`"WO*E": "would he"`](#woe-would-he)
    - [`"WO*G": "would go"`](#wog-would-go)
    - [`"WO*UF": "would you've"`, `"WOUF": "would you have"`, and `"WOUFB": "would you have been"`](#wouf-would-youve-wouf-would-you-have-and-woufb-would-you-have-been)
    - [`"WOF": "would have"`](#wof-would-have)
    - [`"WOPT": "would want"`](#wopt-would-want)
    - [`"WOUB": "would you be"`](#woub-would-you-be)
    - [`"WRU": "were you"`](#wru-were-you)
* [Proper Nouns](#proper-nouns)
    - [`"A*L/A*L": "Alabama"`](#alal-alabama)
    - [`"AEUD/*EPB": "Aiden"`](#aeudepb-aiden)
    - [`"H*ET/*ER": "Heather"`](#heter-heather)
    - [`"KAEUT/KAEUT": "Cate"`](#kaeutkaeut-cate)
    - [`"KAO*EPB": "Keene"`](#kaoepb-keene)
    - [`"PAOET/PAOET": "Peat"`](#paoetpaoet-peat)
    - [`"PEPB/TPH*EU": "Penny"`](#pepbtpheu-penny)
    - [`"PW*ERL": "Beryll"`](#pwerl-beryll)
    - [`"PWA*EUB": "Babe"`](#pwaeub-babe)
    - [`"RO*FL": "Rolf"` and `"ROFL": "revolve"`](#rofl-rolf-and-rofl-revolve)
    - [`"SHA*EUFR": "Shaffer"`](#shaeufr-shaffer)
    - [`"THOPL": "Thom"`](#thopl-thom)
    - [`"TKO*RPB": "Doner"`](#tkorpb-doner)
    - [`"UD": "you had"`](#ud-you-had)
    - [`"UF": "you have"` and `"*UF": "you've"`](#uf-you-have-and-uf-youve)
    - [`"UFB": "you have been"` and `"*UFB": "you've been"`](#ufb-you-have-been-and-ufb-youve-been)
    - [`"UR": "you are"` and `"*UR": "you're"`](#ur-you-are-and-ur-youre)

<!-- vim-markdown-toc -->

## Words

### `"-PT": "want"`

Plover uses the following outlines for a period "{^.^}":

```txt
{^.^}:
  P-P
  P-T
  P-PBT
```

I use `P-P` for this, and so I'd like to reassign `P-T` over to be "want" to
match how it's used in phrasing.

```yaml
"-PT": "want"
```

### `"A*BG": "acc"`

Plover uses `A*BG` for the state of Arkansas:

```txt
Arkansas:
  A*BG
  AR/K*S
  A*R/A*R
  ARBG/SAS
  ARBG/SAU
  A*RBG/SAS
  A*RBG/K*S
  AR/KAPB/SAU
```

Arkansas's abbreviation is "AR", so it seems `A*BG` is just a convenience. I
don't use Arkansas often at all, and would rather use it for a common
programming abbreviation, "acc", which I would use far more often.

```yaml
"A*BG": "acc"
```
value
### `"A*EUT": "{eight-^}"`

Plover currently has the following named outlines for "eight":

```txt
eight:
  AET
  A*EUT
```

Reasons for wanting to override `A*EUT` to output "eight-" are similar to ones
described in entry for `"THRAO*E": "three-"`: I want some single-stroke
outlines for fraction numbers that include a dash.

I'm not sure whether I overall prefer `AET` or `A*EUT` for just "eight", so I
may end up switching the outline I use for "eight-" in the future. For now, I
will move forward with overriding the `*`-flagged outline.

```yaml
"A*EUT": "{eight-^}"
```

### `"A*FD": "asdf"`

Plover uses the following outlines for "avid":

```txt
avid:
  AFD
  A*FD
  AF/EUD
  A*F/EUD
  A*F/SREUD
```

`AFD` is the outline that I would use for this, which means it does not need to
take up the `*`-flagged outline as well. I would like to use `A*FD` for the
[`asdf`][] version manager command instead, so I have decided to override it.

```yaml
"A*FD": "asdf"
```

### `"A*FPLT": "{&A.}"`

Plover has a set of outlines that look like they are perhaps used for initials
and acronyms using a fingerspelling letter and a  `*`-flagged `FPLT` suffix:

```txt
{&B.}:
  PW*FPLT
{&C.}:
  KR*FPLT
etc ...
```

However, there is no `{&A.}` at all, and the most likely outline candidate is
`A*FPLT`, and this outline is current assigned to the word "amount". Plover
assigns the following 6 outlines to "amount":

```txt
amount:
  APLT
  A*PLT
  A*EPLT
  A*FPLT
  AO*PLT
  A/A*/A*PLT
```

Out of all these, I think I'm most likely to use `APLT`, so I've decided to
override `A*FPLT` for "{&A.}".

```yaml
"A*FPLT": "{&A.}"
```

### `"A*RPBG": "anchor"`

Plover currently uses the following outlines for "anger":

```txt
anger:
  ARPBG
  A*RPBG
  APBG/ER
  APBG/*ER
  AEUPBG/ER
  APB/TKPWER
```

Plover is using both the `ARPBG` and it's `*`-flagged variant, but it would be
nice if the flagged variant could be used for "anchor", since Plover does not
have a one-stroke brief for it:

```txt
anchor:
  APB/KOR
  APBG/KOR
  AEUPB/KOR
  A*PBG/O*R
  AEUPBG/KOR
```

I would probably use "anger" more often than "anchor", so I have decided to
override `A*RPBG` for "anchor".

```yaml
"A*RPBG": "anchor"
```

### `"AL/HREU": "alley"`

Plover uses the following outlines for "ally":

```txt
ally:
  AL/HREU
  A/HRAOEU
  AL/HRAOEU
```

Since the pronunciation of "ally" uses a long "i" sound, I think that the
`AL/HREU` outline is incorrect, and I would rather assign it to "alley".

```yaml
"AL/HREU": "alley"
```

### `"AO*EBGS": "eex"`

Plover uses the following outlines for "objection":

```txt
objection:
  OBGS
  OPBLGS
  AO*EBGS
  OB/SKWREBGS
  OB/SKWR*EBGS
```

These all make sense to me, except `AO*EBGS`. I don't think I would ever use
that for "objection", so I would like to use it on a tech term that I use far
more often: "eex" (Embedded EliXir)

```yaml
"AO*EBGS": "eex"
```

### `"AO*UT": "{out-^}"`, `"O*UT": "{^out}"`, and `"KWRO*UT": "{^-out}"`

Plover currently assigns the following outlines for "out", its prefixes "{out^}"
and "{out-^}", and suffixes "{^out}" and "{^-out}:

```txt
out:
  OUT
  OUTD
  OULT

{out^}:
  AOT
  AOUT
  AO*UT

{out-^}:
  KWRO*UT

{^out}:
  KWROUT
  SKWROUT

{^-out}:
  O*UT
  SKWRO*UT
```

I prefer multi-stroke outline patterns to use `*` on the second etc strokes to
indicate they should be "glued" to the previous stroke. Therefore, I will make
the following changes:

- `AO*UT` outputs "out-", to provide a `*`-flagged mirror to `AOUT` for "out^"
- `O*UT` outputs "^out", to provide a `*`-flagged mirror to `OUT` for "out"
- `KWRO*UT` outputs "-out", to provide a `*`-flagged mirror to `KWROUT` for
  "^out"

```yaml
"AO*UT": "{out-^}"
"O*UT": "{^out}"
"KWRO*UT": "{^-out}"
```

### `"AOERPB": "eastern"`

Plover uses the following outlines for "eastern", and proper noun "Eastern":

```txt
eastern:
   AOES/TERPB
   AOEFT/ERPB

Eastern:
   AOERPB
   AO*ERPB
   AO*ES/TERPB
```

I think that it should not only be the proper noun that gets a one-stroke
brief, and that the `*`-flagged brief should be the proper noun version.

```yaml
"AOERPB": "eastern"
```

### `"AOERT": "eater"`

Plover currently uses the following outlines for "either":

```txt
either:
  AOERT
  AOEURT
  AO*ERT
  AOERLT
  RAOERT
  AOEURLT
  AO*EURT
  AOE/THER
  AO*EUT/ER
```

The first outline, `AOERT` does not feel right for "either" given its
"th"-sound, so I think I would most likely use `AO*ERT` for "either". Since I
want to have a one stroke outline for "eater", `AOERT` feels like the most
appropriate candidate, so I have decided to override it.

```yaml
"AOERT": "eater"
```

### `"EFLT": "evaluate"`

Plover currently uses the following outlines for the suffix "-est":

```txt
{^est}:
   EFT
   EFLT
```

`EFLT` feels like a mis-stroke; I would only ever use `EFT` for this. Plover's
outlines for "evaluate" are:

```txt
evaluate:
   *EFLT
   SRAELT
   AOE/SRALT
   SRAL/WAEUT
   SRAL/WAEUS
   AOE/SRAL/WAEUT
```

I'm fine with `*EFLT`, but I think this word should also occupy the
non-`*`-flagged outline as well, so I have decided to override it.

```yaml
"EFLT": "evaluate"
```

### `"EFPBS": "essence"`

Plover uses the following entries for the proper nouns "Evan" and "Evans":

```txt
Evan:
  EFPB
  *EFPB
  EF/A*PB
```

```txt
Evans:
  EFPBS
  EFPB/-S
```

To me, the `*`-flagged `*EFPB` makes the most sense for the proper noun with the
"v" sound, so I'd expect "Evans" to be `*EFPBS`. This works as an entry, but is
just not named in the Plover dictionary, so I've added it to the lookup
dictionary.

This leaves `EFPB`, which I'd like to assign to "essence", since it currently
doesn't have a one-stroke brief, and that outline makes sense to me:

```txt
Essence:
  *ES/EPBS

essence:
  ES/SEBS
  ES/EPBS
  ES/SEPBS
  ES/SAPBS
  SES/EPBS
  ESZ/EPBS
```

```yaml
"EFPBS": "essence"
```

### `"EFPLT": "estimate"`

Plover currently uses the following outlines for "{&E.}":

```txt
{&E.}:
  EFPLT
  *EFPLT
```

Most of the family of outlines for initials use a `*FPLT` suffix, and so it
would be `*EFPLT` that I would be most comfortable with for "{&E.}".

Plover uses the following outlines for "estimate":

```txt
estimate:
  STEUPLT
  EFT/PHAT
  *ES/PHAT
  EFT/PHAEUT
  *ES/PHAEUT
  ES/TEU/PHAT
  ES/TEU/PHAEUT
```

These are all fine, but the single stroke outline `STEUPLT`, pronounced
in my head as "stimate", seems to be less intuitive than a potential `EFPLT`
"esmate" outlines.

It will probably be convenient to have both outlines available, as I think I
would use "estimate" more than "{&E.}" anyway, so I have decided to override
`EFPLT` for "estimate".

```yaml
"EFPLT": "estimate"
```

### `"ETS": "etc"`

Plover currently uses the following outlines for "et cetera":

```txt
et cetera:
  ETS
  ELTS
  ETSZ
  EGTS
  ET/SET/RA
  ET/SET/TRA
```

`ETS` is a fine outline for "et cetera", but I think I would use "etc" (without
an ending period) more often. Plover does already have an outline for "etc.":

```txt
etc.:
  *ETS
```

This is a fine outline as well, but I would also prefer there to be an outline
without the ending period.

So, I have decided to override `ETS` for "etc", and use `ELTS` as my main
outline for the full word "et cetera".

```yaml
"ETS": "etc"
```

### `"EUFRPB": "inch"`

Plover uses the following outlines for the prefix "{infra^}":

```txt
{infra^}:
  EUFRPB
  TPRAEUPB
  EUPB/TPRA
```

Given that the outline for infra is inverted, I think using a `*`-flag seems
more natural, so I will add an alt outline for that. Therefore, I'd like to
override `EUFRPB` for "inch".

```yaml
"EUFRPB": "inch"
```

### `"H*U": "huh"` and `"HU": "uh"`

Plover uses the following briefs for "huh" and "uh" noises:

```txt
huh:
  H*U
```

```txt
uh:
  HU
```

I think these should be reversed.

```yaml
"H*U": "uh"
"HU": "huh"
```

### `"HAOERS": "here is"`

Plover uses the following outlines for the contraction "here's":

```txt
here's:
  HAOERS
  HAO*ERS
  HAOER/AES
  HAOERS/AE
```

These are fine, but there is no brief for the phrase "here is". So I'd like to
reassign `HAOERS` to be "here is".

```yaml
"HAOERS": "here is"
```

### `"HARLD": "hardly"` and `"HA*RLD": "Harold"`

Plover uses the following outlines for the words "Harold" and "hardly":

```txt
Harold:
  HARLD
  HAEURLD
  HOR/OLD
  HAR/OLD
  HAR/OELD
  HAEUR/OLD
  HAEUR/OELD
```

```txt
hardly:
  HA*RLD
  HARD/HREU
```

I tend to think of proper nouns as having `*`-flags, so I'd like to swap the
single stoke entries for these two words around. 

```yaml
"HA*RLD": "Harold"
"HARLD": "hardly"
```

### `"HO": "ho"` and `"HO*": "oh"`

Plover currently uses the following outlines for "who":

```txt
who:
  HO
  WHO
  KWHO
  WHRO
```

`WHO` makes the most sense to me as the outline for "who", but `HO` definitely
does not, so I'd like to override it for "ho".

This decision frees up the `HO*` outline currently assigned to "ho":

```txt
ho:
  HO*
  HO*E
```

I actually want to assign this to "oh", because Plover's current outline for
"oh" is incredibly unintuitive:

```txt
oh:
  O*ERBGS
```

This outline is meant to be the alternative for the "comma-less" version of
"oh,":

```txt
oh{,}:
  OERBGS
```

`RGBS` here comes from the outline for a comma:

```txt
{,}:
  -RB
  -RBG
  -RGS
  -RBS
  KW-B
  -BGS
  W-BG
  KW-BG
  -RBGS
  -FRBGS
```

Taking a comma after "oh" as an assumption means awkward strokes to make, say,
the comma-less exclamation phrase "oh no". I just want to make "oh" simpler, so
I have decided to take the `HO*` outline and consider the `*`-flag an indicator
to reverse the spelling of "ho".

```yaml
"HO": "ho"
"HO*": "oh"
```

### `"HO*EUR": "hurry"`

Plover uses the following outlines for "hero":

```txt
hero:
  HOEUR
  HO*EUR
  HAOE/ROE
```

Since hero has two briefs, I'd like to take one of them and assign it to
"hurry", since it does not have a single-stroke brief, and the `*`-flagged one
makes the most sense to me, pronunciation-wise.

```yaml
"HO*EUR": "hurry"
```

### `"HRAOF": "a lot of"`

Plover uses the following outlines for the word "loaf":

```txt
loaf:
  HROEF
  HRAOF
```

These are fine, but I would tend to use `HROEF` the most, and so I'd like to use
`HRAOF` as an alt for "a lot of", and instead give "loaf" another alt of
`HRAO*F`.

```yaml
"HRAOF": "a lot of"
```

### `"HRUFRPB": "lunch"` and `"HR*UFRPB": "lurch"`

Plover uses the following outlines for "lunch" and "lurch":

```txt
lunch:
  HRUPBS
  HR*UFRPB
  HRUFRPBLG
  HRUPB/*FP
  HRUPB/-FRP
```

```txt
lurch:
  HRUFRPB
  HR*URPBLG
```

Since I use "lunch" significantly more than "lurch", I'd prefer to have "lunch"
easier to stroke, and therefore have decided to switch `HRUFRPB` to "lunch" and
`HR*UFRPB` to "lurch".

```yaml
"HR*UFRPB": "lurch"
"HRUFRPB": "lunch"
```

### `"KAOURT": "accurate"`

Plover has the following entries for "cutter":

```txt
cutter:
  KAOURT
  KUT/ER
  KUT/*ER
  KUT/TER
  KUT/T*ER
  TKUT/*ER
```

The single word brief with the long "u" sound, `KAOURT`, seems a bit off to me
for "cutter", especially since "cut" is `KUT`. I think `KAOURT` would be better
served as a single-stroke brief for "accurate", which currently does not have
one:

```txt
accurate:
  ABG/R-T
  ABG/RAT
  ABG/KRAT
  KABG/RAT
  ABG/KWRU/RAT
  ABG/KAOU/RAT
  ABG/KWRAOU/RAT
```

I do not want to lose a single-stroke brief for "cutter", so I will add some alt
briefs for it using strokes unused by Plover: `KAO*URT` and `KRURT`.

```yaml
"KAOURT": "accurate"
```

### `"KAPL/KWROE": "cameo"`

Plover has a named entry for capitalised "Cameo", but not for lower cased:

```txt
Cameo:
  KAPL/KWROE
```

My view is that `KAPL/KWROE` should be for the lower cased general word "cameo",
and if there is a proper noun version, then it should be `*`-flagged. So, I have
decided to override `KAPL/KWROE` for "cameo", and add `KAPL/KWRO*E` as an
alternate brief for "Cameo".

```yaml
"KAPL/KWROE": "cameo"
```

### `"KAUFD": "coughed"`, `"KAUFG": "coughing"`, `"KAUFS": "coughs"`

Plover uses the following outlines for "coughed", "coughing":

```txt
coughed:
  KOFD
```

```txt
coughing:
  KOFG
  KAUF/-G
```

There is also the following outlines for "causes":

```txt
causes:
  KAUFS
  KA*UFS
```

I want to standardise `KAUF` for "cough", and so these overrides fix a few of
its word stems.


```yaml
"KAUFD": "coughed"
"KAUFG": "coughing"
"KAUFS": "coughs"
```

### `"KHR*PB": ":{^}"`

As per [openstenoproject/plover#1407][], it looks like there is a bug in
`main.json`. The following outline causes an error in Plover:

```txt
{:^}:
  KHR*PB
```

So, to fix the bug, I'm overriding the outline to be `:{^}`.

```yaml
"KHR*PB": ":{^}"
```

### `"KOUPBL": "council"`

Plover uses the following outlines for "counsel":

```txt
counselor:
  KOURPB
  KOUPBL
  KOURPBL
  KOUPB/HROR
  KOUPBL/HROR
  KOUPBS/EL/HROR
  KOUPB/SEL/HROR
```

The brief that I would use here would be `KOURPB`, and so I want to repurpose
`KOUPBL` to "council" since that doesn't have a single stroke brief.

```yaml
"KOUPBL": "council"
```

### `"KR*D": "cd"`

Plover uses the following outline for the abbreviation "CD":

```txt
CD:
  KR*D
```

In principle, this is totally fine, but I want to have a one-stroke outline for
the Unix command `cd` (change directory), and I think `KR*D` fits the bill best,
so I have decided to override it.

I do not want to lose the entry for "CD", though, so I have decided to add in an
alternative outline for it: `KR*D/KR*D`.

```yaml
"KR*D": "{^cd}"
```

### `"KRAETD": "created"`

Plover's outlines for "create" are:

```txt
create:
  KRAET
  KRAOET
  KRAOELT
  KRAOE/AEUT
  KRAOE/KWRAEUT
```

Yet the outlines for "created" are:

```txt
created:
  KRAOETD
  KRAOET/-D
  TKRAOET/-D
```

I want to be able to use the outline `KRAETD` for "created", but it's currently
being used by "credit":

```txt
credit:
  KRET
  KRETD
  KRAETD
  KREUTD
  SKRETD
  KRED/EUT
  KRE/TKEUT
  KRED/TKEUT
```

For "credit", I am most likely to use `KRETD`, or maybe `KRET`, but definitely
not `KRAETD`. So, I have decided to override `KRAETD` for "created".

```yaml
"KRAETD": "created"
```

### `"KRAOET": "concrete"`

Plover uses the following outlines for "create":

```txt
create:
  KRAET
  KRAOET
  KRAOELT
  KRAOE/AEUT
  KRAOE/KWRAEUT
```

The outline I would use here would be `KRAET`. `KRAOET` doesn't sound right to
me as "create", so I've decided to override it to be "concrete".

```yaml
"KRAOET": "concrete"
```

### `"KREBLGT": "correctly"`

Plover currently uses the following outlines for "correct":

```txt
correct:
  KREBGT
  KRERBG
  KREBLGT
  KOR/REBGT
```

These look fine, except for `KREBLGT`, which looks to me like it has an inverted
`L` for the final "ly" sound, due to the most logical brief being `KREBGT`.

Therefore, I have decided to override `KREBLGT` for "correctly".

```yaml
"KREBLGT": "correctly"
```

### `"KW*L": "{^=^}"`

Plover uses the following outlines for the "=" character:

```txt
=:
  KW-L
  KW*L
```

I want to use the `*`-flagged version to indicate no spaces before or after the
= sign.

```yaml
"KW*L": "{^=^}"
```

### `"KWRA*BG": "yack"`

Plover assigns two outlines to "yak":

```txt
yak:
  KWRABG
  KWRA*BG
```

"[Yack][]" does not currently have an outline entry in Plover, and I figure that
"yak" does not need two. I do think I am more likely to use "yak" than "yack",
so "yack" gets the `*`-flagged version of the outline.

```yaml
"KWRA*BG": "yack"
```

### `"KWRAER": "area"` and `"KWRA*ER": "{^iary}"`

Plover uses the following outlines for the word "area" and the suffix "{^iary}":

```txt
area:
  KWRA*ER
  TKWRA*ER
  KWRA*UFR
  KWRA*EUR
  KWRA*ERB
  AER/KWRA
  AEUR/KWRA
  HAEUR/KWRA
  AEUR/TKWRA
  AEUR/KWR57Z
```

```txt
{^iary}:
  KWRAER
```

The outline for a suffix makes more sense using a `*`-flag, so I'm going to swap
the one used for "{^iary}" with `KWRA*ER`, and use `KWRAER` for "area" as I find
myself constantly reaching for it.

```yaml
"KWRA*ER": "{^iary}"
"KWRAER": "area"
```

### `"KWRAUL": "yawl"`

Plover assigns the following outlines to "y'all":

```txt
y'all:
  KWRAUL
  KWRA*UL
  KWRA/AUL
  KWRAOU/AUL
```

"[Yawl][]" does not currently have an outline entry in Plover, and "y'all"
probably does not need to have both the `KWRAUL` and `KWRA*UL` assigned to it.
`KWRA*UL` for "y'all" probably makes the most sense to me, given the apostrophe,
so I have decided to override `KWRAUL` for "yawl".

```yaml
"KWRAUL": "yawl"
```

### `"O*EUPLT": "I am the"`

Plover currently uses the following outlines for "ointment":

```txt
ointment:
  OEUPLT
  O*EUPLT
  OEUPBT/*PLT
```

Given that I have a brief `O*EUPL` for "I am", it makes sense to have `O*EUPLT`
output "I am the", since there is already a `*`-less outline for "ointment".

```yaml
"O*EUPLT": "I am the"
```

### `"O*UFT": "outfit"`

Plover has the following outlines for "oust":

```txt
oust:
  OUFT
  O*UFT
```

`OUFT` feels like the one I would use all the time for "oust". I would like a
single-stroke outline for "outfit", and `O*UFT` seems like a good..._fit_...for
this word, so I've decided to override it.

```yaml
"O*UFT": "outfit"
```

### `"OB": "obvious"`

Plover uses the following outlines for "on":

```txt
on:
  OB
  OPB
{^on}:
  O*PB
{on^}:
  AUPB
  AOPB
```

Leaving aside the prefixes and suffixes, although I can understand `OPB` for
"on", `OB` for "on" does not make sense to me, especially given that `OBL` is
used for "obviously".

Therefore, I have decided to override `OB` for "obvious".

```yaml
"OB": "obvious"
```

### `"OULT": "outline"`

Plover currently uses the following outlines for "out":

```txt
out:
  OUT
  OUTD
  OULT
```

The only one that makes sense to me here is `OUT`, and I have to assume that the
others are mis-strokes. Therefore, I'd like to take `OULT` and use it as the
outline for "outline", a word I tend to use quite often.

```yaml
"OULT": "outline"
```

### `"OUTD": "outed"`

Plover currently uses the following outlines for "out":

```txt
out:
  OUT
  OUTD
  OULT
```

The only one that makes sense to me here is `OUT`, and I have to assume that the
others are mis-strokes. Therefore, I'd like to take `OUTD` and use it as the
outline for "outed".

```yaml
"OUTD": "outed"
```

### `"P*BGS": "{^px}"` and `"P-BGS": "px"`

Plover has the following outlines:

```txt
People's Exhibit No.#G:
  P*BGS

People's Exhibit#G:
  P-BGS
```

These seem like _very_ specific legal terms that probably do not belong in a
general dictionary. Since I am not a court reporter, the chances of me using
these terms are very small.

However, in order to not lose the entries, I have re-assigned them alt outlines
of:

```txt
"P*BGZ": "People's Exhibit No.#G"
"P-BGZ": "People's Exhibit#G"
```

Instead, I want to assign both `P*BGS` and `P-BGS` to "px", the abbreviation for
"pixel", something I use very often while coding CSS files.

```yaml
"P*BGS": "{^px}"
"P-BGS": "px"
```

### `"PA*RS": "passer"`

Plover currently uses the following outlines for "parse":

```txt
parse:
  PARS
  PA*RS
```

Both of these make sense, but I would like to have a one-stroke brief for
"passer" that uses an inverted `R`. Hence, I have decided to override `PA*RS`
for "passer", even though "passer" already has two outlines assigned to it:

```txt
passer:
  PAS/*ER
  PAS/SER
```

```yaml
"PA*RS": "passer"
```

### `"PAUZ": "paws"`

Plover has the following outlines for "pause":

```txt
pause:
  PAUS
  PAUZ
```

Out of these two outlines, I think I would be more likely to use `PAUS` for
"pause", which leaves `PAUZ` free to assign to "paws", which I wanted a
one-stroke brief for, and which makes sense to me since the outline for "paw"
is `PAU`.

```yaml
"PAUZ": "paws"
```

### `"PHA*EPB": "mane"`

Plover currently does not have an outline entry for "[mane][]". My initial
preferred outline for this, `PHAEPB`, is assigned to "many", which I do not want
to change. The `*`-flagged version of this outline is currently assigned to:

```txt
Man:
  PHA*EPB
```

...which I figure I would use less than "mane", so I have overridden it.

```yaml
"PHA*EPB": "mane"
```

### `"PHAOEP": "meetup"`, `"PHAOEPS": "meetups"`, and `"PHAOEP/-S": "meetups"`

Plover currently uses the following outlines for "mean":

```txt
mean:
  PHAOEP
  PHAOEPB
```

I'm pretty sure that `PHAOEP` is a mis-stroke, since it's missing the `B` from
the "n" sound. Therefore, I'd like to use `PHAOEP` for a word I use more often:
"meetup".

```yaml
"PHAOEP": "meetup"
"PHAOEPS": "meetups"
"PHAOEP/-S": "meetups"
```

### `"PHREU": "reply"`

Plover currently uses the following outlines for "MRI":

```txt
MRI:
  PHREU
  PHR*EU
  PH-RBGS/R*EU
```

I would like to have a one-stroke brief for "reply", and `PHREU` seems like the
best candidate, so I will override it, since I think I would use "reply" more
often than "MRI". Keeping `PHR*EU` for "MRI" makes sense to me since it is an
abbreviation, and they are typically `*`-flagged.

```yaml
"PHREU": "reply"
```

### `"PR*PB": "{^}){^}"`

Plover uses the following outlines for the abbreviation "p.r.n." for the phrase
[pro re nata][]:

```txt
p.r.n.:
  PR*PB
  P*RPB
  P*PD/R*PB
```

The chances of me using this phrase often is extremely low since I do not use
medical terminology often. So, I would like to use the `PR*PB` outline as the
mirror outline for `PR-PB`, an alt outline I've created for left bracket (`(`).

```yaml
"PR*PB": "{^)^}"
```

### `"PRAL": "principle"`

Plover uses the following outlines for homophones "principal" and "principle":

```txt
principal:
  PRAL
  PRA*L
  PR*EUPB
  PREUPB/P-L
  PREUPBS/PAL
  PREUPB/SEU/PAL
```

```txt
principle:
  PREUPB
  PREUPBL
  PREUPBS/P-L
  PREUPB/SEU/P-L
  PREUPB/SEUP/-L
```

You can see there is `*`-flag mirroring with the `PREUPB` and `PR*EUPB`
outlines, but I think the other one stroke briefs should also do the same. Since
`PR*EUPBL` is already a named entry for "provisional", I'll just move `PRAL`
over to be "principle".

```yaml
"PRAL": "principle"
```

### `"PROB": "problem"`

Plover currently has the following outlines for "probable" and for "problem":

```txt
probable:
  PROB
  PROB/-L
  PROB/-BL
```

```txt
problem:
  PRO*B
  PRO*FB
  TPRO*B
  PROB/HREPL
  PRO/PWHREPL
```

It seems strange to me that the `*`-flagged `PRO*B` is used for "problem", what
I would have thought to be a much more common word than "probable", which takes
`PROB`. Also, "probable" having the `PROB` outline by itself makes the rest of
it's outlines redundant.

In my mind, I often abbreviate "problem" to "prob", as in "no probs!", so it
makes more sense to me for `PROB` to resolve to "problem", so I have decided to
override it.

```yaml
"PROB": "problem"
```

### `"PWA*EBG": "{^back}"`

Plover uses the following "back"-related prefix and suffix outlines:

```txt
{^back}:
  PWA*BG
{back^}:
  PWAEBG
  PWA*EBG
```

Given that the prefix {back^} is `PWAEBG`, it would make more sense to me to
have `PWA*EBG` be the outline for its partnering suffix {^back}.

Doing this would also "free up" the `PWA*BG` outline for other uses, most likely
for a custom command. Therefore, I have decided to override (or essentially
re-assign) `PWA*EBG` to {^back}.

```yaml
"PWA*EBG": "{^back}"
```

### `"PWAEUFG": "behaving"`

Plover currently uses the following outlines for "behave":

```txt
behave:
  PWAEUF
  PWHAEUF
  PWHA*EUF
  PWHRAEUF
  PWE/HAEUF
  PWE/HA*EUF
  PWAOE/HAEUF
```

When adding a `G` to the shortest outline, `PWAEUF`, to form `PWAEUFG`, it
outputs "basing", which I think is unexpected. Plover's named outlines for
"basing" are:

```txt
basing:
  PWAEUFG
  PWAEUS/-G
```

Using standard Plover, you can also output "basing" with the outline `PWAEUGS`,
with an inverted `G`, which I find the most natural fit for "basing". Given that
that one-stroke outline is already available in Plover, I think that `PWAEUFG`
can be re-purposed for "behaving".

```yaml
"PWAEUFG": "behaving"
```

### `"PWAO*E": "Bea"` and `"PWA*E": "by a"`

Plover uses the following outlines for the prefix "{bio^}":

```txt
{bio^}:
  PWO*E
  PWAO*E
  PWAOEU/KWROE
```

Of the briefs, I think I would use `PWO*E`, so I'd instead like to reassign
`PWAO*E` to the proper noun "Bea", which Plover assigns the following outlines:

```txt
Bea:
  PWA*E
```

Although this is a fine outline, I'd like to have a one-stroke brief for the
phrase "by a", and `PWA*E` seems to be the most appropriate one to use.

```yaml
"PWA*E": "by a"
"PWAO*E": "Bea"
```

### `"PWAOEUFBG": "bicycle"`

Plover uses the following outlines for "basic":

```txt
basic:
  PWAEUFBG
  PWAOEUFBG
  PWAEUFPBG
  PWAEUS/EUBG
```

I would tend to use `PWAEUFBG` for "basic". `PWAOEUFBG` reads more like
"bicycle" to me, so I've decided to override it.

```yaml
"PWAOEUFBG": "bicycle"
```

### `"PWOELD": "bowled"`

Plover uses the following outline for "bowl":

```txt
bowl:
  PWOEL
```

Yet, if you attempt a single-stroke plural, `PWOELD`, you get "bold":

```txt
bold:
  PWOLD
  PWOELD
```

There is no current entry for "bowled", and since "bold" has two, I think that
`PWOELD` can be overridden to fix this issue.

```yaml
"PWOELD": "bowled"
```

### `"PWORBG/-G": "borking"`

Plover uses the following outlines for "working":

```txt
working:
  WOG
  WORBG/-G
  PWORBG/-G
```

The first two are fine, but I would think that `PWORBG/-G` is a misstroke,
especially since `PWORBG` by itself is "bork".

So, I've decided to override `PWORBG/-G` for "borking" since I want to use that
word.

```yaml
"PWORBG/-G": "borking"
```

### `"PWUT": "but the"`

Plover uses the following outlines for the word "but":

```txt
but:
  PWU
  WUT
  PWUT
  PWUTS
  PWHUT
  PWUTD
  PWUT/UT
```

I would like to have a one-stroke phrase for "but the", and since just "but" is
`PWU`, I think that `PWUT` fits the bill.

```yaml
"PWUT": "but the"
```

### `"R*ELGS": "religion"`

Plover currently uses the following outlines for "relation":

```txt
relation:
  RELGS
  R*ELGS
  REL/AEUGS
  RE/HRAEUGS
```

These are all reasonable, but "relation" occupying two single-stroke outlines
means one could be allocated elsewhere. Given that the word "religion" does not
have a single-stroke outline:

```txt
religion:
  REL/EUGS
  RE/HR-GS
  RE/HRUGS
  RE/HREUGS
  RE/HREUPBLG/O*PB
  RAOE/HREUPBLG/OPB
  RE/HREUPBLG/KWROPB
  RE/HREUPBLG/SKWROPB
```

I think that `R*ELGS` for "RELiSHUN" would be an appropriate use of the outline.

```yaml
"R*ELGS": "religion"
```

### `"RA*EUFD": "raved"`

Plover has the following named entries for "raised":

```txt
raised:
  RAEUFD
  RA*EUFD
```

This would be fine, but there is no one-stroke brief for the word "raved", and I
think that `RA*EUFD` fits the bill to give it one.

```yaml
"RA*EUFD": "raved"
```

### `"RAED/PHAO*E": "README"`

Plover uses the following outline for "readme":

```txt
readme:
  RAED/PHAO*E
```

This is okay, but I'd like to have that outline be for the upcase version:
"README". I do want to keep the lower case version as well, so I've decided to
create an alt outline for "readme" as `"RAED/PHAOE"`.

```yaml
"RAED/PHAO*E": "README"
```

### `"RAEUPLD": "remained"`

Plover uses the following outlines for "remain":

```txt
remain:
  RAEUPL
  RE/PHAUPB
  RE/PHAEUPB
  RAOE/PHAEUPB
```

The words "remains" and "remaining" can be stroked with `RAEUPLS` and `RAEUPLG`,
but `RAEUPLD` produces proper noun "Raymond", which is unexpected.

Therefore, I have decided to provide an alternative `*`-flagged outline for
"Raymond", `RA*EUPLD`, and override `RAEUPLD` to follow the pattern and output
"remain".

```yaml
"RAEUPLD": "remained"
```

### `"RAOUFS": "refuse"`

Plover uses the following outlines for "reduces":

```txt
reduces:
  RAOUFS
  RAOUSZ
  RAO*UFS
  RE/TKAOUS/-S
  RE/TKPAOUS/-S
  RAOE/TKAOUS/-S
```

I would tend to use `RAOUSZ` for this. Also, "refuse" currently doesn't have a
one-stroke brief, so I'd like to use `RAOUFS` for this.

```yaml
"RAOUFS": "refuse"
```

### `"REBGT/-G": "recollecting"`

Plover currently uses the following outlines for "recollection":

```txt
recollection:
  REBGT/-G
  REBG/HREGS
  REBG/HREBGS
  REBG/HR*EBGS
```

Using `-G` for the "shun" sound doesn't feel right to me, especially since
Plover's named entry for "recollecting" is:

```txt
recollecting:
  REBG/HREBGT/-G
```

That entry means you cannot brief `REBGT` for "recollect" when you want to
stroke "recollecting", but you can for "recollects", which I find strange.
Therefore, I have decided to override `REBGT/-G` for "recollecting".

As a result of this, I have also decided to introduce a `*GS` suffix for when
you want to add a "shun" sound at the end of a word that you have already
stroked, so "recollection" can be stroked as `REBGT/*GS`.

```yaml
"REBGT/-G": "recollecting"
```

### `"ROEU": "roadway"`

Plover currently uses the following outlines for the proper noun "Roy":

```txt
Roy:
  ROEU
  RO*EU
  ROEU/ROEU
```

Platinum Steno uses `ROEU` as a brief for "roadway", which seems reasonable.
Since the `*`-flagged version would be the one I would most likely reach for to
stroke the proper noun "Roy", I'm happy to override `ROEU` for "roadway".

```yaml
"ROEU": "roadway"
```

### `"RORBG": "rhetoric"`

Plover uses the following outlines for "rhetoric":

```txt
rhetoric:
  RET/REUBG
  RET/OR/EUBG
  RET/TOR/REUBG
```

I'd like a one-stoke brief for this, `RORBG`, but it's already being used by the
proper noun "Rourke":

```txt
Rourke:
  RORBG
```

I think of "Rourke" as being stroked as `ROURBG`, so I've added an alt outline
so it doesn't get lost, leaving `RORBG` able to be overridden for "rhetoric".

```yaml
"RORBG": "rhetoric"
```

### `"S*EUBGS": "{six-^}"`

Plover currently has the following named outlines for "sixth":

```txt
sixth:
  S*BGS
  S*EUGT
  S*EUFGT
  S*EUBGS
```

Reason for wanting to override `S*EUBGS` to output "six-" are the similar to
ones described in entry for `"THRAO*E": "three-"`: I want some single-stroke
outlines for fraction numbers that include a dash.

In this case, I do like the `S*EUBGS` outline for "sixth", so it's unfortunate
that it needs to get overridden. I think my next likely used outline for this
would be `S*BGS`, but just in case, I have also added a new `S*EUBGTS` outline
for "sixth" since that's what my brain seems to be reaching for when wanting to
output "sixth".

```yaml
"S*EUBGS": "{six-^}"
```

### `"S-FG": "svg"` and `"S-FGS": "svgs"`

Plover has the following outlines for SVG-related words:

```txt
SVG:
  S*FG
  S-FG

SVGs:
  S-FGS
```

These outlines are generally fine, but I would like to have an outline for a
lowercase "svg" as well for filenames etc. Therefore, I have decided to have
`S-FG` output lowercase "svg", and the `*`-flagged version output the uppercase
version.

```yaml
"S-FG": "svg"
"S-FGS": "svgs"
```

### `"SEFL": "self"` and `"S*EFL": "{^self}"`

Plover's outlines for the word "self" and suffix "{^self}" are:

```txt
self:
  S*EF
  S*EFL
  SEL/-F

{^self}:
  SEFL
```

Since a `*`-flag is usually used at the end of multi-stroke outlines to glue the
final word to the previous one, I think that the outlines for "self" and
"{^self}" should be reversed.

```yaml
"SEFL": "self"
"S*EFL": "{^self}"
```

### `"SEUPBLG/*L": "sigil"`

Plover currently assigns the following outlines to "single":

```txt
single:
  SEUPBLG
  SEUPG/*L
  SEUPBG/-L
  SEUPBG/*L
  SEUPBLG/*L
```

These are all okay, but Plover does not currently have an outline for the word
"sigil", which I think would be best stroked with `SEUPBLG/*L`. Given the amount
of outlines "single" has, I'm okay with overriding one of them for a new
dictionary entry.

```yaml
"SEUPBLG/*L": "sigil"
```

### `"SHAEBG": "shak"`

Plover currently uses the following outlines for "chic":

```txt
chic:
  SHAEBG
  SHEUBG
  KHAO*EBG
  SHAO*EBG
```

These seem fine except for `SHAEBG`, which I would rather assign to the word
"shak".

```yaml
"SHAEBG": "shak"
```

### `"SHAO*U": "shew"`

Plover currently uses the following outline for the proper noun surname "Zhou":

```txt
Zhou:
  SHAO*U
```

This is fine, but it's the outline that I would like to use for "shew".

So, I have decided to add in an alternate outline to keep "Zhou",
`SHAO*U/SHAO*U`, and override `SHAO*U` for "shew".

```yaml
"SHAO*U": "shew"
```

### `"SK-PBT": "{MODE:CAPS}{MODE:SET_SPACE:_}"`

Plover uses the following outlines for "cannot":

```txt
cannot:
  KAPBLT
  SK-PBT
  K-PBLT
  K/TPHOT
```

These all seem fine, but I pretty much only use `KAPBLT` for this, and I want to
have a brief that enables a "constant" mode for formatting SCREAMING_SNAKE_CASE
programming constants. `SK-PBT` (ConStaNT) fits the bill for this, so I've
decided to override it.

```yaml
"SK-PBT": "{MODE:CAPS}{MODE:SET_SPACE:_}"
```

### `"SKERPB": "concern"`

Plover uses the following outlines for "cancer":

```txt
cancer:
  SKER
  SKEFR
  SKRER
  SK*ER
  SKERPB
  KAPBS/ER
  KAPB/SER
```

They mostly look fine to me, but I think I would most likely use `SKER`, which
means that the `SKERPB` brief has an extra unneeded "n" sound.

Plover currently uses the following briefs for "concern":

```txt
concern:
  KERP
  K-RPB
  KERPB
  KOPB/SERPB
```

I don't really like any of the one-stroke outlines here, but out of all of them,
`KERPB` is the one I would most likely use.

However, including the inverted "S" sound in "concern" would feel more natural,
so I have decided to override `SKERPB` and allocate it to "concern".

```yaml
"SKERPB": "concern"
```

### `"SKRAO*E": "scree"`

Plover has the following outlines for "psychiatry":

```txt
psychiatry:
  SKRAOE
  SKRO*EU
  SKRAO*E
  SKREUT/REU
  SAOEUBG/TREU
  SAOEU/KAOEU/TREU
  SAOEU/KAOEUT/REU
```

But, it does not have an outline for "scree", a "a mass of small loose stones
that form or cover a slope on a mountain". I think I would use "psychiatry" more
than "scree", so I would like to keep my preferred brief, `SKRAOE`, for it.
Therefore, `SKRAO*E` would be the next-best candidate for "scree", so I will
override that.

```yaml
"SKRAO*E": "scree"
```

### `"SKWR*EL": "jell"`

There is currently no official Plover outline for [jell][]. My first thoughts
were to assign it `SKWREL`, but that is reserved for "gel", which I agree with.
Looking at the `*`-flagged version of that outline, it seems to be used for
`{well-^}`, which seems a bit odd to me. Looking up its outline set, we find:

```txt
{well-^}:
  W*EL
  SKWR*EL
```

For "{well-^}", I am infinitely more likely to use `W*EL` over `SKWR*EL`, so
I decided to override `SKWR*EL` for "jell".

```yaml
"SKWR*EL": "jell"
```

### `"SOERL": "solar"`

Plover uses the following outlines for "sorely":

```txt
sorely:
  SORL
  SOERL
```

`SORL` makes sense, but a bit less so `SOERL`, I think. Since the word
"solar" doesn't have a one stroke brief, I'd like to allocate `SOERL` to it.

```yaml
"SOERL": "solar"
```

### `"SREUPL": "vim"`

Plover uses the following outlines for "victim":

```txt
victim:
  SREUPL
  SREUBGT/EUPL
  SREUBG/TEUPL
```

In general, these would be fine, but `SREUPL` is the perfect (and a more
accurate) outline for "vim", a word I use far more frequently than "victim". So,
I have decided to override it, and instead assign the outline `SR*EUPL` to
"victim", with the `*`-flag standing in for the missing "ct" sound.

```yaml
"SREUPL": "vim"
```

### `"SRO*EULTD": "violated"`

Plover uses the following outlines for "violate":

```txt
violate:
  SRO*EULT
  SRAOEULT
  SRO*EULTD
  SRAOEU/HRAEUT
  SRAOEU/HRAEULT
  SRAO*EU/HRAEUT
  SRAOEUL/HRAEUT
```

These are all fine, except for `SRO*EULTD`, which looks like it should be used
for "violated", so that's what I will change.

```yaml
"SRO*EULTD": "violated"
```

### `"STAR/TPEURB": "starfish"`

Plover does not currently have an entry for "starfish", so this outline is just
overriding Plover behaviour to nudge these two words together, rather than
replace an already existing entry, as I don't think the phrase "star fish" would
come up very often, if at all, for me.

```yaml
"STAR/TPEURB": "starfish"
```

### `"STKAOEFD": "deceased"`

Plover currently uses the following outlines for "deceased":

```txt
deceased:
  TKE/SAOEFD
  TKE/SAOES/-D
```

I would like to have a single-stroke outline for "deceased" to complement my
other override brief for "decease", `STKAOES`. `STKAOEFD` makes the most sense
to me, but Plover currently uses that outline for "deceived"

```txt
deceived:
  STKAOEFD
  STKAO*EFD
  TKAOE/SAOEFD
```

Given that "deceived" uses both `STKAOEFD` and the `*`-flagged variant, I think
one of them can be re-assigned. Since "deceived" has a harder "v" sound, I am
more inclined to keep the `*`-flagged `STKAO*EFD` outline assigned to it, and
override `STKAOEFD` to "deceased", which is what I have done.

```yaml
"STKAOEFD": "deceased"
```

### `"STKAOES": "decease"`

Plover currently uses 14(!) outlines for "disease":

```txt
disease:
  TK-Z
  STKEZ
  STAOES
  STKAOE
  STKAOES
  STKAOED
  STKAOEZ
  STKAO*ES
  STKPAOES
  STKAO/ES
  TKEU/SAO*EZ
  TKEU/SAOEZ
  TKEUS/AOES
  TKEUZ/AOEZ
```

Yet, only one two-stroke outline for "decease":

```txt
decease:
  TKE/SAOES
```

I think "decease" can be given a single-stroke outline, and the one that makes
the most sense to me is `STKAOES`, given the softer "s" sound at the end of the
word, versus the hard "s"/"z" sound at the end of "disease". So, I have decided
to override `STKAOES` for "decease".

```yaml
"STKAOES": "decease"
```

### `"STK-RB": "{^--}"`, `"TK-RBG": "{--^}"`, and `"STK-RBG": "{^--^}"`

Plover uses the following outlines for "--":

```txt
--:
  K-RB
  KW-RB
  TK-RB
  TK-RBG
  STK-RB
  TK-RPB
  KW-BG/TK-RB
  -RBGS/TK-RB
```

These outlines do not take into consideration any suppression of spaces at the
beginning or end of the dashes (or both). The outline I use most for "--" (DaSH)
is `TK-RB`, so I am thinking that overriding some of these outlines to indicate
space suppression would be handy.

```yaml
"STK-RB": "{^--}"
"STK-RBG": "{^--^}"
"TK-RBG": "{--^}"
```

### `"STO*EUPB": "stoin"`

Plover uses the following outlines for "steno":

```txt
steno:
  STOEUPB
  STO*EUPB
  STE/TPHOE
  STEPB/SKWRO
  STEPB/TPHOE
```

For "steno", I use `STOEUPB`, and I really just want to have an outline for
"stoin" for the steno memes. That's all.

```yaml
"STO*EUPB": "stoin"
```

### `"STO*EUD": "studio"`

Plover currently uses the following outline for capitalised "studio":

```txt
studio:
  STAOUD/KWROE
  STAO*UD/KWROE
  STAOUD/SKWROE
  STAOUD/TKWROE
Studio:
  STO*EUD
```

It seems strange to me to allocate the one-stroke outline to a proper noun
version of a word, since I would wager the general lowercase-d version would
come up more often.

So, I have decided to override `STO*EUD` to be lowercase studio, but add a
specific alternative outline for "Studio": `STAOUD/KWRO*E` (though I wager I'd
more likely use `KPA/STO*EUD` or `STO*EUD/KPAD` for "Studio").

```yaml
"STO*EUD": "studio"
```

### `"TEF": "testify"`, `"TEF/-D": "testified"`, and `"T*EFD": "testified"`

Plover uses the following outlines for "test":

```txt
test:
  TEF
  T*ES
  TEFT
  TEFLT
```

Given that `TEF` is assigned to "test", you may think that `TEFD` would be the
outline used for "tested", but instead Plover has the following outlines for
"tested":

```txt
tested:
  T*EFD
  TEFTD
```

Okay, so what _is_ Plover's output for `TEFD`? It's "testified":

```txt
testified:
  TEFD
  TEFRD
  TEF/-D
  TEFT/TPAOEUD
```

And, working backwards, what is the Plover outline for "testify"?

```txt
testify:
  T*EF
  T*ES/TPEU
  TES/TEU/TPEU
```

It would seem to me that the outlines for the past tense of both of these words
are the wrong way around, so I am happy to override them in a way that makes
more sense to me: given `TEFD` outputs "testified", `TEF` should be "testify",
and given that, `TEF/-D` should be "testified".

```yaml
"T*EFD": "testified"
"TEF": "testify"
"TEF/-D": "testified"
```

### `"T*EUF": "tiff"`

Plover uses the following strokes for suffix "{^tive}":

```txt
{^tive}:
  TEUF
  T*EUF
```

Plover does not have an outline for [tiff][], and I think there should be one.
Out of the two outlines for `{^tive}`, I think I would use `TEUF` the most, and
so would like to use `T*EUF` for "tiff", and so have overridden it.

```yaml
"T*EUF": "tiff"
```

### `"TAOUPL": "tuple"`

Plover uses the following outlines for the words "tomb" and "tuple":

```txt
tomb:
  TAOUPL
  TOPL/-B
  TAOUPL/-B

tuple:
  TUPL,
  TUP/*L,
  TAOUP/*L
```

I pronounce "tuple" with the `AOU` long "u" sound, and would like the
single-stroke brief for it to also have that sound. Therefore, I have decided to
override `TAOUPL` to be "tuple", but still keep a one-stroke brief for "tomb",
which ended up being another override: `TAOPL`.

```yaml
"TAOUPL": "tuple"
```

### `"THAOUS": "enthuse"`

Plover uses the following outlines for "enthusiasm":

```txt
enthusiasm:
  THUFPL
  THAOUS/AFPL
  THAOUS/KWRAFPL
  SPWAOUZ/KWRAFPL
  SPWHAOUZ/KWRAFPL
  EPB/THUS/KWRAFPL
  SPWAOUZ/KWRAS/P-L
  EPB/THAOUZ/KWRAFPL
```

Of note is the `THUFPL` outline, which I augmented with other outlines to more
emphasise the "oo" sound of "enthusiasm": `THAOUFPL` and `THAOFPL`. Given this
augmentation, which makes sense to me, I wanted a similar sounding brief, then,
for "enthuse".

Plover has the following entries for "enthuse":

```txt
enthuse:
  SPWAOUZ
  SPWHAOUZ
  EPB/THAOUS
  EPB/THAOUZ
```

The top two briefs seem quite detached from even Plover's `THUFPL` brief for
"enthusiasm", so I want to bring these two words "closer together". The brief
I want to use is `THAOUS`, but Plover currently uses it for phrase "use it":

```txt
use it:
  TAOUS
  THAOUS
```

Out of these two briefs, I think I would be more likely to use `TAOUS` for "use
it", which leaves `THAOUS` free for overriding, which is what I have done.


```yaml
"THAOUS": "enthuse"
```

### `"THRAO*E": "{three-^}"`

Plover currently has an entry for capitalised "Three":

```txt
Three:
  THRAO*E
```

I am assuming this is because of the propensity of "Three" to appear title-ised
in book and movie names, but this rule of title-ised number entries is not
consistent across all numbers.

Given that I would like to have a set of `*`-flagged number briefs for fractions
that output in the form of "n-" (a number word [n] followed by a dash), I will
override `THRAO*E` for `three-` since I think that will come up more than the
need to use three like a proper noun, and even then I can just `KPA`-capitalise
it.

```yaml
"THRAO*E": "{three-^}"
```

### `"THU": "thank you"`

Plover uses the following outlines for the phrase "you this":

```txt
you this:
  THU
```

I think this outline would be better used for "thank you", as it'd appear much
more often.

```yaml
"THU": "thank you"
```

### `"TK-R": "Dr."`

Plover currently uses the following outlines for a double-hyphen dash (--):

```txt
--:
  TK-R
  K-RB
  TK-RB
  KW-RB
  TK-RPB
  STK-RB
  TK-RBG
  -RBGS/TK-RB
  KW-BG/TK-RB
```

I tend to use `TK-RB` (DaSH). Given that in Plover `PH-R` is "Mr." and `PH-RS`
is "Mrs.", I think the pattern should continue with `TK-R` being "Dr.", so I
have decided to override it.

```yaml
"TK-R": "Dr."
```

### `"TKAO*EUD": "dyed"`

Plover uses the following outlines for "died" and "dye":

```txt
died:
  TKAOEUD
  TKAO*EUD
  TKAOEU/-D
```

```txt
dye:
  TKAO*EU
```

Given the outline for "dye", I would expect that `TKAO*EUD` would be used for
"dyed", since "died" already uses its logical outline `TKAOEUD`, and there is no
current Plover-specified named outline for "dyed". So, I've decided to
reallocate it.

```yaml
"TKAO*EUD": "dyed"
```

### `"TKEF/STAEUTD": "devastated"`

Plover currently uses the following outlines for "devastate":

```txt
devastate:
  TKWAFT
  TKE/STAEUT
  TKEF/STAEUT
  TKEF/STAEUTD
  TK*EF/STAEUT
  TKWAFT/TAEUT
```

I can understand `TKEF/STAEUT`, but also using `TKEF/STAEUTD` as well would seem
to take away a good outline for "devastated", so I have decided to override it.

```yaml
"TKEF/STAEUTD": "devastated"
```

### `"TKPW*/PHAEUL": "gmail"`

Plover uses the following outlines for the proper noun "Gmail":

```txt
Gmail:
  TKPW*/PHAEUL
  TKPW*P/PHAEUL
  TKPW*/PHA*EUL
  TKPW*P/PHA*EUL
```

These are all generally fine, but Plover does not have a default entry for the
non-proper noun version for use when writing actual email addresses. Therefore,
I've decided to take `TKPW*/PHAEUL` and use it for that.

```yaml
"TKPW*/PHAEUL": "gmail"
```

### `"TKREUBGT": "district"`

Plover uses the following outlines for "direct":

```txt
direct:
  TKRET
  TKREBGT
  STKREBGT
  TKREUBGT
  TKEU/REBGT
```

I would most likely naturally use `TKREBGT`, and the others look fine, except
for `TKREUBGT`, whose "i" sound doesn't feel quite right after the `R`.

It sounds/feels to me more like "district", so I have decided to override
`TKREUBGT` to be "district".

```yaml
"TKREUBGT": "district"
```

### `"TO*T": "tot"`

Plover has the following outlines for "to the":

```txt
to the:
  TOT
  TO*T
```

Plover does not have an entry for the word "[tot][]", and it would be great to
have one. Out of the two outlines above, I think I would be most likely to use
`TOT` for "to the", which leaves overriding `TO*T` for "tot".

```yaml
"TO*T": "tot"
```

### `"TP*EUF": "{five-^}"`

Plover currently has the following named outlines for "five":

```txt
five:
  TPEUF
  TP*EUF
  TPAOEUF
```

Reason for wanting to override `TP*EUF` to output "five-" are similar to
ones described in entry for `"THRAO*E": "three-"`: I want some single-stroke
outlines for fraction numbers that include a dash.

```yaml
"TP*EUF": "{five-^}"
```

### `"TP-PLT": "{&f-}"`

Plover has 32(!!) outlines assigned to "{.}":

```txt
{.}:
  *FPLT
  -FP
  -FP/-RB
  -FP/PHOEUFP
  -FP/PHR-RB
  -FPL
  -FPLT
  -FPLT/-FPLT
  -FPLTD
  -FPT
  -FRLT
  -FRP
  -P
  -PL
  -PLT
  -PT
  P-FP
  P-FP/PHOEUFP
  P-PL
  PR*RD
  T-PL
  TH-PL
  TP-F
  TP-FPL
  TP-L
  TP-LT
  TP-P
  TP-PL
  TP-PL/PHOEUFP
  TP-PLT
  TPH-PL
  TPHR-FRPBLT
```

At this point, I'm not sure which of these I would end up using the most, but
I figure that if any of them feel like a candidate to be overridden, then the
impact of doing so is negligible.

In this case, when fingerspelling (or "stitching") out a verbally spelled word,
like "J-o-n-e-s", where every letter aside from the final one needs to have a
dash attached after it, Plover provides briefs for _most_ letters for this
situation, like:

```txt
{&b-}:
  PW-PLT

{&c-}:
  KR-PLT
```

Most of the Plover-provided briefs use the letter outline, then a `-PLT`
ending. _However_, there is no outline given for "{&f-}", and the outline that
seems most appropriate for me, `TP-PLT`, is taken by "{.}". So, given the number
of outlines that already service "{.}", I have decided to override `TP-PLT` for
"f-".

There were other outlines in this family that Plover seemed to miss(?), or which
did not use the `-PLT` ending (I would like to standardise this stem), which I
have added in as briefs in my own dictionary:

```txt
"AEUPLT": "{&a-}",
"AO*EUPLT": "{&i-}",
"AOEPLT": "{&e-}",
"AOUPLT": "{&u-}",
"STKPW-PLT": "{&z-}",
```

```yaml
"TP-PLT": "{&f-}"
```

### `"TPA*EU": "Fay"`

Plover uses the following outlines for the phrase "if a", and for the proper
noun "Fay":

```txt
if a:
  TPA*EU
```

```txt
Fay:
  TPAEU
```

I would like to switch these two briefs around since I like to have proper nouns
be `*`-flagged, and I'd also like to add in a proper noun for "Faye".

```yaml
"TPA*EU": "Fay"
"TPAEU": "if a"
```

### `"TPAOEF": "fief"`

Plover currently has the following outlines for "fever":

```txt
fever:
  TPAOEF
  TPAOEFR
  TPAO*EFR
  TPAO*EF/ER
```

These are all generally good, but Plover doesn't have an outline for "fief",
and `TPAOEF` fits the bill in my mind. Given that I would likely use `TPAOEFR`
for "fever", I think it's okay to override `TPAOEF` for "fief".

```yaml
"TPAOEF": "fief"
```

### `"TPAOEPBGS": "phoenix"`

Plover currently only has outlines for the proper noun version of Phoenix:

```txt
Phoenix:
   TPAOEPBGS
   TPAOEPB/EUBGS
   TPAO*EPB/EUBGS
   TPAOE/TPHEUBGS
   TPAO*E/TPHEUBGS
```

There is no outline for the lowercase version for the immortal bird. I think
that `TPAOEPBGS` should be used for "phoenix", and a `*`-flagged version of the
outline, `TPAO*EPBGS`, should be used for the proper noun.

`TPAO*EPBGS` is not used in Plover, so I am going to add that in as an
alternative brief for "Phoenix", and override `TPAOEPBGS` for lowercase
"phoenix".

```yaml
"TPAOEPBGS": "phoenix"
```

### `"TPH*E": "if he"`

Plover uses the following outlines for "Nebraska":

```txt
Nebraska:
  TPH*E
  TPHEB
  TPH*EB
  TPH*E/TPH*E
  TPHE/PWRA/SKA
  TPHE/PWRAS/KA
```

Although NE is the abbreviation for Nebraska, I don't tend to use these state
names too much, and would rather use `TPH*E` for the phrase "if he", and any of
the other briefs for "Nebraska".

```yaml
"TPH*E": "if he"
```

### `"TPH-GTS": "noticing"`

Plover uses the following outlines for "notice":

```txt
notice:
  TPH-TS
  TPH-TSZ
  TPH-GTS
  TPHOEUTS
  TPHO*ETS
  TPHOE/TEUS
  TPHOET/EUS
  TPHOET/TEUS
```

`TPH-GTS` is probably there to catch mis-strokes, but I want to read it as
"noticing" with a folded `-G`.

```yaml
"TPH-GTS": "noticing"
```

### `"TPH*PL": "in my"`

Plover uses the following outlines for "New Mexico":

```txt
New Mexico:
  TPH*PL
  TPH*PL/TPH*PL
  TPHU/PHEBGS/KOE
```

New Mexico having the double outline is good enough for me given I pretty much
never use it, so I'd like to use `TPH*PL` for the phrase "in my".

```yaml
"TPH*PL": "in my"
```

### `"TPHA*F": "nav"`

Plover currently uses the following outlines for "1/2":

```txt
1/2:
  HA*F
  TPHA*F
```

`HA*F` makes sense to me, and is the outline I use. `TPHA*F` does not make sense
to me in this context, and I would like to have an outline that maps to "nav",
so I have decided to override `TPHA*F` for it.

```yaml
"TPHA*F": "nav"
```

### `"TPHERPBLG": "energy"`

Plover currently uses the following outlines for "merge":

```text
merge:
   PHERG
   PHERPBLG
   TPHERPBLG
```

I cannot help but think that `TPHERPBLG` with the "n" sound is a mis-stroke, and
it sounds more to me like "eNERGy", so I have decided to override it to be an
alternative outline for "energy".

```yaml
"TPHERPBLG": "energy"
```

### `"TPHO*E": "info"`

Plover uses the following outlines for "know":

```txt
know:
  TPHOE
  TPHO*E
```

Here, I would always use `TPHOE`, which leaves `TPHO*E` available for
overriding. I would like a one-stroke brief for "info", since Plover does not
currently provide one:

```txt
info:
  EUPB/TPO
  EUPB/TPOE
```

I think that `TPHO*E` fits the bill here, with the amalgamation of the `TPH` "n"
and `PH` "f" sounds, and the `*`-flag to indicate it's irregular.

```yaml
"TPHO*E": "info"
```

### `"TPHO*U": "{^, now,}"`

Plover uses the following outlines for the word "now":

```txt
now:
  TPHOU
  TPHO*U
```

I'd like to use `TPHO*U` for "{^, now,}" since I'd use `"TPHOU"` for just "now".

```yaml
"TPHO*U": "{^, now,}"
```

### `"TPHORPB": "northern"` and `"TPHO*RPB": "Northern"`

Plover uses the following outlines for "northern", and proper noun "Northern":

```txt
northern:
   TPHOERPB
   TPHO*RPB
   TPHOR/THERPB

Northern:
   TPHORPB
   TPHO*R/THERPB
```

I think that the single-stroke briefs here are a bit messed up. I want to fix
them so that `*`-flagged briefs should be the proper noun versions.

```yaml
"TPHORPB": "northern"
"TPHO*RPB": "Northern"
```

### `"TPHRA*BG": "flack"`

Plover currently uses the outline `TPHRA*BG` for "FLAC", for, I'm assuming, the
abbreviation of "[Free Lossless Audio Codec][]". This would be fine if Plover
also had an entry for the word "[flack][]", which it does not (it does have
`TPHRABG` for "[flak][]", though).

I think I am more likely to use (and want) an outline for "flack" over "FLAC",
so I have decided to override `TPHRA*BG` for "flack", and give "FLAC" its own
new kind-of similar outline, `TPHRA*EUBG`.

```yaml
"TPHRA*BG": "flack"
```

### `"TPRAOEUPBG": "frightening"`

Plover uses the following outlines for "frying":

```txt
frying:
  TPRAOEUG
  TPRAOEUPBG
```

I would use `TPRAOEUG` for this, and since I have added an alt outline for
"frighten" as `TPRAOEUPB`, I would like to override `TPRAOEUPBG` for
"frightening" to give it a one-stroke brief.

```yaml
"TPRAOEUPBG": "frightening"
```

### `"TPO*UR": "{four-^}"`

Plover currently has an entry for capitalised "Four":

```txt
Four:
  TPO*UR
```

But, this makes more sense to me as the `four-` prefix, so I have decided to
override it.

```yaml
"TPO*UR": "{four-^}"
```

### `"TRAEUPL": "trademark"`

Plover currently uses the following outlines for "train":

```txt
train:
  TRAEUPL
  TRAEUPB
  THRAEUPB
```

`TRAEUPL` looks fine to me, but I have to assume the other outlines are
mis-strokes, and therefore okay to override. The word "trademark" does not have
a one-stroke brief, and `TRAEUPL` ("TRAdeMark") feels like a natural fit.

```yaml
"TRAEUPL": "trademark"
```

### `"UPBGS": "understanding"`

Plover currently uses the following outlines for ["unction"][]:

```txt
unction:
  UPBGS
  *UPBGS
```

This makes sense, but I would like to have a one-stroke brief for
"understanding" that uses Plover's `UPBS` brief, and `UPBGS` fits the bill.
Since I would use "understanding" as a word significantly more than "unction",
and it is still left with an outline, I am comfortable overriding it.

```yaml
"UPBGS": "understanding"
```

### `"WRAOEUGT": "writing"`

Plover currently uses the following outlines for the proper noun "Wright":

```txt
Wright:
  WRA*ET
  WRAOEUGT
  WRAO*EUT
```

These are all generally fine, but I think I would mostly use `WRAO*EUT` for
"Wright", and I want a one-stroke brief for the word "writing" that uses an
inverted "g", to match the `WRAOEUT` outline for "write", and `WRAOEUGT` fits
the bill. Therefore, I have decided to override `WRAOEUGT` for "writing".

```yaml
"WRAOEUGT": "writing"
```

## Phrases

### `"*ED": "he'd"`

Plover uses the following outlines for the proper noun "Ed":

```txt
Ed:
  *ED
  ED/ED
```

These are fine, but I think that `*ED` would be of better use as the phrase
"he'd".

```yaml
"*ED": "he'd"
```

### `"*EUD": "I'd"`, `"EUD": "I had"`, and `"AOEUD": "id"`

Plover uses the following outlines for the US state of Idaho:

```txt
Idaho:
  *EUD
  *EUD/*EUD
  AOEUD/HOE
```

I don't use this word much, so having it as `*EUD/*EUD` works for me. I
wanted to have a one-stroke brief for the phrase "I had" that uses `-D`, but
Plover already assigns that to "id":

```txt
id:
  EUD
```

So, I have decided to make "I had" be the outline `EUD`, `*EUD` be "I'd", and
make `AOEUD` be "id".

```yaml
"*EUD": "I'd"
"AOEUD": "id"
"EUD": "I had"
```

### `"*EUL": "I'll"`

Plover uses the following outlines for "Illinois":

```txt
Illinois:
  *EUL
  *EUL/*EUL
  EUL/TPHOEU
```

Given that I don't use US state names much, I'm happy to override `*EUL`. So,
I'll make it "I'll".

```yaml
"*EUL": "I'll"
```

### `"*UFD": "you have had"`

Plover uses the following outline for "USD":

```txt
USD:
  *UFD
```

This is fine, but I'd like to have a brief for the phrase "you've had", so I'm
going to override `*UFD` to be that, and give "USD" other alt outlines instead:

```txt
USD:
  KWRUFD
  KWR*UFD
```

```yaml
"*UFD": "you've had"
```

### `"*UPBG": "you think"`

```txt
Uncle:
  *UPBG/-L
uncle:
  *UPBG
  UPB/KEL
  UPB/K-L
  UPB/KAL
  UPBG/*L
  UPBG/-L
  *UPBG/*L
```

These are fine, but I'd like to have a one-stoke outline for the phrase "you
think", and `*UPBG` fits.

```yaml
"*UPBG": "you think"
```

### `"-FTS": "was the"`

Plover uses the following outlines for the phrase "of the":

```txt
of the:
  -FT
  -FTD
  -FTS
  -FLT
  -F/-FT
```

I use `-FT` for "of the", and it looks like the rest are mis-stroke handling.
So, I'd like to use `-FTS` for the phrase "was the".

```yaml
"-FTS": "was the"
```

### `"-FZ": "of those"`

Plover uses the following outlines for the number "600":

```txt
600:
  -6Z
  -FZ
```

`-FZ` seems wrong to me, and I'd rather use it for a word or phrase. In this
case, I want it to be "of those".

```yaml
"-FZ": "of those"
```

### `"-T/HRAOUFR": "the louver"`

Plover uses the following outline for the phrase "the Louvre":

```txt
the Louvre:
  -T/HRAOUFR
```

However, "Louvre" by itself is stroked as:

```txt
Louvre:
  HRO*UFR
  HRAO*UFR
louvre:
  HRAOUFR/A*U
  HRAO*UF/ER/A*U
```

The entry for `HRAOUFR` is "louver":

```txt
louver:
  HRAOUFR
  HRAO*UF/ER
```

Therefore, `-T/HRAOUFR` as "the Louvre" clashes when wanting to write "the
louver". I think this is a straight mis-stroke, so `"-T/HRAOUFR": "the louver"`
just corrects it.

In order to not lose a stroke for the phrase "the Louvre", I've created an alt
outline for it:

```txt
the Louvre:
  -T/HRAO*UFR
```

```yaml
"-T/HRAOUFR": "the louver"
```

### `"-T/HROEUPB": "the loin"`

Plover has the following outlines for "loin":

```txt
loin:
  HROEUPB
  -T/HROEUPB
```

I am perplexed by the `-T/HROEUPB` one as it interferes with the sentence
"the loin", and so can only conclude that it is a typo in the dictionary and
needs to be overridden.

```yaml
"-T/HROEUPB": "the loin"
```

### `"-TS": "it is"` and `"-TD": "they"`

Plover uses the following outlines for "the":

```txt
the:
  -T
  -TD
  -TS
  -LT
```

I would only ever use `-T` for "the", so I'd like to override `-TS` for the
phrase "it is".

Also, `-TD` for "they" seems to be common in phrasing, so I'll attempt to use it
for that, too.

```yaml
"-TD": "they"
"-TS": "it is"
```

### `"AFT": "after the"`

Plover currently uses the following outlines for "after":

```txt
after:
  AF
  AFT
{after^}:
  A*F
  AFR
```

I would like a one-stroke brief for "after the", to complement the ability to
stroke "before the" in one stroke: `PW-FRT`, and it would seem that `AFT`
is what I am looking for. This has the effect of forcing me to build muscle
memory for `AF` for "after", which I don't think is necessarily a bad thing.

```yaml
"AFT": "after the"
```

### `"AOEUF": "I have"` and `"AOEUFB": "I have been"`

Plover uses the following outlines for "I've":

```txt
I've:
  AOEUF
  AO*EUF
  EUF/AE
  EU/AO*EF
  AOEUF/AE
```

Given that I would like to have `*`-flags used for contractions, I'm going to
reassign `AOEUF` to be "I have", and have this reflect for it's related phrasing
contractions.

```yaml
"AOEUF": "I have"
"AOEUFB": "I have been"
```

### `"AO*URB": "you shall"`, `"URB": "you shall"`, `"URBL": "you shall"`

Plover's entry for `AO*URB` is the company name "[Uber][]".

To me "Uber" sounds more like "Oober" rather than "Yuuber", so I ended up
assigning the unused `AO*RB` outline to "Uber", leaving `AO*URB` free for what I
feel is a more useful phrase, "you shall".

Also, Plover currently uses the following outlines for "you're":

```txt
you're:
  UR
  URB
  KWRO*UR
  KWRAO*UR
  UR/AE
```

`URB`, with the `RB` "-sh" sound, feels like it would be more usefully allocated
to "you shall", so I will override that.

Finally, Plover currently uses the following outlines for "usual":

```txt
usual:
  URBL
  AOURB
  KWRAOURBL
  KWRAOUZ/WAL
  KWRAOUZ/KWRUL
  KWRAOUZ/KWRAL
```

I think I would be more likely to use `AOURB` with the long "u" sound here, and
would prefer `URBL` to be used in the various phrasing variants for "you shall",
so I have decided to override it.

```yaml
"AO*URB": "you shall"
"URB": "you shall"
"URBL": "you shall"
```

### `"AUB": "all about"`

Plover uses the following outlines for the prefix "{sub^}":

```txt
{sub^}:
  AUB
  SAUB
  KAUB
  SAUP
```

Aside from `SAUB`, these look like mis-stroke handling. So, I'd like to reassign
`AUB` to "all about".

```yaml
"AUB": "all about"
```

### `"AUFS": "all of us"`

Plover uses the following outlines for "office":

```txt
office:
  OFS
  AUFS
  AUF/EUS
  AU/TPEUS
  AUF/TPEUS
Office:
  O*FS
```

The outline I would use here would be `OFS`, and I'd like to use the `AUFS`
outline for the phrase "all of us" from Magnum theory.

```yaml
"AUFS": "all of us"
```

### `"ED": "he had"`

Plover uses the following outlines for the proper noun "Ed":

```txt
Ed:
  ED
  *ED
  ED/ED
```

These are all fine, but since Plover doesn't allocate an outline for the phrase
"he had", I'd like have one, and `ED` fits the bill as proper nouns tend to be
`*`-flagged.

```yaml
"ED": "he had"
```

### `"EUFRG": "I went"`

Plover uses the following outlines for the proper noun "Irving":

```txt
Irving:
  EUFRG
  EUR/SREUPBG
```

I'd like to `*`-flag proper nouns, so I've added `*EUFRG` for "Irving", and want
to override `EUFRG` for "I went" to get the `-FRG` = "went" for phrasing.

```yaml
"EUFRG": "I went"
```

### `"EULTS": "it's like"`

Plover uses the following outlines for "its":

```txt
its:
  EUTS
  EULTS
  EUTSZ
```

I use `EUTS` for "its", so I'd like to reassign `EULTS` to the phrase "it's
like".

```yaml
"EULTS": "it's like"
```

### `"H*EPBGS": "he thinks"`

Plover uses the following outlines for the word "hypertension":

```txt
hypertension:
  H*EPBGS
  H*EFPBGS
  HAOEUP/TEPBGS
  HAOEU/PER/TEPBGS
```

I've given "hypertension" an alt outline of `HAOEUPGS`, which I will use. So, id
like to override `H*EPBGS` for the phrase "he thinks".

```yaml
"H*EPBGS": "he thinks"
```

### `"H*ES": "he's"`

Plover uses the following outline for the proper noun "Hess":

```txt
Hess:
  HES
```

I would like to use that outline for the contraction "he's", so I have decided
to override it, and re-assign "Hess" to `HESZ`, which is currently untaken.

```yaml
"H*ES": "he's"
```

### `"H-B": "had been"`

Plover uses the following outlines for a hyphen with no surrounding spaces:

```txt
{^-^}:
  H-B
  H-PB
  H*FPB
  HA*EPB
```

I read these all as a contraction of the word "hyphen", and use `H-PB` for it.
I would like to have a more convenient brief for the phrase "had been", and
`H-B` makes sense to me, so I've decided to override it.

```yaml
"H-B": "had been"
```

### `"HAO*EL": "he will"`

Plover currently has four outlines reserved for "he'll"...

```txt
he'll:
  *EL
  HAO*EL
  EL/AE
  HE/AOEL
```

...yet none for "he will". I wanted a single-stroke outline for the "he will"
phrase, so I decided to override `HAO*EL` for this since it felt more
appropriate to leave the shorter `*EL` for the "he'll" contraction.

```yaml
"HAO*EL": "he will"
```

### `"HAOEF": "he have"`

Plover currently has the following outlines for "heave":

```txt
heave:
  HAOEF
  HAO*EF
```

I think that for "heave", I think I am more likely to use `HAO*EF` with the
`*`-flag indicating a change from a "F" to "V" sound. I want to have a brief for
"he have", and `HAOEF` seems like a good candidate for it, so I have decided to
override it.

```yaml
"HAOEF": "he have"
```

### `"HAOERDZ": "here is the"`

Plover uses the following outlines for "heard":

```txt
heard:
  HERD
  HAERD
  HAOERDZ
  HAER/-D
```

I would tend to use `HAERD` or `HERD`, so I'd like to reassign `HAOERDZ` to be
the phrase "here is the".

```yaml
"HAOERDZ": "here is the"
```

### `"HAOES": "he is"`

Plover uses the following outlines for the contraction "he's":

```txt
he's:
  HAOES
  HAO*ES
```

In order to stick to my `*`-flags being used for contractions, I want to have
`HAOES` be used for "he is".

```yaml
"HAOES": "he is"
```

### `"HERP": "he were"` and `"H*ERPS": "helpers"`

Plover uses the following outlines for "herpes":

```txt
herpes:
  HERP
  HERPS
  H*ERPS
  HAOERPS
  HEP/ES
  HERP/ES
  HERP/EUS
  HERP/AOES
  HER/PAOEZ
  HERP/KWREU/-S
```

This seems quite a lot for a word I don't think I'll use that often. Out of
these options, `HERPS` is the one I'd use for "herpes", which means I'd like to
reassign `HERP` to "he were" for phrasing, and `H*ERPS` to "helpers" to match my
other override for "helper".

```yaml
"H*ERPS": "helpers"
"HERP": "he were"
```

### `"HO*UT": "how to"`

Plover uses the following outlines for the phrase "how the":

```txt
how the:
  HOUT
  HO*UT
```

I use `HOUT` for "how the", and so I'd to use `HO*UT` for the phrase "how to".

```yaml
"HO*UT": "how to"
```

### `"HOUD": "how had"`

Plover uses the following outlines for the phrase "how'd":

```txt
how'd:
  HOUD
  HO*UD
```

These are fine, but I'd like a one stroke brief for the phrase "how had", and
`HOUD` fits the bill, so I'm going to override it.

```yaml
"HOUD": "how had"
```

### `"HRUF": "will you have"` and `"HRUFR": "will you ever"`

Plover currently uses the following outlines for "love" and "lover":

```txt
love:
  HOF
  HRUF
  HR-F
  HROF
  HR*UF
```

```txt
lover:
  HRUFR
  HROFR
  HRO*FR
  HR*UFR
  HRO*F/ER
  HR*UF/ER
```

I would like to have a single-stroke brief for "will you have" and "will you
ever", and this many outlines for "love" and "lover" seems like a lot. I think
that I would be least likely to use the entries that use `U`for both these
words, so I have decided to override them for "will you have/ever".

```yaml
"HRUF": "will you have"
"HRUFR": "will you ever"
```

### `"HU/HU": "huh-huh"`

Given my changes for `"H*U": "huh"` and `"HU": "uh"`, the briefs for
agreeing/disagreeing noises also need to be updated. They are currently:

```txt
uh-uh:
  HU/HU
  H*U/H*U
```

```txt
huh-uh:
  HU/U
  H*U/HU
```

```txt
uh-huh:
  HU/H*U
  *U/H*U
```

There seems to be some inconsistencies between the single words and
phrases that make up that word in the original entries, so these overrides, and
the alt dictionary entries are an attempt to standardise that.

```yaml
"HU/HU": "huh-huh"
```


### `"K*T": "can the"`

Plover uses the following outlines for "Connecticut":

```txt
Connecticut:
  K*T
  K*LT
  KEBGT/KUT
  KR*T/KR*T
  KOPB/TPHET/KUT
```

Since Connecticut's abbreviation is CT, I'm happy to use `KR*T/KR*T` as my
regular brief for it, especially since I don't use it that much. This frees
`K*T` to allow a phrase brief for "can the", which I would like.

```yaml
"K*T": "can the"
```

### `"K-G": "can go"`

Plover currently has the following outlines for "kilogram":

```txt
kilogram:
  K*G
  K-G
  KEUL/TKPWRAPL
  K*EUG/TKPWRAPL
  K*EUL/TKPWRAPL
  KEUL/HRO/TKPWRAPL
```

I think that a "can go" would be a convenient phrase brief to have, and since
I don't think "kilogram" needs both `K*G` _and_ `K-G`, I've opted to override
the slightly easier to stroke `K-G` for "can go", as I think I would use that
more in everyday use than kilogram.

```yaml
"K-G": "can go"
```

### `"KA*": "can a"`

Plover uses the following outlines are for the state of "Kansas":

```txt
Kansas:
  KA*
  K*S
  K*S/K*S
  KAPB/SAS
```

These are fine, but I don't use US state names that often, and I think the `KA*`
brief would be better served as a brief for the phrase "can a".

```yaml
"KA*": "can a"
```

### `"KE": "can he"`

Plover currently uses the following outline for the phrase "he can":

```txt
he can:
  KE
```

This outline reads to me more like "can he", than "he can". The outline `K*E`,
with the `*`-flag indicating a "backwards reading", feels more like the
appropriate outline for "can he".

Therefore, I have decided to override `KE` for "can he", and add `K*E` for "he
can" so the phrase brief is not lost.

```yaml
"KE": "can he"
```

### `"KOF": "could have"`, `"KO*F": "could've"`, `"KOUF": "could you have"`, `"KO*UF": "could you've"`

Plover has the following entries for the outlines `KOF`, `KO*F`, `KOUF` and
`KO*UF`:

```txt
cough:
  KOF
  KAUF
```

```txt
cognitive:
  KO*F
  KOG/TEUF
  KOPBG/TEUF
  KOG/TPHEUT/EUF
  KOPBG/TEU/TEUF
  KOG/TPHEUT/*EUF
  KOG/TPHEU/T*EUF
```

```txt
could have:
  KOUF
```

```txt
could've:
  KO*UF
  KOULD/AO*EF
```

These sets of overrides just attempt to standardise using `KOF` for only "could
have", and `KOUF` as "could you have", as well as other related phrasing
variations related to having a `U` in the phrase meaning "you".

```yaml
"KO*F": "could've"
"KO*UF": "could you've"
"KOF": "could have"
"KOUF": "could you have"
```

### `"KOU": "could you"`, `"KOUB": "could you be"`, `"KOUPBLT": "could you not"`

Plover currently has the following outlines for "cow":

```txt
cow:
  KOU
  KO*U
```

For "cow", I think I would be more likely to use `KO*U`, and since I would like
to have a brief for "could you", that mirrors Plover's own `"WOU": "would you"`
brief, I have decided to override `KOU` for "could you".

This then opens up other phrasings for "could you x", so given that Plover
currently has "could be" as:

```txt
could be:
  KOB
  KOUB
```

I think that `KOUB` can be used now for "could you be".


Further, Plover uses the following outlines for the word "count":

```txt
count:
  KOUPBT
  KOUPBLT
  KAOUPBT
```

The only one I would use here for "count" is `KOUPBT`, so I'd like to repurpose
`KOUPBLT` for "could you not"

```yaml
"KOU": "could you"
"KOUB": "could you be"
"KOUPBLT": "could you not"
```

### `"KRAOEPL/TPOR": "cream for"` and `"KREPL/TPOR": "creme for"`

Plover has the following entries for "[cremophor][]":

```txt
cremophor:
  KREPL/TPOR
Cremophor:
  KRAOEPL/TPOR
```

Unfortunately, these two outlines conflict with "creme for" and "cream for",
which I think I would use more often than "cremophor", so I have decided to
override these entries to prevent the conflicts, and make new outlines for
the originals:

`"KR*EPL/TPO*R": "Cremophor"` and `"KR*EPL/TPOR": "cremophor"`.

```yaml
"KRAOEPL/TPOR": "cream for"
"KREPL/TPOR": "creme for"
```

### `"KU/WAEUT": "can you wait"`

When you want to stroke "can you wait" using the `KU` brief for "can you",
Plover automatically changes the phrase to "Kuwait". "Kuwait" currently has
three outlines assigned to it:

```txt
Kuwait:
  KWAEUT
  KU/WAEUT
  KAOU/WAEUT
```

I figured that I would override `KU/WAEUT` because:

- I would stroke "can you wait" more often than "Kuwait"
- "Kuwait" can probably live without having three outlines
- I'm more likely to use the single-stroke outline anyway

```yaml
"KU/WAEUT": "can you wait"
```

### `"KUFR": "can you ever"`

Plover uses the following outlines for "customer":

```txt
customer:
  KUFR
  KUFRT
  KUFRPL
  K*UFRT
  KUS/PHER
  KUF/PHER
  K*US/PHER
  KUFT/PHER
  K*UFT/PHER
```

I would tend to use `KUFRPL` the most for customer, and I'd like a one-stroke
brief for the phrase "can you ever", and `KUFR` makes the most sense to me for
that, so I've decided to override it.

```yaml
"KUFR": "can you ever"
```

### `"KWR*PB": "y'know"`

Plover uses the following outlines for the phrase "I know":

```txt
I know:
  KWRO*
  KWR*PB
  KWR-PB
  EU/TPHOEU
```

These are all fine, but I'd like a one-stroke outline for the phrase "y'know",
which, surprisingly, Plover doesn't have an entry for. I choose `KWR*PB` to be
that outline.

```yaml
"KWR*PB": "y'know"
```

### `"KWR-S": "why is"`

Plover currently uses the `KWR-S` outline for:

```txt
{^s ,}:
  KWR-S
```

I'm not sure whether I would use `{^s ,}` too often, and `KWR-S` reads more to
me like "why is", so I have decided to override it as that. So as not to lose
the original output, I have reassigned it to an unused outline: `KWR*S/KWR*S`.

```yaml
"KWR-S": "why is"
```

### `"KWREUPBG": "I think"` and `"KWR*EUPBG": "I think"`

Plover has the following outlines for the phrase "I don't think":

```txt
I don't think:
  KWROPBG
  KWREUPG
  KWREUPBG
  SKWREUPBG
  KWROEUPBG
```

Yet, only one outline for "I think":

```txt
I think:
  KWREUBG
```

`KWREUBG` is a fine brief for "I think", but I read it in my mind as "yick".
I would rather have the "nk" sound in "think" play a greater role in the brief
for "I think", and so I think overriding `KWREUPBG` for for it makes sense.

I'm also planning on adding `KWROEPBG` as an alternate brief for "I don't
think", as I think it more clearly emphasises the long "o" sound in
"I d**o**n't think".

Further, Plover uses the following outline for the proper noun "Ying":

```txt
Ying:
  KWR*EUPBG
```

Although the `*`-flag here is meant to denote a proper noun, I still read this
as "yink", which makes me want to use the outline for "I think". So, I have
decided to override `KWR*EUPBG` for "I think", and re-assign "Ying" to
`KWREUPBG/KWREUPBG`, with the double stroke standing in, instead, for the
proper noun indicator.

```yaml
"KWR*EUPBG": "I think"
"KWREUPBG": "I think"
```

### `"KWREUPBGS": "I think so"`

Plover currently uses the following brief for "I didn't think so":

```txt
I didn't think so:
  KWREUPBGS
```

Yet, there is no named brief for "I think so", a brief I would have thought
would be used more often.

Further to the reasons outlined in "`"KWREUPBG": "I think"` and `"KWR*EUPBG":
"I think"`", `KWREUPBGS` makes more sense to me as "I think so", rather than "I
didn't think so".

"I didn't think so" is still a good brief to have, so I have decided to add an
alternative phrase brief for it using the `*`-flag: `KWR*EUPBGS`, and override
`KWREUPBGS` to be "I think so".

```yaml
"KWREUPBGS": "I think so"
```

### `"O*BG": "{^, okay,}"`

Plover uses the following outlines for "Oklahoma":

```txt
Oklahoma:
  O*BG
  O*BG/O*BG
  OEBG/HOE/PHA
  OEBG/HOEPL/PHA
  OEBG/HRA/HOE/PHA
```

I don't use US state names much, so I'm happy to override `O*BG` to mirror
`OBG` and be "{^, okay,}".

```yaml
"O*BG": "{^, okay,}"
```

### `"O*ERBGS": "{^, oh,}"`

Plover uses the following outlines for "oh":

```txt
oh:
  O*ERBGS
```

Since I've given "oh" an alt outline of `HO*`, I'd like to use this outline
instead for a "{^, oh,}" phrase.

```yaml
"O*ERBGS": "{^, oh,}"
```

### `"O*PBT": "on it"`

Plover uses the following outlines for the phrase "on the":

```txt
on the:
  OPBT
  O*PBT
  AOPB/-T
```

These are fine, but I'd like to have a one-stroke brief for the phrase "on it",
and `O*PBT` fits that bill.

```yaml
"O*PBT": "on it"
```

### `"OEFRT": "over the"`

Plover uses the following outlines for the phrase "overt":

```txt
overt:
  OEFRT
  O*EFRT
  O/SRERT
  O*EF/ERT
  OE/SRERT
```

These are fine, but I'd like to use one of the single-stroke briefs for the
phrase "over the". I'm inclined to keep the `*`-flag for the "v" sound in
"overt", so I'm going to override `OEFRT` for "over the".

```yaml
"OEFRT": "over the"
```


### `"PW*EUT": "by the"`

Plover currently uses the following outline for the suffix "-bit":

```txt
{^-bit}:
  PW*EUT
```

That suffix comes up way less often for me than the phrase "by the", which
does not have a named entry in the Plover dictionary, so I have decided to
override the `PW*EUT` outline for "by the".

The suffix "-bit" is still be a nice outline to have, so I have decided to move
it to an alternative outline: `PW*T`.

```yaml
"PW*EUT": "by the"
```

### `"PWA*UT": "because the"`

Plover uses the following outlines for "bought":

```txt
bought:
  PWAUT
  PWA*UT
  PWAUGT
```

These are all fine, but I'd like a one-stroke brief for the phrase "because
the", and `PWA*UT` fits that for me.

```yaml
"PWA*UT": "because the"
```

### `"PWAEUBL": "be able"`

Plover uses the following outlines for "baseball":

```txt
baseball:
  SPWAUL
  PWAEUBL
  PWEUS/PWAUL
  PWAEUS/PWAUL
```

These make sense, but I'd like to have a one-stroke outline for the phrase "be
able", and `PWAEUBL` fits the bill. As a consolation, I'll also add in an alt
outline for baseball: `PWA*EUBL`, starred here cause I think I'd use "be able"
more than "baseball".

```yaml
"PWAEUBL": "be able"
```

### `"PWUTD": "but the"`

Plover uses the following outlines for "but":

```txt
but:
  WUT
  PWU
  PWUT
  PWUTS
  PWUTD
  PWHUT
  PWUT/UT
```

Most of these seem to be mis-stroke handling, so I'd like to use `PWUTD` for
"but the" for the phrasing pattern `-TD` = "the".

```yaml
"PWUTD": "but the"
```

### `"RAOEURT": "right here"`

Plover uses the following outlines for the word "right":

```txt
right:
  ROEUT
  RAOEUT
  RAOEURT
  RAOEUGT
```

Out of these, `RAOEUT` is the one I use, so I'd like to reassign `RAOEURT` to be
"right here".

```yaml
"RAOEURT": "right here"
```

### `"S*PB": "as an"`

Plover uses the following outlines for "sine":

```txt
sine:
  S*PB
  SAO*EUPB
```

I don't think I would ever use `S*PB` for this, so I'm going to override it to
be the phrase "as an".

```yaml
"S*PB": "as an"
```

### `"S*T": "as the"`

Plover uses the following outlines for "St." and "St.{-|}":

```txt
St.:
  ST-FPLT

St.{-|}:
  ST*
  S*T
```

`ST*` is what I'd most likely use for "St.", and I'd like to use `S*T` instead
for the phrase "as the".

```yaml
"S*T": "as the"
```

### `"SEBGD/HRAOEUF": "second life"`

Plover has the following outline for proper noun "Second Life":

```txt
Second Life:
  SEBGD/HRAOEUF
```

Since "second life" can be used in normal sentences as well, I think this
proper noun outline should be considered a mis-stroke as it violates the
doctrine of least surprise (at least for me).

Therefore, I am going to override this outline to just output "second life", and
create a new alt outline for the proper noun, and `*`-flag it: `SEBGD/HRAO*EUF`

```yaml
"SEBGD/HRAOEUF": "second life"
```

### `"SHAOED": "she had"`

Way of thinking similar to `"*UD": "you had"`. Plover currently has the
following outlines for "she'd":

```txt
she'd:
  SHAOED
  SHAO*ED
  SHAOED/AE
```

I would like a single-stroke brief for "she had", and `SHAOED` feels like the
most appropriate brief to override for that.

```yaml
"SHAOED": "she had"
```

### `"SHAOEL": "she will"`

Way of thinking similar to `"HAOEL": "he will"`. Plover currently has four
outlines for "she'll"...

```txt
she'll:
  SHAOEL
  SHAO*EL
  SHE/AOEL
  SHAOEL/AE
```

...yet none for "she will". I wanted a single-stroke outline for the "she will"
phrase, so I decided to override `SHAOEL` for this since it felt more
appropriate to leave `SHAO*EL` for the "she'll" contraction.

```yaml
"SHAOEL": "she will"
```

### `"SHOU": "should you"`

Plover uses the following outlines for "somehow":

```txt
somehow:
  SHOU
  SPHOU
  SPH/HOU
  SOPL/HOU
```

I think I am most likely to use `SPHOU` for "somehow", and I would like to have
a one-stroke outline for the phrase "should you", which `SHOU` feels best for.
So, I have decided to override it.

```yaml
"SHOU": "should you"
```

### `"SHRAO*EUPB": "single line"`

Plover uses the following outlines for "shrine":

```txt
shrine:
  SHRAOEUPB
  SHRAO*EUPB
  SH/RAOEUPB
```

These are all fine outlines, but I would like a brief for the phrase "single
line", and `SHRAO*EUPB` (Single LINE) would seem to fit the bill. Since I would
use `SHRAOEUPB` for "shrine", I can feel comfortable overriding `SHRAO*EUPB`.

```yaml
"SHRAO*EUPB": "single line"
```

### `"SKP-RB": "and she"`

Plover uses the following outlines for the phrase "and shall":

```txt
and shall:
  SKP-RB
  SKP-RBL
```

These are fine, but I think I'd tend to use `SKP-RBL`. It would also be very
convenient to have a brief for phrasing final "she", and `-RB` seems good for
that to me, so I'm going to override `SKP-RBL` for "and she".

```yaml
"SKP-RB": "and she"
```

### `"SKPHORPBG": "and morning"`

Plover has the following named entry for the phrase "morning and":

```txt
morning and:
  SKPHORPBG
```

Given steno order, this outline makes more sense to me as "and morning", so I
have decided to add an alternative `*`-flagged outline, `SKPHO*RPBG`, for
"morning and", and override `SKPHORPBG` for "and morning".

```yaml
"SKPHORPBG": "and morning"
```

### `"SKPOEFR": "and over"`

Plover has the following named entry for the phrase "over and":

```txt
over and:
  SKPOEFR
```

Given steno order, this outline makes more sense to me as "and over", so I have
decided to add an alternative `*`-flagged outline, `SKPO*EFR`, for "over and",
and override `SKPOEFR` for "and over".

```yaml
"SKPOEFR": "and over"
```

### `"SKPREFRPBS": "and reference"`

Plover has the following named entry for the phrase "reference and":

```txt
reference and:
  SKPREFRPBS
```

Given steno order, this outline makes more sense to me as "reference and", so I
have decided to add an alternative `*`-flagged outline, `SKPRE*FRPBS`, for
"reference and", and override `SKPREFRPBS` for "and reference".

```yaml
"SKPREFRPBS": "and reference"
```

### `"SKPUP": "and up"`

Plover has the following named entry for the phrase "up and":

```txt
up and:
  SKPUP
```

Given steno order, this outline makes more sense to me as "and up", so I
have decided to add an alternative `*`-flagged outline, `SKP*UP`, for
"up and", and override `SKPUP` for "and up".

```yaml
"SKPUP": "and up"
```

### `"SKPUR": "and you are"`

Plover uses the following outlines for the phrase "and you're":

```txt
and you're:
  SKPUR
```

I'd rather have `*`-flags be used for contractions, so I'm assigning "and
you're" to `SKP*UR`, and overriding `SKPUR` to be "and you are".

```yaml
"SKPUR": "and you are"
```

### `"SKPW": "and with"`

Plover uses the following outlines for "and":

```txt
and:
  SP
  SKP
  APD
  STK
  ABD
  57BD
  APBD
  SKPW
  STKP
  -PBD
```

`SKP` has been the outline drilled into me for "and", so I will continue to use
it. This means I can release what look like mis-strokes and assign them other
meanings.

In this case, I would like to phrase "and with", using `SKP` for "and" and `W`
for "with", so I have decided to override `SKPW` to do that.

```yaml
"SKPW": "and with"
```

### `"SR*EU": "I have"` and `"SREU": "have I"`

Plover has the following outline for "I have":

```txt
I have:
  SREU
```

This outline reads more to me like "have I", than "I have", and given the
propensity to use `*`-flagging for two-word briefs where the ordering of the
words should be reversed, I would like to override `SREU` to be "have I".

This leaves needing to replicate a brief for "I have", which I would like to
have as `SR*EU`. Plover currently uses the following briefs for "have a":

```txt
have a:
  SRA
  SR*EU
  SRAEU
  SRA*EU
```

I can agree with the assignment of all of those outlines, aside from `SR*EU`,
which definitely reads more like "I have" to me, so I am happy to override this
it for "I have".

```yaml
"SR*EU": "I have"
"SREU": "have I"
```

### `"SR*U": "you have"`

Plover has the following outlines for "have you":

```txt
have you:
  SRU
  SR*U
```

I think it would also be nice to have a mirroring "you have" outline, and so
similar to my `"ST*": "it is"` override, I have opted to override the
`*`-flagged outline to indicate a switching of word order for an existing brief.

```yaml
"SR*U": "you have"
```

### `"SR-PBTD": "haven't had"`

Plover uses the following outlines for "haven't":

```txt
haven't:
  SR-PB
  SR-PBT
  SWR-PBT
  SR-PBTD
```

The outline I mostly use for "haven't" is `SR-PBT`, and I would like an outline
for the phrase "haven't had", and `SR-PBTD` fits the bill for me. So, I have
decided to override it.

```yaml
"SR-PBTD": "haven't had"
```

### `"SRUFR": "have you ever"`

It seems that Plover has forced a capital letter on its "have you ever" brief:

```txt
Have you ever:
  SRUFR
```

So, this override just changes the phrase to be lowercase.

```yaml
"SRUFR": "have you ever"
```

### `"SKWAL": "is equal"`

Plover uses the following outlines for "equal":

```txt
equal:
  KWAL
  SKWAL
  KWAUL
  AOE/KWAL
  AOEBG/WAL
  AOE/KWAUL
  AOEBG/KWAL
  AOEBG/WAUL
  AOEBG/KWAUL
```

I use `KWAL` for "equal", and am wagering that `SKWAL` is a mis-stroke.
Therefore, I'd like to use it for the phrase "is equal".

```yaml
"SKWAL": "is equal"
```

### `"SKWRAO*E": "I see"`

Plover uses the following outlines for the proper noun "Jay":

```txt
Jay:
  SKWRAO*E
  SKWRA*EU
```

`SKWRA*EU` is the only one that makes sense to me here, so I have decided to
override `SKWRAO*E` to be the phrase "I see" (`KWR` "I", `SA*EU` "see").

```yaml
"SKWRAO*E": "I see"
```

### `"STH-RBGT": "is this correct"`

Plover currently has an outline for "is this correct?", with a trailing question
mark:

```txt
is this correct{?}:
  STH-RBGT
```

However, due to the nature of Q&A and it's addition of ending punctuation at the
end of sentences when a speaker switch occurs, the ending question mark gets in
the way. So, I've seen fit to override it to remove the question mark.

Removing the question mark also improves better brief chaining where the
sentence does not end in "correct", like "is this correct or not?"

```yaml
"STH-RBGT": "is this correct"
```

### `"STHARBGT": "is that correct"`

Plover currently has an outline for "is that correct?", with a trailing question
mark:

```txt
is that correct{?}:
  STHARBGT
```

However, due to the nature of Q&A and it's addition of ending punctuation at the
end of sentences when a speaker switch occurs, the ending question mark gets in
the way. So, I've seen fit to override it to remove the question mark.

Removing the question mark also improves better brief chaining where the
sentence does not end in "correct", like "is that correct or not?"

```yaml
"STHARBGT": "is that correct"
```

### `"STKO": "and do"`

Plover uses the following outline for the phrase "do is":

```txt
do is:
  STKO
```

The phrase "do is" reads a bit awkward to me, and I would rather use this
outline for and new phrase, "and do", which I think I would use more often.

So, I have decided to override `STKO` for "and do", but also keep "do is" by
assigning it an alternate phrase of `STKO*`.

```yaml
"STKO": "and do"
```

### `"STKPWEPB": "and again"`

Plover uses the following outlines for "again":

```txt
again:
  STPWEB
  TKPWEPB
  SKPWEPB
  STPWEPB
  STKPWEB
  STKPWEP
  STKWEPB
  STKPWEPB
  STKPWHEPB
  STKPW*EPB
```

The outline I use the most for "again" is `TKPWEPB`. I wouldn't think of using
`STKPWEPB` for "again", but think of it more as "and again".

Even though Plover already has an named outline for the phrase "and again":

```txt
and again:
  STKPWEPBG
```

I think that `STKPWEPB` fits better than `STKPWEPBG`, so I have decided to
override `STKPWEPB` for "and again".

```yaml
"STKPWEPB": "and again"
```

### `"STPH": "is in"`

Plover currently uses the following 11(!) outlines for {?}:

```txt
{?}:
  H*F
  H-F
  STP
  STPH
  H-FPB
  KW-PL
  STKPH
  STPH*
  STPHA
  STH/PHOEUFP
  TP-PL/STPH-RB
```

For a question mark, I tend to use `H-F`, which leaves the rest open to
overriding. I want to have a brief for "is in", and to me, either `STPH` or
`STPH*` seem like good candidates.

For now, I think that the non-`*`-flagged version seems like the most natural
fit, so I have decided to override `STPH` for "is in".

```yaml
"STPH": "is in"
```

### `"T*DZ": "it doesn't"`

Plover uses the following outlines for "{&T}":

```txt
{&T}:
  T*P
  T*DZ
  T*EUP
```

`T*P` is the only one I would use here, so I'm assuming all the rest are
mis-stroke handling. So, I'm going to override `T*DZ` for the phrase "it
doesn't".

```yaml
"T*DZ": "it doesn't"
```

### `"T*ET": "at the time"`

Platinum Steno uses `TET` as a brief for "at the time", but Plover already
uses `TET` for "[Tet][]":

```txt
Tet:
  TET
```

I figured perhaps `T*ET` might be a good alternative, but Plover already uses
that, too, for "death":

```txt
death:
  TK*T
  T*ET
  TKEGT
  TK*ET
```

However, for "death", I think I am most likely to use the `TK*ET` outline, and
I would really like that one-stroke brief for "at the time", and `T*ET` seems
like the current best candidate, so I have decided to override it.

```yaml
"T*ET": "at the time"
```

### `"T*PB": "to know"`

Plover uses the following outlines for "Tennessee":

```txt
Tennessee:
  T*PB
  T*PB/T*PB
  TEPB/TPHE/SAOE
  TEPB/TPHES/SAOE
```

I'm going to prefer having US state names be their repeated abbreviations since
I don't use them much. Therefore, I'm overriding `T*PB` to be "to know".

```yaml
"T*PB": "to know"
```

### `"T-D": "it had"`

Plover has this outline:

```txt
{^ed it}:
  T-D
```

It's something I never use due to its backwards nature, so I'd rather use it for
phrasing "it had".

```yaml
"T-D": "it had"
```

### `"T-L": "it will"`

In the same vein as "he'll", Plover has three outlines for "it'll"...

```txt
it'll:
  T*L
  T-L
  EUT/AOEL
```

...yet none for "it will". I wanted a single-stroke outline for "it will", so
I decided to override the non-`*`-flagged outline since `T*L` feels like a
better match for the "it'll" contraction, and I would wager I would use it more
often for "it'll" than I would `T-L`.

Given that `T-T` uses initial `T-` for "it" and final `-T` for "the", it makes
more sense to me to assign it to "it the".

```yaml
"T-L": "it will"
```

### `"T-PL": "to me"`

Plover uses the outline `T-PL` for "{.}". Given that I use `P-P` and `-FPLT` for
a period, I'd like to use `T-PL` for the phrase "to me".

```yaml
"T-PL": "to me"
```

### `"T-S": "it is"`

Plover provides an outline for "is it" (`ST`), but not one for the opposite,
"it is", which I have been using often. My first thought was to use the
`*`-flagged version of the outline, but it is currently used for:

```txt
St.{-|}:
  S*T
  ST*
```

Given that `-S` is used a lot for "is" in phrases, and given that Plover has a
lot of outlines already used for "it's"...

```txt
it's:
  T*S
  *TS
  T-S
  T-LS
  TK-S
  TP-S
  T-SZ
  T/AES
  EUT/AE
  T-S/AE
```

...I think it would be okay to override `T-S` for "it is".

```yaml
"T-S": "it is"
```

### `"T-T": "at it"`

It seems strange to me that `T-T` is currently used for "the". Plover currently
assigns it five outlines:

```txt
the:
  -T
  -LT
  -TD
  -TS
  T-T
```

The outline I use for "the" is `-T`, so `T-T` seems to me to be better used with
"at it".

```yaml
"T-T": "at it"
```

### `"TA": "at a"` and `"HA": "had a"`

Plover uses the following outlines for the word "that":

```txt
that:
  HA
  TA
  THA
  TWHA
  THRA
  THAO
  A/THA
```

That's a lot, and I think most of these are just mis-stroke handling for `THA`.
Therefore, I'd like to override `TA` for the phrase "at a", and `HA` for the
phrase "had a".

```yaml
"HA": "had a"
"TA": "at a"
```

### `"TA*UL": "at all"`

Plover uses the following outline for "{^-tall}":

```txt
{^-tall}:
  TA*UL
```

This is fine, but I'd like to have a one-stroke brief for "at all", and `TA*UL`
fits that bill. In order to not lose the original brief, I've assigned it to an
alt of `TAUL/TAUL`.

```yaml
"TA*UL": "at all"
```

### `"TAOUS": "to use"` and `"TAO*US": "use it"`

Plover uses the following outlines for the phrase "use it":

```txt
use it:
  TAOUS
```

I tend to not prefer using these kinds of "backwards" briefs unless they're
`*`-flagged, but also, "to use" makes more sense to me. In order to still keep
the "use it" phrase, I will override `TAO*US` for it, as it's being used for
"Tuesday", but "Tuesday" has lots of outlines allocated to it:

```txt
Tuesday:
  TAOUZ
  TAO*US
  TAO*UTS
  TAOUS/TKAEU
  TAOUZ/TKAEU
```

```yaml
"TAO*US": "use it"
"TAOUS": "to use"
```

### `"TH-L": "this will"`

In the same vein as "he will" and "it will", Plover assigns three outlines to
"this'll"...

```txt
this'll:
  TH*L
  TH-L
  TH-L/AE
```

...yet none to "this will" Similar to "it will", I felt that overriding `TH-L`
for "this will" was most appropriate, leaving the `TH*L` outline for the
"this'll" contraction.

```yaml
"TH-L": "this will"
```

### `"THA*EUF": "that I've"`

Plover uses the following outlines for the contraction "they've":

```txt
they've:
  THA*EUF
  THEF/AE
  THAEU/AO*EF
```

I use the override `TH*EF`, and so I'd like to use `THA*EUF` for phrasing "that
I've".

```yaml
"THA*EUF": "that I've"
```

### `"THA*T": "at the time"`

Platinum Steno uses `TAT` as a brief for "at that time", but Plover already
uses `TAT` for "[tat][]":

```txt
tat:
  TAT
```

I figured perhaps `THA*T` might be a good alternative, but Plover already uses
that, too, for "that the":

```txt
that the:
  THAT
  THA*T
  THA*ET
```

However, for "that the", I think I am most likely to use the `THAT` outline, and
I would really like that one-stroke brief for "at that time", and `THA*T` seems
like the current best candidate, so I have decided to override it.

```yaml
"THA*T": "at that time"
```

### `"THAD": "that had"`

Plover uses the following outline for "{^ed that}":

```txt
{^ed that}:
  THAD
```

I don't tend to use these kinds of briefs that start at the end of a word/phrase
and write some of the next word. I would rather have this be a brief for the
phrase "that had", to match with other phrases that end with `-D`.

```yaml
"THAD": "that had"
```

### `"THAEUD": "that I had"` and `"THA*EUD": "that I'd"`

Plover uses the following outlines for the contraction "they'd":

```txt
they'd:
  THAEUD
  THA*EUD
  THED/AE
```

For "they'd", I use an override, `TH*ED`, and I want to have a one-stroke
outline for the phrase "that I had", and its contraction "that I'd". `THAEUD`
and `THAE*UD` fit that bill.

```yaml
"THA*EUD": "that I'd"
"THAEUD": "that I had"
```

### `"THAF": "that have"`

Plover currently assigns the following outlines to "that've":

```txt
that've:
  THAF
  THA*F
  THA/AO*EF
```

I would like a phrase brief for "that have", and so `THAF` seemed like the most
logical choice to override, mirroring other similar overrides I've done.

```yaml
"THAF": "that have"
```

### `"THAL": "that will"`

Plover currently assigns 6(!) outlines to "that'll":

```txt
that'll:
  THAL
  THA*L
  THALT
  THAO*EL
  THAL/AE
  THA/AOEL
```

I would like a phrase brief for "that will", and so `THAL` seemed like the most
logical choice to override, mirroring the other "x will" overrides I've done.

```yaml
"THAL": "that will"
```

### `"THALGTS": "that that"`

Plover uses the following outlines for the contraction "that's":

```txt
that's:
  TH-TS
  THA*S
  THATS
  THRATS
  STHATS
  TPHATS
  THA*TS
  THATSZ
  THALTS
  LGTS
```

Out of these, I'd like to use `THALGTS` as "that that" to fit the `-LGTS` =
"that" in phrasing.

```yaml
"THALGTS": "that that"
```

### `"THATD": "that they"`

Plover uses the following outlines for the contraction "that'd":

```txt
that'd:
  THATD
  THA*D
  THAO*ED
```

Since I would use `THA*D` for "that'd", and I've decided to try using `-TD` for
phrasing "they", I'm going to override `THATD` with "that they".

```yaml
"THATD": "that they"
```

### `"THAUF": "that you have"` and `"THAUR": "that you are"`

Plover uses the following outlines for the phrases "that you've" and "that
you're":

```txt
that you've:
  THAUF

that you're:
  THAUR
```

I want to use `*`-flags for contractions, so I'm:

- giving "that you've" an alt outline of `THA*UF`, and overriding `THAUF` to be
  "that you have".
- giving "that you're" an alt outline of `THA*UR`, and overriding `THAUR` to be
  "that you are".

```yaml
"THAUF": "that you have"
"THAUR": "that you are"
```

### `"THED": "they had"`, `"THEF": "they have"`, `"THEL": "they will"`, and
`"THER": "they are"`

Plover uses the following outlines for the contractions "they'd", "they've",
"they'll", and "they're":

```txt
they'd:
  THED
  THAEUD
  THA*EUD
  THED/AE
```

```txt
they've:
  THEF
  THA*EUF
  THEF/AE
  THAEU/AO*EF
```

```txt
they'll:
  THEL
  THAEUL
  THA*EUL
  THEL/AE
  THAEU/AOEL
```

```txt
they're:
  THER
  24ER
  THERB
  THA*EUR
  THER/AE
```

Since I'd like to standardise on using `*`-flags for contractions, I'm adding
the following alts:

```
"TH*ED": "they'd"
"TH*EF": "they've"
"TH*EL": "they'll"
"TH*ER": "they're"
```

and overriding the non-starred versions to be the non-contracted phrases.

```yaml
"THED": "they had"
"THEF": "they have"
"THEL": "they will"
"THER": "they are"
```

### `"THEFPL": "of them"`

Plover uses the following outlines for "them":

```txt
them:
  THEP
  THEPL
  24E78
  THEFL
  THOEPL
  THEFPL
  TWHEPL
  THEUPL
```

Most of these seem like mis-stroke handling; I always use `THEPL`. Therefore,
I'd like to use `THEFPL` for the phrase "of them".

```yaml
"THEFPL": "of them"
```

### `"THAEUFR": "of their"`

Plover uses the following outlines for "their":

```txt
their:
  THAER
  THAEUR
  STHAEUR
  THAEUFR
  THRAEUR
  THAEURB
```

Aside from `THAEUR`, these look like mis-stroke handling. Therefore, I'm happy
to override `THAEUFR` for the phrase "of their".

```yaml
"THAEUFR": "of their"
```

### `"THR*": "it will"`

Plover has three outlines for "there":

```txt
there:
  THR
  TH-R
  THR*
```

For "there", I am most likely to use only `THR`, so I think being able to stroke
"it will" on mostly the left half of the keyboard with `THR*` will be handy.

```yaml
"THR*": "it will"
```

### `"THR-D": "there had"`

Plover uses the following outlines for the contraction "there'd":

```txt
there'd:
  THR*D
  THR-D
  THRAO*ED
```

There is no outline for "there had", so I'm going to override `THR-D` for that.

```yaml
"THR-D": "there had"
```

### `"THR-L": "there will"`

Plover has the following outlines for "there'll":

```txt
there'll:
  THR*L
  THR-L
  THRAO*EL
  THR/AOEL
  THR-L/AE
```

`THR*L` is the outline I use most for "there'll". I would like to have a
one-stroke outline for "there will" as well, and the `THR-L` outline
feels like the best candidate to me, so I will override that for "there will".

```yaml
"THR-L": "there will"
```

### `"THR-S": "there is"`

Plover currently has 8(!) outlines reserved for "there's":

```txt
there's:
  THR*S
  THR-S
  THR-GS
  THR-SZ
  TPHR-S
  THRAOES
  THR/AES
  THR-S/AE
```

...and yet just one for "there is", which feels a bit unintuitive to me:

```txt
there is:
  THR-LGS
```

Therefore, I've chosen to override `THR*S` for "there is", with the `*`
indicating that there are missing letters where the gap is being filled.

```yaml
"THR-S": "there is"
```

### `"TK*UF": "Duff"` and `"TKUF": "did you have"`

Plover uses the following outlines for "dove" and "Duff":

```txt
dove:
  TKOF
  TKO*F
  TK*UF
  TKOEF
  TKO*EF
```

```txt
Duff:
  TKUF
```

I would like a single-stroke outline for "did you have", and `TKUF` fits the
bill in my mind for that. Since "dove" has five outlines, I figure it will not
miss one, so I have decided to override `TK*UF` for "Duff", and override `TKUF`
for "did you have".

```yaml
"TK*UF": "Duff"
"TKUF": "did you have"
```

### `"TKOPBLT": "do not"`

Plover does have an outline entry for "do not", which I think is fine:

```txt
do not:
  TKPHOT
```

However, many of the "x not" entries use `-PBLT` in them:

```txt
are not: R-PBLT
is not: S-PBLT
did not: TK-PBLT
were not: WR-PBLT
will not: HR-PBLT
have not: SR-PBLT
had not: H-PBLT
cannot: KA-PBLT
```

I figure that building up muscle memory here will make me want to use `-PBLT`
for "do not" as well, and so I would like that option.

Plover assigns `TKOPBLT` to "doesn't", as well as four other outlines:

```txt
doesn't:
  TKOPBT
  TKUPBT
  TKOPBLT
  TKOPBTD
  TKPOPBT
```

I figure that out of this set, I'm more likely to use `TKOPBT` for "doesn't",
so I can override `TKOPBLT` for "do not".

```yaml
"TKOPBLT": "do not"
```

### `"TKPW*FG": "gonna have"`

Plover uses the following outlines for "gonna":

```txt
gonna:
  TKW*G
  KPW*G
  TKP*G
  TKPW*G
  TKPWH*G
  TKPW*FG
  TKPWO*G
  TKPWAO*G
  TKPWOEUPB
  TKPWHAOPB
```

Out of these, I use `TKPW*G` for "gonna", so I'd like to use the others for
phrasing. In this case, `TKPW*FG` for "gonna have".

```yaml
"TKPW*FG": "gonna have"
```

### `"TKPW-T": "go to"`

Plover uses the following outlines for "get":

```txt
get:
  TKWET
  TKPET
  KPWET
  TPWET
  TKPWET
  TKPW-T
  TKPWRET
  TKPWHET
  TKPWETD
  TKPWELT
```

Out of all of these, I'd use `TKPWET`, leaving the rest able to be overridden.
So, I'm going to override `TKPW-T` for the phrase "go to".

```yaml
"TKPW-T": "go to"
```

### `"TKPWO*ET": "go to"`

In Plover, "goat" is assigned both of the following outlines:

```txt
goat:
  TKPWOET
  TKPWO*ET
```

I think I would only ever use `TKPWOET` for "goat", and I think it would be
nice to have a single-stroke outline for "go to", so I have decided to override
`TKPWO*ET`.

```yaml
"TKPWO*ET": "go to"
```

### `"TKU/PWAOEU": "did you buy"`

A similar issue to `"KU/WAEUT": "can you wait"`: stroking `TKU/PWAOEU` when you
intend to use `TKU` for "did you" and then `PWAOEU` for "buy", forces output to
the city "Dubai". Plover assigns three outlines to "Dubai":

```txt
Dubai:
  TKU/PWAOEU
  TKAOUB/AOEU
  TKU/PWAO*EU
```

Out of these three, I would most likely use `TKU/PWAO*EU` for "Dubai" since
`*`-flagging is used often for [proper nouns][], so I overrode the flag-less
version for the "did you buy" phrase I would expect.

```yaml
"TKU/PWAOEU": "did you buy"
```

### `"TKUFR": "did you ever"`

Plover uses the following outline for "duffer":

```txt
duffer:
  TKUFR
```

This is fine, but "duffer" is a word I would hardly ever use. Therefore, I want
to reassign this to be the phrase "did you ever", and give "duffer" an alt
outline of its `*`-flagged, `TK*UFR`.

```yaml
"TKUFR": "did you ever"
```

### `"TKWROUR": "to your"`

Plover uses the following outlines for the word "your":

```txt
your:
  KWOUR
  KWRUR
  WROUR
  KWROUR
  KWRAOUR
  SKWROUR
  KWROURB
  KPWROUR
  TKWROUR
```

I use `KWRUR` or `KWROUR`, and I think the rest are probably mis-stroke
handling. So, I'd like to reassign `TKWROUR` to the phrase "to your".

```yaml
"TKWROUR": "to your"
```

### `"TO*ER": "to her"`

Plover uses the following outlines for the word "tore":

```txt
tore:
  TO*R
  TO*ER
```

These are fine, but I'd like to have a one-stroke outline for "to her", so
`TO*ER` seems to work best for me.

```yaml
"TO*ER": "to her"
```

### `"TO*S": "to say"`

Plover uses the following outlines for "toss":

```txt
toss:
  TOS
  TO*S
  TOSZ
```

These are fine, but I'd like a one-stroke brief for the phrase "to say", and I'd
like to use `TO*S`.

```yaml
"TO*S": "to say"
```

### `"TO*UR": "to our"`

Plover currently uses the following outlines for "tower":

```txt
tower:
  TOUR
  TO*UR
```

I don't think both the `*`-flagged and non-flagged versions need to be used for
this word, and I would like to have a single-stroke outline for the phrase
"to our" (kind of as a "squeezed" brief), so I have decided to override the
`*`-flagged version for this as it feels like the most natural choice.

```yaml
"TO*UR": "to our"
```

### `"TOD": "to do"`

Plover uses the following outlines for "{^ed to}":

```txt
{^ed to}:
  TOD
  TOTD
```

This format isn't something I tend to use, so I'd like to use `TOD` for the
phrase "to do" instead.

```yaml
"TOD": "to do"
```

### `"TOG": "to go"`

Plover uses the following outlines for "{^ing to}":

```txt
{^ing to}:
  TOG
```

This format isn't something I tend to use, so I'd like to use `TOG` for the
phrase "to go" instead.

```yaml
"TOG": "to go"
```

### `"TPEUBG": "if I can"`

Plover currently has the following outlines for proper noun "Fick":

```txt
Fick:
  TPEUBG
  TP*EUBG
```

I would like a single-stroke brief for "if I can" (Plover currently has a
two-stroke brief: `TP/EUBG`), and `TPEUBG` seems like the best candidate since I
think I would use it more than "Fick", and there is already a general steno
convention to `*`-flag proper nouns.

```yaml
"TPEUBG": "if I can"
```

### `"TPEUF/PERS": "five percent"`

Plover has the following outline for "5%":

```txt
5%:
  TPEUF/PERS
```

"5%" is the only number that has this kind of named outline, and it conflicts
with writing "five percent". I actually think this outline itself is a mistake
or mis-stroke, so my intention is to correct it.

```yaml
"TPEUF/PERS": "five percent"
```

### `"TPH*T": "in it"`

Plover uses the following outline for the phrase "income tax":

```txt
income tax:
  TPH*T
```

I don't use "income tax" enough to justify a brief this compact, so instead id
like to reassign it to be something more common: "in it".

```yaml
"TPH*T": "in it"
```

### `"TPH-FP": "in which"`

Plover uses the following outlines for "inch":

```txt
inch:
  TPH-FP
  EUFRPBLG
```

Since adding `EUFRPB` as an alt for "inch", I'd like to re-purpose `TPH-FP` in a
phrasing capacity, as "in which".

```yaml
"TPH-FP": "in which"
```

### `"TPHA": "in a"`

Plover use the following outlines for "that":

```txt
that:
  HA
  TA
  THA
  TPHA
  TWHA
  THRA
  THAO
  A/THA
```

All of these aside from `THA` seem like mis-stroke handling. So, I'd like to use
`TPHA` for the "in a" phrase.

```yaml
"TPHA": "in a"
```

### `"TPHAO*EUPL": "in my"`

Plover uses the following outlines for "New York Public Library":

```txt
New York Public Library:
  TPHAO*EUPL
  TPHO*RBG/PHREUBG/HRAOEURB
  TPHO*RBG/PHREUBG/PHRAOEURB
```

I can't imagine using this brief much at all, so I'm going to assign it to the
phrase "in my".

```yaml
"TPHAO*EUPL": "in my"
```

### `"TPHER": "if her"`

Plover uses the following outlines for "{^ener}":

```txt
{^ener}:
  TPHER
```

Given that this is a suffix, I think it seems for natural for the outline to
have a `*`-flag, so I've added an alt outline for that. Therefore, I'd like to
use `TPHER` for phrasing "if her".

```yaml
"TPHER": "if her"
```

### `"TPHORB": "not sure"`

Plover uses the following outlines for "New York":

```txt
New York:
  TPHORB
  TPHO*RBG
  TPHO*RPBG
  TPHO*FRBG
  TPHU/KWRORBG
  TPHAO*EU/TPHAO*EU
```

Out of these, I use `TPHO*RBG`, and I think `TPHORB` would be best used in
phrasing "not sure".

```yaml
"TPHORB": "not sure"
```

### `"TPHUP": "end up"`

Plover uses the following outlines for "newspaper":

```txt
newspaper:
  TPHUP
  TPHAOUP
  TPHUS/PAEUP
  TPHUS/PAP/*ER
  TPHAOUZ/PAEUP/ER
  TPHAOUS/PAEUP/ER
  TPHU/-S/PAEUP/ER
```

These are fine, but I'd tend to use long `AOU` with "news(paper)", so I'd like
to repurpose `TPHUP` for phrasing "end up".

```yaml
"TPHUP": "end up"
```

### `"TPHURPB": "in turn"`

Plover uses the following brief for the phrase "turn in":

```txt
turn in:
  TPHURPB
```

I would be more likely to read that as "in turn", but I don't want to lose a
brief for "turn in", so I've added an alt brief for it: `T*URPB`.

```yaml
"TPHURPB": "in turn"
```

### `"TPOEUT": "for it"`

Plover uses the following outlines for "photo":

```txt
photo:
  TPOET
  TPOEUT
  TPOE/TOE
  TPOET/OE
```

Use of `TPOEUT` doesn't look quite right to me, so instead I'd like to use it
for the phrase "for it".

```yaml
"TPOEUT": "for it"
```

### `"TPORB": "for sure"`

Plover currently has the following outlines for the word "for":

```txt
for:
  P-R
  TPOR
  TP-R
  230R
  TPO*R
  TPORB
```

I would like to have a one-stroke phrase for "for sure", and `TPORB` looks like
it fits the bill best. Since I am most likely to use `TPOR` or `TP-R` for "for",
I'm happy to override `TPORB` for this.

Reason for wanting to override this to output "four-" are the same as described
in entry for `"THRAO*E": "three-"`.

```yaml
"TPORB": "for sure"
``` 

### `"TPOT": "for the"`

Plover uses the following outlines for the word "not":

```txt
not:
  TPOT
  PHOT
  TPHOT
  23409
  TPHOLT
  TPHOPT
  TPHOTD
  TPHOTS
```

All the ones aside from `TPHOT` look like mis-stroke handling or some kind of
brief I don't know about. So, I'd like to use `TPOT` for the phrase "for the".

```yaml
"TPOT": "for the"
```

### `"UL": "you will"`

Plover uses the following outlines for the contraction "you'll":

```txt
you'll:
  UL
  KWRO*UL
  KWRAO*UL
  UL/AE
  KWROU/AOEL
```

I would prefer to `*`-flag contractions, so `*UL` feels more natural to me for
"you'll", which means I would like `UL` to be the non-contracted "you will".

```yaml
"UL": "you will"
```

### `"URL": "you recall"` and `"URLD": "you recalled"`

Plover uses the following outlines for "URL":

```txt
URL:
  URL
  *URL
```

Given that `-RL` is the outline for "recall", it would be nice to have a
"you recall" phrase brief. `URL` fits this bill for me, and I'm happy to have
the `*`-flagged `*URL` indicate an abbreviation.

Also, Plover uses the following outlines for "ultrasound":

```txt
ultrasound:
  URLD
  UL/TRA/SOUPD
  UL/TRA/SOUPBD
```

Given the change above to use `URL` for "you recall", I would like `URLD` to
be used for "you recalled", but also keep a one-stroke brief for "ultrasound".

So, I have decided to assign `*URLD` to ultrasound (since it it not currently
used), with the `*`-flag indicating a word squeeze, and override `URLD` for
"you recall".

```yaml
"URL": "you recall"
"URLD": "you recalled"
```

### `"W*PL": "with my"`

Plover uses the following outlines for "WPM":

```txt
WPM:
  W*PL
  W-PL
```

These are fine, but I'd like to override `W*PM` for the phrase "with my".

```yaml
"W*PL": "with my"
```

### `"W-RS": "where is"`

Plover has the following outlines for "where's" and "where is":

```txt
where's:
  W*RS
  WR*S
  W-RS
  WRAOES
  WRAO*ES

where is:
  SW*R
  WR-S
```

There seems to be inconsistencies on when to use apostrophes for contractions
when the outline is in steno order or not.

Given that `-S` at the end of many Plover phrases results in "is", I'd like to
have the same for "where" is, using the `W-R` outline for "where".

```yaml
"W-RS": "where is"
```

### `"WA*": "with a"`

Plover uses the following outlines are for the state of "Washington":

```txt
Washington:
  WA*
  WA*/WA*
  WARBG/TOPB
  WARB/-G/TOPB
```

These are fine, but I don't use US state names that often, and I think the `WA*`
brief would be better served as a brief for the phrase "with a".

```yaml
"WA*": "with a"
```

### `"WAEPBLT": "was not"`

Plover uses the following outlines for "eventually":

```txt
eventually:
  *ERBL
  *EFPBL
  WAEPBLT
  AOEPT/WAEL
  AEPBT/WAEL
  SREPBT/WAEL
  AOEPBT/WAEL
  AOEPBTS/WAEL
  AOEPBT/SRAEL
  AOEPBLT/WAEL
```

Out of the single-stroke entries, I think I am least likely to use `WAEPBLT`.
I would also like a single-stroke brief for the phrase "was not" that
complements the `WAEPBT` brief for "wasn't", and `WAEPBLT` fits the bill for
that, so I have decided to override it.

```yaml
"WAEPBLT": "was not"
```

### `"WAOEL": "we will"`

Similar rationale to `"HAOEL": "he will"` and `"T-L": "it will"`. Plover
assigns five outlines to "we'll"...

```txt
we'll:
  WAOEL
  WAO*EL
  WAOEPL
  WE/AOEL
  WAOEL/AE
```

...yet none to "we will", so I decided to override the `WAOEL` for "we will" and
keep `WAO*EL` for the "we'll" contraction.

```yaml
"WAOEL": "we will"
```

### `"WAOER": "we are"` and `"WAOEF": "we have"`

Similar to `"WAOEL": "we will"`, I want to mostly use stars for contractions.

```yaml
"WAOEF": "we have"
"WAOER": "we are"
```

### `"WEF": "we have"`

Plover has the following outlines for "weave":

```txt
weave:
  WEF
  WAEF
  WAO*EF
```

This seems like a lot of outlines for what I think is a rarely used word, and I
think the `WEF` outline in particular could be put to better use as a brief for
the more common phrase "we have".

```yaml
"WEF": "we have"
```

### `"WEFPBT": "we haven't"`

Plover has the following 7(!) outlines for "went":

```txt
went:
  WEBLT
  WEPBT
  WEBLTS
  WEFPBT
  WEPBLT
  WEPBTS
  WEUPBLTS
```

Out of all these briefs, I think the one I would likely use the most often for
"went" would be `WEPBT`. I would like to have an outline for the phrase "we
haven't", which connects the my other `"WEF": "we have"` override, and `WEFPBT`
is my favourite candidate, so it gets overridden.

```yaml
"WEFPBT": "we haven't"
```

### `"WEFRB": "we need"`

Plover uses the following outlines for "everywhere":

```txt
everywhere:
  WEFR
  WEFRB
  EFR/WR
  *EFR/WR
  EFR/W-R
  EF/REU/WR
  *EF/REU/WR
```

The one-stroke `WEFR` brief is what I'd tend to use, and so I'd like to override
`WEFRB` for phrasing "we need".

```yaml
"WEFRB": "we need"
```

### `"WERPB": "western"`

Plover uses the following outlines for "western", and proper noun "Western":

```txt
western:
   WES/TERPB

Western:
   WERPB
   W*ERPB
   WEFT/*ERPB
```

I think that it should not only be the proper noun that gets a one-stroke
brief, and that the `*`-flagged brief should be the proper noun version.

```yaml
"WERPB": "western"
```

### `"WEUL/HROE/TRAOE": "willow tree"`

Currently, Plover has the following outline:

```txt
WillowTree:
  WEUL/HROE/TRAOE
```

This, to me, looks like a proper noun for perhaps a company name. It
unfortunately also gets in the way of writing "willow tree". So, I've decided
to override it, and create a new `WEUL/HROE/TRAO*E` outline for "WillowTree"
that is `*`-flagged to indicate that it is a proper noun.

```yaml
"WEUL/HROE/TRAOE": "willow tree"
```

### `"WEUR": "which are"`

Plover uses the following outlines for "wire":

```txt
wire:
  WEUR
  WAOEUR
```

I would only ever use `WAOEUR` here, so I'd like to override `WEUR` for phrasing
"which are".

```yaml
"WEUR": "which are"
```

### `"WH-RB": "when she"`

Plover uses the following outlines for "when shall":

```txt
when shall:
  WH-RB
```

I'd like to use `-RB` for final "she" in phrasing, and `-RBL` for final "shall".
So, I'm giving an alt for "when shall" of `WH-RBL`, and overriding `WH-RB` to be
"when she".

```yaml
"WH-RB": "when she"
```

### `"WH-RP": "when were"`

I have to assume that the current Plover `"WH-RP": "When were"` with the
capitalised "When" is a typo, so I'm overriding it with the more flexible lower
case version.

```yaml
"WH-RP": "when were"
```

### `"WHAL": "what will"`

Plover currently has the following outlines for "what'll":

```txt
what'll:
  WHAL
  WHA*L
  WHA/AOEL
```

Yet, it does not have a single-stroke outline for "what will", so I have decided
to override `WHAL` for it.

```yaml
"WHAL": "what will"
```

### `"WHARB": "what she"`

Plover uses the following outlines for the phrase "what shall":

```txt
what shall:
  WHARB
```

This is fine, but in order to accommodate a "what she" phrase as well, I've
added an alt outline of `WHARBL` for "what shall", and will override `WHARB` for
"what she".

```yaml
"WHARB": "what she"
```

### `"WHATD": "what they"`

Plover uses the following outlines for the contraction "what'd":

```txt
what'd:
  WHATD
  WHA*D
```

These are fine, but I want to use `-TD` as final "they" for phrasing, so I'm
overriding `WHATD` for "what they", and giving "what'd" an alt outline of
`WHA*TD`.

```yaml
"WHATD": "what they"
```

### `"WHATS": "what is the"`

Plover uses the following outlines for "what's":

```txt
what's:
  WHA*S
  WHAES
  WHATS
  WHALTS
  KWHATS
  WHRATS
  WHATSZ
  WHAS/AE
What's:
  WHATSD
```

I use `WHA*S` for "what's", so I'd like to override `WHATS` to be the phrase
"what is the".

```yaml
"WHATS": "what is the"
```

### `"WHAUF": "what you have"`

Plover uses the following outlines for the phrase "what you've":

```txt
what you've:
  WHAUF
```

I want to use `*`-flags to indicate contractions, so I've added an alt for "what
you've" as `WHA*UF`, and will change `WHAUF` to be "what you have".

```yaml
"WHAUF": "what you have"
```

### `"WHE": "when he"`

Plover uses the following outlines for "when":

```txt
when:
  WH
  WHE
  WHEP
  WHEB
  WHEPB
  KWHEPB
  WHREPB
  PWHEPB
When:
  WHRE
```

Quite a lot, but I would use `WH` exclusively, leaving the others open to
override for phrasing. So, I'm going to do that for `WHE` by assigning it to
"when he".

```yaml
"WHE": "when he"
```

### `"WHUR": "when you are"`

Plover uses the following briefs for the "when you're" phrase:

```txt
when you're:
  WHUR
```

I want to use `*`-flags for contractions, so I'm giving "when you're" an alt of
`WH*UR`, and overriding `WHUR` to be "when you are".

```yaml
"WHUR": "when you are"
```

### `"WHOF": "who have"`

Plover has three outlines for "who've", but none for "who have":

```txt
who've:
  WHOF
  WHO*F
  WHO/AO*EF
```

So, I have decided to override `WHOF` for who have.

```yaml
"WHOF": "who have"
```

### `"WHOL": "who will"`

Plover has three outlines for "who'll", but none for "who will":

```txt
who'll:
  WHOL
  WHO*L
  WHO/AOEL
```

So, I've decided to override `WHOL` for "who will".

```yaml
"WHOL": "who will"
```

### `"WHOR": "who are"`

Plover uses the following outlines for the word "whore":

```txt
whore:
  WHOR
  WHOER
```

These are fine, but I'd like to have a one-stroke brief for "who are", and I'd
like to use `WHOR`.

```yaml
"WHOR": "who are"
```

### `"WHOU": "who you"`

Plover uses the following outlines for the word "how":

```txt
how:
  HOU
  WHOU
  PHOU
```

The only one of these that makes sense to me is `HOU`. I'd like to have a
one-stroke brief for the phrase "who you", so I've decided to override `WHOU` to
do that.

```yaml
"WHOU": "who you"
```

### `"WHOUR": "who you are"`

Plover has the following phrase entry for "who you're":

```txt
who you're:
  WHOUR
```

I'd like to change this to "who you are", and add in an alt outline for the
contraction "who you're", since I'd like to standardise on using `*`-flags for
contractions.

```yaml
"WHOUR": "who you are"
```

### `"WO*E": "would he"`

Plover has the following outlines for "woe":

```txt
woe:
  WOE
  WO*E
```

For "woe", I am most likely to just use `WOE`, and I would like a brief for
"would he", so `WO*E` seems like the most appropriate outline to override.

```yaml
"WO*E": "would he"
```

### `"WO*G": "would go"`

Plover has the following outlines for "working":

```txt
working:
  WOG
  WO*G
  WORBG/-G
  PWORBG/-G
```

For "working", I am most likely to just use `WOG`, and I would like a brief for
"would go", so `WO*G` seems like the most appropriate outline to override.

```yaml
"WO*G": "would go"
```

### `"WO*UF": "would you've"`, `"WOUF": "would you have"`, and `"WOUFB": "would you have been"`

Plover currently uses the following outline for the phrases "would have" and
"would have been":

```txt
would have:
  WOUF

would have been:
  WOUFB
```

Given that the brief for "would" is `WO`, the inclusion of the `U` in these
briefs do not make sense to me, and are preventing the potential inclusion of
the word "you" in those phrases for "would you've" and "would you've been",
both of which do not currently have named entries in Plover's dictionary.

Therefore, I have decided to add some alternative entries for the following
phrases:

- `"WO*F": "would've"`

and override `WOUF` for "would you've", and `WOUFB` for "would you've been".

```yaml
"WO*UF": "would you've"
"WOUF": "would you have"
"WOUFB": "would you have been"
```

### `"WOF": "would have"`

Plover currently uses the following outline for "wolf":

```txt
wolf:
  WOF
  WOFL
  WOL/-F
  WOL/*F
```

The outline I think I would use most for wolf would be `WOFL`, and I would like
to have a short brief for the contraction "would've", and `WOF` fits the bill.
So, I have decided to override `WOF` for "would have".

```yaml
"WOF": "would have"
```

### `"WOPT": "would want"`

Plover uses the following outlines for the contraction "won't":

```txt
won't:
  WOPT
  WOEPBT
```

I use `WOEPBT` exclusively, so I'd like to reassign `WOPT` to be the phrase
"would want".

```yaml
"WOPT": "would want"
```

### `"WOUB": "would you be"`

Plover uses the follow briefs for the phrase "would be":

```txt
would be:
  WOB
  WOUB
```

`WOB` makes sense to me, but given that `WOU` by itself is "would you", it makes
more sense to me to have `WOUB` be "would you be".

```yaml
"WOUB": "would you be"
```

### `"WRU": "were you"`

Plover has the following outlines for "you were":

```txt
you were:
  URP
  WRU
```

`URP` makes sense to me, but to have the "reversal" outline `WRU` _also_ resolve
to "you were" when there is not an official outline for the phrase "were you"
does not make sense to me, so I have decided to override `WRU` for "were you".

```yaml
"WRU": "were you"
```

## Proper Nouns

### `"A*L/A*L": "Alabama"`

Plover uses the following outlines for proper noun "Al":

```txt
Al:
  AL/AL
  A*L/A*L
```

I think this is generally fine, but since the abbreviation for the US state of
Alabama is "AL", it would be nice to be able to use one of these outlines for
it.

Currently, Plover uses the following outlines for "Alabama":

```txt
Alabama:
  AL/PWAPL
  AL/PWA/PHA
  AL/PWAPL/PHA
```

These outlines make Alabama one of the outliers for US-state strokes, which
tend to use their abbreviation (or a repetition of the abbreviation) as the
outline.

I don't think that the proper noun "Al" needs to have both the non-`*`-flagged
version and the `*`-flagged version of the repeated "Al" outline, so I have
decided to override `A*L/A*L` for "Alabama".

```yaml
"A*L/A*L": "Alabama"
```

### `"AEUD/*EPB": "Aiden"`

Plover has the following outline for the proper noun name "Aidan":

```txt
Aidan:
  AEUD/*EPB
```

The problem with this is that there is also the name "Aiden" with an "e", which
does not have a named outline in Plover. Rather than keep the current outline
for Aidan, and add `"AEUD/*APB": "Aiden"`, resulting in confusion, I have
decided to override `AEUD/*EPB` for "Aiden", and add `AEUD/*APB` as a new entry
for "Aidan".

```yaml
"AEUD/*EPB": "Aiden"
```

### `"H*ET/*ER": "Heather"`

Plover currently assigns the following outlines for "heather":

```txt
heather:
  H*ET/ER
  H*ET/*ER
```

However, there is no outline for the proper noun "Heather". For "heather" the
plant, I think I am most likely to use `H*ET/ER`, and given that `H*ET/*ER` is
`*`-flagged on the second stroke, it feels that it should be used for the proper
noun version of the word, so that is how I will override it.

```yaml
"H*ET/*ER": "Heather"
```

### `"KAEUT/KAEUT": "Cate"`

Plover currently does not have an outline for the name "Cate" with a "C". Two
outlines are used for "Kate":

```txt
Kate:
  KA*ET
  KAEUT/KAEUT
```

So, I decided to override the latter for "Cate" since it is probably(?) less
frequently used than "Kate".

```yaml
"KAEUT/KAEUT": "Cate"
```

### `"KAO*EPB": "Keene"`

Plover uses the following outlines for the word "keen":

```txt
keen:
  KAOEPB
  KAO*EPB
```

Plover does not have an entry for the proper noun "Keene", so I want to use the
`*`-flagged version of the outline.

```yaml
"KAO*EPB": "Keene"
```


### `"PAOET/PAOET": "Peat"`

Plover currently uses the following outlines for "Pete":

```txt
Pete:
  PAOET
  PAO*ET
  PAOET/PAOET
```

These are all fine, but there is no outline for the alternate spelling of
"Peat". Given that it's less common, I'm going to give it the `*`-flagged
outline.

```yaml
"PAO*ET": "Peat"
```

### `"PEPB/TPH*EU": "Penny"`

Plover currently uses the following outlines for "penny":

```txt
penny:
  PEPB/TPHEU
  PEPB/TPH*EU
```

This would be fine, but Plover does not have an outline for the proper noun
"Penny", short for "Penelope". `PEPB/TPH*EU` seems like the logical choice for
this outline given other `*`-flagged proper nouns, so I have decided to override
it.

```yaml
"PEPB/TPH*EU": "Penny"
```

### `"PW*ERL": "Beryll"`

Plover uses the following outlines for "Beryl":

```txt
Beryl:
  PWERL
  PW*ERL
```

Plover does not have a named entry for proper noun "Beryll", and so it makes
sense to me to use the `*`-flagged version of "Beryl".

```yaml
"PW*ERL": "Beryll"
```

### `"PWA*EUB": "Babe"`

Plover currently uses the following outlines for "baby":

```txt
baby:
  PWAEB
  PWA*EB
  PWA*EUB
  PWAEU/PWEU
  PWAEUB/PWEU
  PWAEUB/KWREU
```

I think the outline I would most likely use for "baby" is `PWAEB`, and I would
like to have a one-stroke outline for the proper noun "Babe", for "Babe Ruth".
Given that `PWAEUB` is the outline for "babe", having the `*`-flagged version of
the outline as it's proper noun version makes sense to me, so I have decided to
override `PWA*EUB` for "Babe".

```yaml
"PWA*EUB": "Babe"
```

### `"RO*FL": "Rolf"` and `"ROFL": "revolve"`

Plover currently uses the following outlines for the name "Rolf"/"Rolfe":

```txt
Rolf:
  ROFL

Rolfe:
  RO*FL
```

This seems reasonable, but the outlines for "revolve", a likely more used word,
are:

```txt
revolve:
  RE/SROF
  RE/SROFL
  R*E/SROFL
  RE/SROL/*F
  RAOE/SROL/-F
```

These also seem reasonable, but then the outlines for "revolved" are:

```txt
revolved:
  ROFLD
  RE/SROFL/-D
  RE/SROL/*FD
  RE/SROL/TP-D
  RAOE/SROL/-FD
  RE/SROL/-F/-D
```

And it's that `ROFLD` outline that made me think whether it would be worth
overriding `ROFL` for "revolve", so I have decided to do just that, as well as
override proper noun "Rolf" to `RO*FL` and give its alternate spelling to a
new outline, `RO*FL/RO*FL`.

```yaml
"RO*FL": "Rolf"
"ROFL": "revolve"
```

### `"SHA*EUFR": "Shaffer"`

Plover currently has the following outlines for "shaver":

```txt
shaver:
  SHAEUFR
  SHA*EUFR
  SHAEUF/*ER
  SHA*EUF/ER
```

Plover does not contain an entry for the proper noun surname "Shaffer". Given
that shaver uses `SHAEUFR` and its `*`-flagged equivalent, I have decided to
override the latter for the surname "Shaffer".

```yaml
"SHA*EUFR": "Shaffer"
```

### `"THOPL": "Thom"`

Plover uses the following outlines for the proper noun "Tom":

```txt
Tom:
  TOPL
  THOPL
```

I'd use `TOPL` in this case. Also, Plover has no outline for the proper noun
"Thom" with an "H", so I think this is worth an override for `THOPL`.

```yaml
"THOPL": "Thom"
```

### `"TKO*RPB": "Doner"`

Plover uses the following outline for "Doner":

```txt
Doner:
  TKOEPB/*ER
```

It would be nice to have a one-stroke outline for it. Something like `TKO*RPB`
would be nice, but it's already being used by "donor":

```txt
donor:
  TKORPB
  TKO*RPB
  TKOERPB
  TKOE/TPHOR
  TKOEPB/O*R
```

Given that "donor" already has so many entries, and that I would most likely use
`TKORPB` for "donor", I have decided to override `TKO*RPB` for "Doner".

```yaml
"TKO*RPB": "Doner"
```

### `"UD": "you had"`

Plover currently assigns the following outlines to "you'd":

```txt
you'd:
  UD
  *UD
  AOUD
  KWRO*UD
  UD/AE
```

I would like a single-stroke brief for "you had", and I think one of these
existing briefs would be appropriate. Given that I would most likely use `*UD`
for "you'd", `UD`, seems like the best candidate for "you had".

```yaml
"UD": "you had"
```

### `"UF": "you have"` and `"*UF": "you've"`

Plover uses the following outlines for "you've" and "UV":

```txt
you've:
  UF
  AOUF
  KWRO*UF
  KWRAO*UF
  UF/AE
  KWROU/AO*EF
```

```txt
UV:
  *UF
```

Since I'd like to standardise on having `*`-flags represent contractions, I'd
rather have `UF` map to "you have", and `*UF` map to "you've". The proper noun
"UV" isn't a word I use very often, so I've decided to add an alt outline for it
so it doesn't get lost: `AO*UF`.

```yaml
"*UF": "you've"
"UF": "you have"
```

### `"UFB": "you have been"` and `"*UFB": "you've been"`

Plover uses the following briefs for "USB":

```txt
USB:
  UFB

usb:
  *UFB
```

Given the entry for "`"UF": "you have"` and `"*UF": "you've"`", this opens up
other phrasings combinations to override. I still want to keep "USB" and "usb"
outlines, so I've added them in as alts.

```yaml
"*UFB": "you've been"
"UFB": "you have been"
```

### `"UR": "you are"` and `"*UR": "you're"`

Plover uses the following outlines for "you are" and "you're":

```txt
you are:
  *UR
  R*U
```

```txt
you're:
  UR
  URB
  KWRO*UR
  KWRAO*UR
  UR/AE
```

I'd like to standardise on having `*`-flagging be used for contractions, so my
intention is to swap `*UR` and `UR`.

```yaml
"*UR": "you're"
"UR": "you are"
```

[@paulfioravanti]: https://www.twitter.com/paulfioravanti
[`asdf`]: https://github.com/asdf-vm/asdf
[cremophor]: https://www.sciencedirect.com/topics/pharmacology-toxicology-and-pharmaceutical-science/cremophor
[fief]: https://dictionary.cambridge.org/dictionary/english/fiefdom?q=fief
[flack]: https://dictionary.cambridge.org/dictionary/english/flack
[flak]: https://dictionary.cambridge.org/dictionary/english/flak
[Free Lossless Audio Codec]: https://xiph.org/flac/
[jell]: https://dictionary.cambridge.org/dictionary/english/jell
[mane]: https://dictionary.cambridge.org/dictionary/english/mane
[openstenoproject/plover#1407]: https://github.com/openstenoproject/plover/issues/1407
[proper nouns]: https://en.wikipedia.org/wiki/Proper_and_common_nouns
[pro re nata]: https://en.wikipedia.org/wiki/Pro_re_nata
[shew]: https://www.collinsdictionary.com/dictionary/english/shew
[steno_dictionaries issues]: https://github.com/paulfioravanti/steno_dictionaries/issues
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
[tat]: https://dictionary.cambridge.org/dictionary/english/tat
[Tet]: https://www.merriam-webster.com/dictionary/Tet
[tiff]: https://dictionary.cambridge.org/dictionary/english/tiff
[tot]: https://dictionary.cambridge.org/dictionary/english/tot
[Uber]: https://www.uber.com/
[unction]: https://dictionary.cambridge.org/dictionary/english/unction
[Yack]: https://dictionary.cambridge.org/dictionary/english/yack
[Yawl]: https://www.collinsdictionary.com/us/dictionary/english/yawl
