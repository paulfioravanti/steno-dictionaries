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

* [Punctuation](#punctuation)
* [Fingerspelling](#fingerspelling)
* [Prefixes, Suffixes, Abbreviations](#prefixes-suffixes-abbreviations)
* [Words](#words)
* [Words](#words-1)
    - [`"TPHO*E": "info"`](#tphoe-info)
    - [`"TPHO*U": "{^, now,}"`](#tphou--now)
    - [`"TPHORPB": "northern"` and `"TPHO*RPB": "Northern"`](#tphorpb-northern-and-tphorpb-northern)
    - [`"TPHRA*BG": "flack"`](#tphrabg-flack)
    - [`"TPRAOEUPBG": "frightening"`](#tpraoeupbg-frightening)
    - [`"TPO*UR": "{four-^}"`](#tpour-four-)
    - [`"TRAEUPL": "trademark"`](#traeupl-trademark)
    - [`"TRA*PBS": "trance"`](#trapbs-trance)
    - [`"UPBGS": "understanding"`](#upbgs-understanding)
    - [`"WA*EPB": "weaken"`](#waepb-weaken)
    - [`"WRAOEUGT": "writing"`](#wraoeugt-writing)
* [Phrases](#phrases)
    - [`"PWHOF": "on behalf of"`](#pwhof-on-behalf-of)
    - [`"PWUT": "but the"`](#pwut-but-the)
    - [`"O*EUPLT": "I am the"`](#oeuplt-i-am-the)
    - [`"UD": "you had"`](#ud-you-had)
    - [`"UF": "you have"` and `"*UF": "you've"`](#uf-you-have-and-uf-youve)
    - [`"UFB": "you have been"` and `"*UFB": "you've been"`](#ufb-you-have-been-and-ufb-youve-been)
    - [`"UR": "you are"` and `"*UR": "you're"`](#ur-you-are-and-ur-youre)
    - [`"HRAOF": "a lot of"`](#hraof-a-lot-of)
    - [`"HAOERS": "here is"`](#haoers-here-is)
    - [`"*ED": "he'd"`](#ed-hed)
    - [`"*EUD": "I'd"`, `"EUD": "I had"`, and `"AOEUD": "id"`](#eud-id-eud-i-had-and-aoeud-id)
    - [`"*EUG": "I go"`, `"EUG": "{ig^}"`, `"*UG": "you go"`](#eug-i-go-eug-ig-ug-you-go)
    - [`"*EUL": "I'll"`](#eul-ill)
    - [`"*UFD": "you have had"`](#ufd-you-have-had)
    - [`"*UPBG": "you think"`](#upbg-you-think)
    - [`"-FPL": "of my"`](#-fpl-of-my)
    - [`"-FTS": "was the"`](#-fts-was-the)
    - [`"-FZ": "of those"`](#-fz-of-those)
    - [`"-PL/H-PL": "mm-hmm"`](#-plh-pl-mm-hmm)
    - [`"-T/HRAOUFR": "the louver"`](#-thraoufr-the-louver)
    - [`"-T/HROEUPB": "the loin"`](#-throeupb-the-loin)
    - [`"-TS": "it is"` and `"-TD": "they"`](#-ts-it-is-and--td-they)
    - [`"AEUFR": "a few"`](#aeufr-a-few)
    - [`"AFT": "after the"`](#aft-after-the)
    - [`"AOEUF": "I have"` and `"AOEUFB": "I have been"`](#aoeuf-i-have-and-aoeufb-i-have-been)
    - [`"AO*URB": "you shall"`, `"URB": "you shall"`, `"URBL": "you shall"`](#aourb-you-shall-urb-you-shall-urbl-you-shall)
    - [`"AOUFT": "used to"`](#aouft-used-to)
    - [`"AUB": "all about"`](#aub-all-about)
    - [`"AUFS": "all of us"`](#aufs-all-of-us)
    - [`"ED": "he had"`](#ed-he-had)
    - [`"EUFL": "I feel"`](#eufl-i-feel)
    - [`"EUFRG": "I went"`](#eufrg-i-went)
    - [`"EULTS": "it's like"`](#eults-its-like)
    - [`"EUP": "I happen"`](#eup-i-happen)
    - [`"EURPBD": "I wonder"`](#eurpbd-i-wonder)
    - [`"H*EPBGS": "he thinks"`](#hepbgs-he-thinks)
    - [`"H*ES": "he's"`](#hes-hes)
    - [`"H-B": "had been"`](#h-b-had-been)
    - [`"HA*ERB": "{^#^}"`](#haerb-)
    - [`"HAO*EL": "he will"`](#haoel-he-will)
    - [`"HAOEF": "he have"`](#haoef-he-have)
    - [`"HAOERDZ": "here is the"`](#haoerdz-here-is-the)
    - [`"HAOES": "he is"`](#haoes-he-is)
    - [`"HERP": "he were"` and `"H*ERPS": "helpers"`](#herp-he-were-and-herps-helpers)
    - [`"HO*UFR": "how far"`](#houfr-how-far)
    - [`"HO*UT": "how to"`](#hout-how-to)
    - [`"HOUD": "how had"`](#houd-how-had)
    - [`"HRAFPLT": "last time"`](#hrafplt-last-time)
    - [`"HRO*EU": "alloy"`](#hroeu-alloy)
    - [`"HRUF": "will you have"` and `"HRUFR": "will you ever"`](#hruf-will-you-have-and-hrufr-will-you-ever)
    - [`"HU/HU": "huh-huh"`](#huhu-huh-huh)
    - [`"K*T": "can the"`](#kt-can-the)
    - [`"K-G": "can go"`](#k-g-can-go)
    - [`"KA*": "can a"`](#ka-can-a)
    - [`"KE": "can he"`](#ke-can-he)
    - [`"KHOER": "each other"`](#khoer-each-other)
    - [`"KOF": "could have"`, `"KO*F": "could've"`, `"KOUF": "could you have"`, `"KO*UF": "could you've"`](#kof-could-have-kof-couldve-kouf-could-you-have-kouf-could-youve)
    - [`"KOU": "could you"`, `"KOUB": "could you be"`, `"KOUPBLT": "could you not"`](#kou-could-you-koub-could-you-be-koupblt-could-you-not)
    - [`"KRAOEPL/TPOR": "cream for"` and `"KREPL/TPOR": "creme for"`](#kraoepltpor-cream-for-and-krepltpor-creme-for)
    - [`"KU/WAEUT": "can you wait"`](#kuwaeut-can-you-wait)
    - [`"KUFR": "can you ever"`](#kufr-can-you-ever)
    - [`"KWHRAOER": "last year"`](#kwhraoer-last-year)
    - [`"KWR*PB": "y'know"`](#kwrpb-yknow)
    - [`"KWR-LD": "why would"`](#kwr-ld-why-would)
    - [`"KWR-S": "why is"`](#kwr-s-why-is)
    - [`"KWREUPBG": "I think"` and `"KWR*EUPBG": "I think"`](#kwreupbg-i-think-and-kwreupbg-i-think)
    - [`"KWREUPBGS": "I think so"`](#kwreupbgs-i-think-so)
    - [`"O*BG": "{^, okay,}"`](#obg--okay)
    - [`"O*ERBGS": "{^, oh,}"`](#oerbgs--oh)
    - [`"O*FRD": "off the record"`](#ofrd-off-the-record)
    - [`"O*PBT": "on it"`](#opbt-on-it)
    - [`"OEFRT": "over the"`](#oefrt-over-the)
    - [`"PH*UFT": "must have"`](#phuft-must-have)
    - [`"PHAO*EU": "am I"`](#phaoeu-am-i)
    - [`"PHUB": "must be"`](#phub-must-be)
    - [`"PW*EUT": "by the"`](#pweut-by-the)
    - [`"PWA*UT": "because the"`](#pwaut-because-the)
    - [`"PWAEUBL": "be able"`](#pwaeubl-be-able)
    - [`"PWUTD": "but the"`](#pwutd-but-the)
    - [`"RAOEURT": "right here"`](#raoeurt-right-here)
    - [`"S*E": "as he"`](#se-as-he)
    - [`"SO*R": "or so"`](#sor-or-so)
    - [`"S*PB": "is an"` and `"SA*PB": "as an"`](#spb-is-an-and-sapb-as-an)
    - [`"S*T": "as the"`](#st-as-the)
    - [`"SEBGD/HRAOEUF": "second life"`](#sebgdhraoeuf-second-life)
    - [`"SHAOED": "she had"`](#shaoed-she-had)
    - [`"SHAOEL": "she will"`](#shaoel-she-will)
    - [`"SHOU": "should you"`](#shou-should-you)
    - [`"SKP-RB": "and she"`](#skp-rb-and-she)
    - [`"SKP-TS": "and it is"`](#skp-ts-and-it-is)
    - [`"SKPHORPBG": "and morning"`](#skphorpbg-and-morning)
    - [`"SKPOEFR": "and over"`](#skpoefr-and-over)
    - [`"SKPOPB": "and on"`](#skpopb-and-on)
    - [`"SKPREFRPBS": "and reference"`](#skprefrpbs-and-reference)
    - [`"SKPUL": "and you will"`](#skpul-and-you-will)
    - [`"SKPUP": "and up"`](#skpup-and-up)
    - [`"SKPUR": "and you are"`](#skpur-and-you-are)
    - [`"SKPW": "and with"`](#skpw-and-with)
    - [`"SR*EU": "I have"` and `"SREU": "have I"`](#sreu-i-have-and-sreu-have-i)
    - [`"SR*U": "you have"`](#sru-you-have)
    - [`"SR-PB": "have an"`](#sr-pb-have-an)
    - [`"SR-PBTD": "haven't had"`](#sr-pbtd-havent-had)
    - [`"SRA*EU": "I have a"`](#sraeu-i-have-a)
    - [`"SRUFR": "have you ever"`](#srufr-have-you-ever)
    - [`"SKWAL": "is equal"`](#skwal-is-equal)
    - [`"SKWRAO*E": "I see"`](#skwraoe-i-see)
    - [`"STH-RBGT": "is this correct"`](#sth-rbgt-is-this-correct)
    - [`"STHARBGT": "is that correct"`](#stharbgt-is-that-correct)
    - [`"STHATS": "so that's"`](#sthats-so-thats)
    - [`"STHEUPBG": "same thing"`](#stheupbg-same-thing)
    - [`"STKO": "and do"`](#stko-and-do)
    - [`"STKPWEPB": "and again"`](#stkpwepb-and-again)
    - [`"STP": "as if"`](#stp-as-if)
    - [`"STPH": "is in"`](#stph-is-in)
    - [`"STPHRAOEUPB": "single line"`](#stphraoeupb-single-line)
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
    - [`"THABG": "that can"`](#thabg-that-can)
    - [`"THAD": "that had"`](#thad-that-had)
    - [`"THAEUBG": "that I can"`](#thaeubg-that-i-can)
    - [`"THAEUD": "that I had"` and `"THA*EUD": "that I'd"`](#thaeud-that-i-had-and-thaeud-that-id)
    - [`"THAF": "that have"`](#thaf-that-have)
    - [`"THAL": "that will"`](#thal-that-will)
    - [`"THALGTS": "that that"`](#thalgts-that-that)
    - [`"THARB": "that she"`](#tharb-that-she)
    - [`"THATD": "that they"`](#thatd-that-they)
    - [`"THAUF": "that you have"` and `"THAUR": "that you are"`](#thauf-that-you-have-and-thaur-that-you-are)
    - [`"THED": "they had"`, `"THEF": "they have"`, `"THEL": "they will"`, and](#thed-they-had-thef-they-have-thel-they-will-and)
    - [`"THAEUFR": "of their"`](#thaeufr-of-their)
    - [`"THEFPL": "of them"`](#thefpl-of-them)
    - [`"THOEPL": "at home"`](#thoepl-at-home)
    - [`"THR*": "it will"`](#thr-it-will)
    - [`"THR-D": "there had"`](#thr-d-there-had)
    - [`"THR-L": "there will"`](#thr-l-there-will)
    - [`"THR-S": "there is"`](#thr-s-there-is)
    - [`"TK*UF": "Duff"` and `"TKUF": "did you have"`](#tkuf-duff-and-tkuf-did-you-have)
    - [`"TK*UG": "did you go"`](#tkug-did-you-go)
    - [`"TKAO*UT": "due to"`](#tkaout-due-to)
    - [`"TKHE": "did he"`](#tkhe-did-he)
    - [`"TKO*UPB": "do you know"`](#tkoupb-do-you-know)
    - [`"TKOEPB": "don't know"`](#tkoepb-dont-know)
    - [`"TKOEUT": "do it"`](#tkoeut-do-it)
    - [`"TKOPBLT": "do not"`](#tkopblt-do-not)
    - [`"TKPW*FG": "gonna have"`](#tkpwfg-gonna-have)
    - [`"TKPW*GS": "gonna say"`](#tkpwgs-gonna-say)
    - [`"TKPW-B": "go back"`](#tkpw-b-go-back)
    - [`"TKPW-T": "go to"`](#tkpw-t-go-to)
    - [`"TKPWETD": "get the"`](#tkpwetd-get-the)
    - [`"TKPWO*ET": "go to"`](#tkpwoet-go-to)
    - [`"TKPWUFS": "give us"`](#tkpwufs-give-us)
    - [`"TKU/PWAOEU": "did you buy"`](#tkupwaoeu-did-you-buy)
    - [`"TKUFR": "did you ever"`](#tkufr-did-you-ever)
    - [`"TKUZ": "did you see"`](#tkuz-did-you-see)
    - [`"TKWROUR": "to your"`](#tkwrour-to-your)
    - [`"TO*ER": "to her"`](#toer-to-her)
    - [`"TO*S": "to say"`](#tos-to-say)
    - [`"TO*UR": "to our"`](#tour-to-our)
    - [`"TOD": "to do"`](#tod-to-do)
    - [`"TOFRB": "to have been"`](#tofrb-to-have-been)
    - [`"TOG": "to go"`](#tog-to-go)
    - [`"TP-RB": "if she"`](#tp-rb-if-she)
    - [`"TPEUBG": "if I can"`](#tpeubg-if-i-can)
    - [`"TPEUF/PERS": "five percent"`](#tpeufpers-five-percent)
    - [`"TPH*T": "in it"`](#tpht-in-it)
    - [`"TPH-FP": "in which"`](#tph-fp-in-which)
    - [`"TPHA": "in a"`](#tpha-in-a)
    - [`"TPHAO*EUPL": "in my"`](#tphaoeupl-in-my)
    - [`"TPHE": "if he"` and `"TPHED": "if he had"`](#tphe-if-he-and-tphed-if-he-had)
    - [`"TPHER": "in her"`](#tpher-in-her)
    - [`"TPHEUFT": "any of the"`](#tpheuft-any-of-the)
    - [`"TPHOEUPBS": "no one said"` and `"TPHO*EUPBS": "no one's"`](#tphoeupbs-no-one-said-and-tphoeupbs-no-ones)
    - [`"TPHORB": "not sure"`](#tphorb-not-sure)
    - [`"TPHORTD": "in order to"`](#tphortd-in-order-to)
    - [`"TPHROPBT": "in front"`](#tphropbt-in-front)
    - [`"TPHUP": "end up"`](#tphup-end-up)
    - [`"TPHURPB": "in turn"`](#tphurpb-in-turn)
    - [`"TPOEUT": "for it"`](#tpoeut-for-it)
    - [`"TPO*PL": "for my"`](#tpopl-for-my)
    - [`"TPORB": "for sure"`](#tporb-for-sure)
    - [`"TPOT": "for the"`](#tpot-for-the)
    - [`"TPREUTS": "from its"`](#tpreuts-from-its)
    - [`"UFPB": "you knew"`](#ufpb-you-knew)
    - [`"UL": "you will"`](#ul-you-will)
    - [`"URL": "you recall"` and `"URLD": "you recalled"`](#url-you-recall-and-urld-you-recalled)
    - [`"W*PL": "with my"` and `"W-PL": "with me"`](#wpl-with-my-and-w-pl-with-me)
    - [`"W-RS": "where is"`](#w-rs-where-is)
    - [`"WA*": "with a"`](#wa-with-a)
    - [`"WAEPBLT": "was not"`](#waepblt-was-not)
    - [`"WAO*ED": "we'd"` and `"WAOED": "weed"`](#waoed-wed-and-waoed-weed)
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
    - [`"WR-RB": "where she"`](#wr-rb-where-she)
    - [`"WRU": "were you"`](#wru-were-you)
* [Proper Nouns](#proper-nouns)
    - [`"HA*RLD": "Harold"`](#harld-harold)
    - [`"A*L/A*L": "Alabama"`](#alal-alabama)
    - [`"AEUD/*EPB": "Aiden"`](#aeudepb-aiden)
    - [`"H*ET/*ER": "Heather"`](#heter-heather)
    - [`"KAEUT/KAEUT": "Cate"`](#kaeutkaeut-cate)
    - [`"KAO*EPB": "Keene"`](#kaoepb-keene)
    - [`"KW*ERT": "QWERTY"` and `"KWER/TEU": "Qwerty"`](#kwert-qwerty-and-kwerteu-qwerty)
    - [`"PAO*ET": "Peat"`](#paoet-peat)
    - [`"PEPB/TPH*EU": "Penny"`](#pepbtpheu-penny)
    - [`"PW*ERL": "Beryll"`](#pwerl-beryll)
    - [`"PWA*EUB": "Babe"`](#pwaeub-babe)
    - [`"RO*FL": "Rolf"` and `"ROFL": "revolve"`](#rofl-rolf-and-rofl-revolve)
    - [`"SHA*EUFR": "Shaffer"`](#shaeufr-shaffer)
    - [`"THOPL": "Thom"`](#thopl-thom)
    - [`"TKO*RPB": "Doner"`](#tkorpb-doner)
    - [`"PWAO*E": "Bea"` and `"PWA*E": "by a"`](#pwaoe-bea-and-pwae-by-a)
    - [`"SK-PBT": "{MODE:CAPS}{MODE:SET_SPACE:_}"`](#sk-pbt-modecapsmodeset_space_)
    - [`"STK-RB": "{^--}"`, `"TK-RBG": "{--^}"`, and `"STK-RBG": "{^--^}"`](#stk-rb----tk-rbg----and-stk-rbg---)
    - [`"THU": "thank you"`](#thu-thank-you)
    - [`"TK-R": "Dr."`](#tk-r-dr)
    - [`"TPA*EU": "Fay"`](#tpaeu-fay)
    - [`"TPH*E": "if he"`](#tphe-if-he)
    - [`"TPHAO*": "into a"`](#tphao-into-a)

<!-- vim-markdown-toc -->

## Punctuation

```yaml
"-RB": "--"                  # {^,^}
"KHR*PB": ":{^}"             # {:^} (see https://github.com/openstenoproject/plover/issues/1407)
"KW*L": "{^=^}"              # =
"PR*PB": "{^)^}"             # p.r.n. (pro re nata)
```

## Fingerspelling

```yaml
"A*FPLT": "{&A.}"            # amount
"TP-PLT": "{&f-}"            # {.}
```

## Prefixes, Suffixes, Abbreviations

```yaml
"A*EUT": "{eight-^}"         # eight
"AO*UT": "{out-^}"           # {out^}
"KWRA*ER": "{^iary}"         # area
"KWRO*UT": "{^-out}"         # {out-^}
"O*UT": "{^out}"             # {^-out}
"P*BGS": "{^px}"             # People's Exhibit No.#G
"PWA*EBG": "{^back}"         # {back^}
"S*EFL": "{^self}"           # self
"S*EUBGS": "{six-^}"         # sixth
"THRAO*E": "{three-^}"       # Three
"TP*EUF": "{five-^}"         # five
```

## Words

```yaml
"*EB": "eastbound"           # {^en}
"*EU": "{^i^}"               # {>}{&i}
"-PT": "want"                # {^.^}
"A*BG": "acc"                # Arkansas
"A*FD": "asdf"               # avid
"A*RPBG": "anchor"           # anger
"AL/HREU": "alley"           # ally
"AO*EBGS": "eex"             # objection
"AOERPB": "eastern"          # Eastern
"AOERT": "eater"             # either
"AUPL/-S": "automobiles"     # alms
"AUPLS": "automobiles"       # alms
"EFLT": "evaluate"           # {^est}
"EFPBS": "essence"           # Evans
"EFPLT": "estimate"          # {&E.}
"ETS": "etc"                 # et cetera
"EUFRPB": "inch"             # {infra^}
"H*U": "uh"                  # huh
"HARLD": "hardly"            # Harold
"HO": "ho"                   # who
"HO*": "oh"                  # ho
"HO*EUR": "hurry"            # hero
"HR*UFRPB": "lurch"          # lunch
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
"OULT": "outline"            # out
"OUTD": "outed"              # out
"P-BGS": "px"                # People's Exhibit#G
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
"RAED/PHAO*E": "README"      # readme
"RAEUPLD": "remained"        # Raymond
"RAO*ER": "either"           # endoplasmic reticulum
"RAOUFS": "refuse"           # reduces
"REBGT/-G": "recollecting"   # recollection
"ROEU": "roadway"            # Roy
"RORBG": "rhetoric"          # Rourke
"S-FG": "svg"                # SVG
"S-FGS": "svgs"              # SVGs
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
"TPH*PL": "npm"              # New Mexico
"TPHA*F": "nav"              # 1/2
"TPHERPBLG": "energy"        # merge
```

## Words

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

### `"TRA*PBS": "trance"`

Plover uses the following outlines for "trans":

```txt
trans:
  TRAPBS
  TRA*PBS
{trans^}:
  TRAPBZ
```

Yet, there is no entry at all for "trance". So, I have decided to override
`TRA*PBS` for it.

```yaml
"TRA*PBS": "trance"
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

### `"WA*EPB": "weaken"`

Plover uses the following outlines for "wane":

```txt
wane:
  WAEPB
  WA*EPB
```

Given that Plover uses `WA*EPBD` for "weakened", I think `WA*EPB` should also be
used to give "weaken" a one-stroke brief.

```yaml
"WA*EPB": "weaken"
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

### `"PWHOF": "on behalf of"`

Plover uses the following outlines for "above":

```txt
above:
  PWOF
  PWHOF
  PWO*F
  A/PWOF
```

I use `PWOF` for this, so I think I'd like to use `PWHOF` to phrase "on behalf
of".

```yaml
"PWHOF": "on behalf of"
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

### `"*EUG": "I go"`, `"EUG": "{ig^}"`, `"*UG": "you go"`

Plover uses the following outlines for "ig", "{Ig^}", and "ugh":

```txt
ig:
  EUG
{Ig^}:
  *EUG
ugh:
  UG
  *UG
```

I've got a few issues with these entries:

- "ig" doesn't seem like a real word...perhaps it was meant to be the prefix
  "{ig^}"...?
- Capitalised "{Ig^}" feels like it may be a mistaken entry...?

Anyway, I want to add phrases for "pronoun go(es)", and these overrides will
help do that.

```yaml
"*EUG": "I go"
"*UG": "you go"
"EUG": "{ig^}"
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

### `"-FPL": "of my"`

Plover uses `-FPL`, amongst other outlines, for "{.}", but I tend to use
`-FPLT`, so I'm going to override `-FPL` to phrase "of my" instead.

```yaml
"-FPL": "of my"
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

### `"-PL/H-PL": "mm-hmm"`

Plover uses the following outlines for "mm-hm":

```txt
mm-hm:
  PH*P/H*P/PH*P
Mm-hm:
  -PL/H-PL
```

These are both kind of strange to me. At the very least, since "hmm" with two
"m"s is `H-PL`, I'd like to see that reflected in a "mm-hmm" outline.

```yaml
"-PL/H-PL": "mm-hmm"
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

### `"AEUFR": "a few"`

Plover uses the following outlines for "Acer":

```txt
Acer:
  AEUFR
  AEUS/*ER
```

For a proper noun, using a `*`-flag seems right to me here, so I'm giving "Acer"
an alt outline of `A*EUFR`, and using `AEUFR` to help phrase "a few".

```yaml
"AEUFR": "a few"
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

### `"AOUFT": "used to"`

Plover uses the following outlines for "out of":

```txt
out of:
  OUF
  AOUFT
```

I use `OUF` for this, so I think `AOUFT` would be better used as a brief for
"used to".

```yaml
"AOUFT": "used to"
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

### `"EUFL": "I feel"`

Plover uses the following outlines for "{^ively}":

```txt
{^ively}:
  EUFL
  *EUFL
```

`*EUFL` makes sense to me to use for a suffix, so I'd like to use `EUFL` for
phrasing "I feel".

```yaml
"EUFL": "I feel"
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

### `"EUP": "I happen"`

Plover uses the following outlines for "IP":

```txt
IP:
  EUP
```

I want to use this brief for phrasing "I happen", so I've given "IP" an alt
outline of `AO*EUP`, and I'll override `EUP` for "I happen".

```yaml
"EUP": "I happen"
```

### `"EURPBD": "I wonder"`

Plover uses the following outlines for "understand":

```txt
understand:
  URPD
  UPBS
  URPBD
  EURPBD
  URPBTD
  UFRPBD
  UPBD/STAPB
  UPBDZ/STAPB
  UPBD/STAPBD
  UPBLD/STAPBD
```

`EURPBD` looks like mis-stroke handling to me, so instead I'd like to reassign
it to be the phrase "I wonder".

```yaml
"EURPBD": "I wonder"
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

### `"HA*ERB": "{^#^}"`

Plover uses the following outlines for the "#" symbol:

```txt
#:
  HA*ERB
#{^}:
  HAERB
```

`HA*ERB` for the "#" is fine, but I find myself using it a lot in coding, where
I don't need any space before or after it, so I've decided to change the
ergonomics of its usage.

```yaml
"HA*ERB": "{^#^}"
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

### `"HO*UFR": "how far"`

Plover uses the following outlines for "however":

```txt
however:
  HOUF
  HOUFR
  HOEFR
  HO*UFR
```

These are all fine, but I'd like to have a brief for the phrase "how far", and
`HO*UFR` works for me.

```yaml
"HO*UFR": "how far"
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

### `"HRAFPLT": "last time"`

Plover uses the following outlines for "Louisiana":

```txt
Louisiana:
  HRA*
  HRAFPLT
  HRA*/HRA*
  HRAOUZ/KWRA/TPHA
  HRAOEZ/KWRA/TPHA
  HRAOUZ/KWRAPB/TPHA
  HRAOEZ/KWRAPB/TPHA
  HRAOUS/KWRAPB/TPHA
```

Aside from `HRA*/HRA*`, I wouldn't use any of these outlines for this rarely
used (for me) word. So, I'm overriding `HRAFPLT` for phrasing "last time".

```yaml
"HRAFPLT": "last time"
```

### `"HRO*EU": "alloy"`

Plover uses the following outlines for the phrase "I will":

```txt
I will:
  HR*EU
  KWREUL
  HRO*EU
```

The first two make sense to me, but not so much the third. I'd rather use
`HRO*EU` to give a one stroke brief to the word "alloy".

```yaml
"HRO*EU": "alloy"
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

### `"KHOER": "each other"`

Plover uses the following outlines for "chore":

```txt
chore:
  KHOR
  KHOER
```

I'd use `KHOR` only for "chore", so I'd like to override `KHOER` for the phrase
"each other".

```yaml
"KHOER": "each other"
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

### `"KWHRAOER": "last year"`

Plover uses the following outlines for "year":

```txt
year:
  WRAOER
  KWRAOER
  KWRAEUR
  KWRAOERB
  TKWRAOER
  KWHRAOER
```

I would use `KWRAOER` out of these, so I'd like to use `KWHRAOER` for phrasing
"last year".

```yaml
"KWHRAOER": "last year"
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

### `"KWR-LD": "why would"`

Plover uses the following outlines for "ideal":

```txt
ideal:
  KWR-L
  KW-LD
  KWR-LD
  KWR-D/A*L
  KWR-D/AOEL
  AOEUD/AOEL
  AOEU/TKAOEL
  AOEUD/TKAOEL
```

For "ideal", I use `KWR-L`, so I'd like to override `KWR-LD` to phrase "why
would".

```yaml
"KWR-LD": "why would"
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

### `"O*FRD": "off the record"`

Plover uses the following outlines for "offered":

```txt
offered:
  OFRD
  O*FRD
  OEFRDZ
  OFR/-D
  AUFR/-D
  O*FR/-D
```

These are all fine, but I'd like to have a brief for the phrase "off the
record", so I'll override `O*FRD` for that.

```yaml
"O*FRD": "off the record"
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

### `"PH*UFT": "must have"`

Plover uses the following outlines for "must":

```txt
must:
  PH*US
  PHUFT
  PH*UFT
  PHUFPT
```

I would tend to use `PHUFT` or `PH*US` for "must", and so I'd like to use
`PH*UFT` for phrasing "must have".

```yaml
"PH*UFT": "must have"
```

### `"PHAO*EU": "am I"`

Plover uses the following outlines for "my":

```txt
my:
  PHEU
  PHAOEU
  3450EU
  PHAO*EU
```

I would tend to use `PHEU` or `PHAOEU`, so I'd like to have `PHAO*EU` used in
phrasing "am I".

```yaml
"PHAO*EU": "am I"
```

### `"PHUB": "must be"`

Plover uses the following outlines for "money":

```txt
money:
  PHUB
  PHUPB
  34U7B
  PHO/TPHAOE
  PHOPB/KWRAE
  PHUPB/KWREU
  PHOPB/TPHAOE
  PHOPB/TPH*EU
```

The brief I would use for this would be `PHUPB`, and so I think `PHUB` would be
better served being a brief for the phrase "must be".

```yaml
"PHUB": "must be"
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

### `"S*E": "as he"`

Plover uses the following outlines for "{^es}":

```txt
{^es}:
  ES
  S*E
```

I would use `ES` here, so I'm going to override `S*E` with the phrase "as he".

```yaml
"S*E": "as he"
```

### `"SO*R": "or so"`

Plover uses the following outlines for "sore":

```txt
sore:
  SOR
  SO*R
```

I'd only use `SOR` here, so I'm going to override `SO*R` to phrase "or so".

```yaml
"SO*R": "or so"
```

### `"S*PB": "is an"` and `"SA*PB": "as an"`

Plover uses the following outlines for "sine":

```txt
sine:
  S*PB
  SAO*EUPB
```

I don't think I would ever use `S*PB` for this, so I'm going to override it to
as an alt for the phrase "is an".

Plover does use the following phrase for "is an", though:

```txt
is an:
  SA*PB
```

This brief makes more sense to me as "as an", given `-PB` outputs as just "an".

```yaml
"S*PB": "is an"
"SA*PB": "as an"
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

### `"SKP-TS": "and it is"`

Plover uses the following outlines for "{^s and the}":

```txt
{^s and the}:
  SKP-TS
```

I don't think I'd ever use this brief, and would rather have it be "and it is".

```yaml
"SKP-TS": "and it is"
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

### `"SKPOPB": "and on"`

Plover uses the following outlines for "on and":

```txt
on and:
  SKPOPB
```

I read this as "and on", so I'm overriding it, but also assigning `SKPO*PB` to
be "on and" so the brief doesn't get lost.

```yaml
"SKPOPB": "and on"
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

### `"SKPUL": "and you will"`

Plover uses the following outlines for "and you'll":

```txt
and you'll:
  SKPUL
```

I think the `*`-flagged version should be the contraction, so I'm assigning an
alt outline, `SKP*UL`, for that, and reassigning `SKPUL` to be "and you will".

```yaml
"SKPUL": "and you will"
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

### `"SR-PB": "have an"`

Plover uses the following outlines for "haven't":

```txt
haven't:
  SR-PB
  SR-PBT
  SWR-PBT
```

I would use `SR-PBT` for "haven't", so I'd like to use `SR-PB` to phrase out
"have an" together.

```yaml
"SR-PB": "have an"
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

### `"SRA*EU": "I have a"`

Plover uses the following outlines for "have a":

```txt
have a:
  SRA
  SRAEU
  SRA*EU
```

These are all generally fine, but I'd like to have a one-stroke brief for "I
have a", and I think `SRA*EU` fits that bill.

```yaml
"SRA*EU": "I have a"
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

### `"STHATS": "so that's"`

Plover uses the following outlines for "that's":

```txt
that's:
  TH-TS
  THATS
  THA*S
  THRATS
  STHATS
  TPHATS
  THATSZ
  THA*TS
  THALTS
  THAS/AE
```

I would tend to use `THA*S` or `THATS`, but definitely not `STHATS`, so I'd like
to override it to be the phrase "so that's".

```yaml
"STHATS": "so that's"
```

### `"STHEUPBG": "same thing"`

Plover uses the following outlines for "something":

```txt
something:
  S-G
  ST-G
  SPH-G
  STHEUPBG
  SPH/THEUPBG
```

These are all fine, but I tend to use `S-G` only, so I'd like to override
`STHEUPBG` to phrase "same thing".

```yaml
"STHEUPBG": "same thing"
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

### `"STP": "as if"`

Plover uses the following outlines for "{?}":

```txt
{?}:
  H-F
  STP
  H-FPB
  STPHA
  STKPH
  KW-PL
  STH/PHOEUFP
  TP-PL/STPH-RB
```

Out of all of these, I use `H-F`, so I'd like to use `STP` for phrasing "as if".

```yaml
"STP": "as if"
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

### `"STPHRAOEUPB": "single line"`

Plover uses the following outlines for "center line":

```txt
center line:
  STPHRAOEUPB
```

I'd like to have an outline for "single line", and `STPHRAOEUPB` (SiNgle LINE)
makes the most sense to me, so I'm going to override it. In order to not lose an
outline for "center line", I'll create an alt for it: `STHRAOEUPB`
(CenTer LINE).

```yaml
"STPHRAOEUPB": "single line"
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

### `"THABG": "that can"`

Plover uses the following outlines for "thank":

```txt
thank:
  THAPG
  THABG
  THAPBG
  THA*PBG
  THRA*PBG
  THAPB/*BG
```

`THA*PBG` is the outline I'd use here, and I think `THAPG` and `THABG` are
mis-stroke handling. So, I'd like to override `THABG` to phrase "that can".

```yaml
"THABG": "that can"
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

### `"THAEUBG": "that I can"`

Plover uses the following outlines for "take":

```txt
take:
  TAEBG
  TAEUBG
  THAEUBG
  TKAEUBG
```

`THAEUBG` looks like mis-stroke handling, so I'd rather repurpose it to be "that
I can".

```yaml
"THAEUBG": "that I can"
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

### `"THARB": "that she"`

Plover uses the following outlines for "that shall":

```txt
that shall:
  THARB
```

I use `-RBL` for final "shall" in phrasing, so I've added in `THARBL` as an alt
for "that shall". Therefore I'd like to override `THARB` to be phrased as "that
she".

```yaml
"THARB": "that she"
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

### `"THOEPL": "at home"`

Plover uses the following outlines for "them":

```txt
them:
  THEP
  THEFL
  THEPL
  24E78
  TWHEPL
  THOEPL
  THEUPL
```

A lot of these seem to be mis-stroke handling, so I'm going to override
`THOEPL` to be the phrase "at home".

```yaml
"THOEPL": "at home"
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

### `"TK*UG": "did you go"`

Plover uses the following outlines for proper noun "Doug":

```txt
Doug:
  TK*UG
  TKOUG
  TKO*UG
  TKUG/TKUG
```

I would usually use `TKOUG` or `TKO*UG` for this, so I'd like to reassign
`TK*UG` to help phrase "did you go".

```yaml
"TK*UG": "did you go"
```

### `"TKAO*UT": "due to"`

Plover uses the following outlines for "duty":

```txt
duty:
  TKAOUT
  TKAO*UT
  TKAOU/TEU
  TKAOUT/TEU
  TKAOUT/KWREU
```

`TKAOUT` is the outline I'd use here, so I'm going to override `TKAO*UT` to
phrase "due to".

```yaml
"TKAO*UT": "due to"
```

### `"TKHE": "did he"`

Plover uses the following outlines for "they did":

```txt
they did:
  TKHE
```

Plover doesn't have an outline for the phrase "did he", which I think more
accurately matches `TKHE`, so I'm going to override it, and reassign "they did"
to `TKH*E` as an alt outline.

```yaml
"TKHE": "did he"
```

### `"TKO*UPB": "do you know"`

Plover uses the following outlines for "{^-down}":

```txt
{^-down}:
  TKO*UPB
  SKWRO*UPB
```

I don't use this that often, and would rather use `TKO*UPB` to phrase "do you
know" in an easier way.

```yaml
"TKO*UPB": "do you know"
```

### `"TKOEPB": "don't know"`

Plover uses the following outlines for "done":

```txt
done:
  TKOPB
  TKOEPB
```

I would use `TKOPB` here, so I'd like to override `TKOEPB` to phrase "don't
know".

```yaml
"TKOEPB": "don't know"
```

### `"TKOEUT": "do it"`

Plover uses the following outlines for "data":

```txt
data:
  TAET
  TKAET
  TKAELT
  TKOEUT
  TKAETD
  TKA*EUT
  TKAT/A
  TKA/TA
  TKAT/TA
  TKAEU/TA
```

I tend to use `TKAET`, so I'd like to override `TKOEUT` to phrase "do it".

```yaml
"TKOEUT": "do it"
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

### `"TKPW*GS": "gonna say"`

Plover uses the following outlines for "going to":

```txt
going to:
  TPW*G
  KPWR*G
  TKPW*LG
  TKPW-GT
  TKPW*PG
  TKPW*GS
  TKPW*BG
  TKPW*FPG
  TKPWHR*G
  TKPW*G/TO
```

I use `TKPW-GT` for "going to", and given that I use `TKPW*G` for "gonna", I'd
like to use that stem for phrasing as well. So, I'm overriding `TKPW*GS` for
"gonna say".

```yaml
"TKPW*GS": "gonna say"
```

### `"TKPW-B": "go back"`

Plover uses the following outlines for "goodbye":

```txt
goodbye:
  TKPW*B
  TKPW-B
```

"Goodbye" doesn't need two briefs, so I'm going to override one to phrase "go
back".

```yaml
"TKPW-B": "go back"
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

### `"TKPWETD": "get the"`

Plover uses the following outlines for "get":

```txt
get:
  TKWET
  KPWET
  TKPET
  TPWET
  TKPWET
  TKPWELT
  TKPWETD
  TKPWHET
  TKPWRET
```

Aside from `TKPWET`, I'd say most of these outlines are mis-stroke handling. So,
I'd like to use `TKPWETD` to phrase "get the".

```yaml
"TKPWETD": "get the"
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

### `"TKPWUFS": "give us"`

Plover uses the following outlines for "gives":

```txt
gives:
  TKPWUFS
  TPWEUFS
  TKPWEUFS
```

I would use `TKPWEUFS` for "gives", so I'd like to use `TKPWUFS` to phrase "give
us".

```yaml
"TKPWUFS": "give us"
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

### `"TKUZ": "did you see"`

Plover uses the following outlines for "does":

```txt
does:
  KOS
  TKUZ
  TKOS
  TKAOS
```

I use `TKOS` for does, so I'd rather use `TKUZ` for phrasing "did you see" to
match the `UZ` pattern for "you see".

```yaml
"TKUZ": "did you see"
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

### `"TOFRB": "to have been"`

Plover uses the following outlines for "torch":

```txt
torch:
  TOFRB
  TOFRPB
  TO*RPBLG
  TOR/*FP
```

`TOFRB` looks like a mis-stroke handling outline, so I'd rather use it for
phrasing "to have been".

```yaml
"TOFRB": "to have been"
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

### `"TP-RB": "if she"`

Plover uses the following outlines for "efficient":

```txt
efficient:
  TP-RB
  TP-RBT
  TPEURBT
  TPAOERBT
  EF/TPEURBT
  AOE/TPEURBT
  EF/TPEURB/EPBT
  AOE/TPEURB/EPBT
  AOE/TPEU/SHEPBT
  EF/TPEURB/SHEPBT
```

These are all fine, but I'd like to use `TP-RB` to phrase "if she". I'd tend to
use `TP-RBT` anyway for "efficient".

```yaml
"TP-RB": "if she"
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

### `"TPHE": "if he"` and `"TPHED": "if he had"`

Plover uses the following outlines for "to me":

```txt
to me:
  TPHE
```

I have made an alt outline for "to me" as `T-PL`, which makes sense to me, and I
continue to use. So, I'd rather use `TPHE` to phrase "if he".

Building on this, currently, Plover uses the following outlines for the proper
noun "Ned":

```txt
Ned:
  TPHED
  TPH*ED
```

In keeping with proper nouns being starred, I'm going to override `TPHED` to
phrase "if he had".

```yaml
"TPHE": "if he"
"TPHED": "if he had"
```

### `"TPHER": "in her"`

Plover uses the following outlines for "{^ener}":

```txt
{^ener}:
  TPHER
```

Given that this is a suffix, I think it seems for natural for the outline to
have a `*`-flag, so I've added an alt outline for that. Therefore, I'd like to
use `TPHER` for phrasing "in her".

```yaml
"TPHER": "in her"
```

### `"TPHEUFT": "any of the"`

Plover uses the following outlines for the suffix "{^ist}":

```txt
{^ist}:
  EUFT
  TPHEUFT
```

I would only use `EUFT` for this, so I'd like to override `TPHEUFT` for the
phrase "any of the".

```yaml
"TPHEUFT": "any of the"
```

### `"TPHOEUPBS": "no one said"` and `"TPHO*EUPBS": "no one's"`
 
Plover uses the following outlines for "no one's" and
"autonomic nervous system":

```txt
no one's:
  TPHOEUPBS
  TPHO/W*UPBS

autonomic nervous system:
  TPHO*EUPBS
```

"autonomic nervous system" is not a phrase I would use often at all, so I'd like
to use `TPHO*EUPBS` instead for "no one's" and have the `*`-flag represent the
apostrophe. As for `TPHOEUPBS`, I'd like to use the final `-S` in phrasing
"said", as a pair for using `-Z` for phrasing "say".

```yaml
"TPHOEUPBS": "no one said"
"TPHO*EUPBS": "no one's"
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

### `"TPHORTD": "in order to"`

Plover uses the following outlines for "in order":

```txt
in order:
  TPHORD
  TPHOERD
  TPHORTD
  TPH/TPHORD
```

I use `TPHORD` for this, and so I'd like to take the outline with the extra `T`
and use it for "in order to".

```yaml
"TPHORTD": "in order to"
```

### `"TPHROPBT": "in front"`

Plover uses the following outlines for "front":

```txt
front:
  TPROPT
  TPROPBT
  TPHROPBT
{^front}:
  TPRO*PBT
```

`TPHROPBT` looks like mis-stroke handling for a mistake I don't think I make, so
I'd rather assign it to be the phrase "in front", since Plover's current brief
for that, `STPROPBT`, doesn't really resonate with me.

```yaml
"TPHROPBT": "in front"
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

### `"TPO*PL": "for my"`

Plover uses the following outlines for "facilities/operations management":

```txt
facilities/operations management:
  TPO*PL
```

This brief is way too specific for my needs, so I'm going to override it to be
used in phrasing "for my" instead.

```yaml
"TPO*PL": "for my"
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

### `"TPREUTS": "from its"`

Plover uses the following outlines for proper noun "Fritz":

```txt
Fritz:
  TPREUDZ
  TPREUTS
```

I would like to use `TPREUTS` to phrase "from its", and move "Fritz", a name I
don't use often, to the `*`-flagged version of the outline.

```yaml
"TPREUTS": "from its"
```

### `"UFPB": "you knew"`

Plover uses the following outlines for "{un^}":

```txt
{un^}:
  UPB
  UFPB
  KWRUPB
```

I would use `UPB` for this, so I'd like to override `UFPB` to be "you knew".

```yaml
"UFPB": "you knew"
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

### `"W*PL": "with my"` and `"W-PL": "with me"`

Plover uses the following outlines for "WPM":

```txt
WPM:
  W*PL
  W-PL
```

These are fine, but I'd like to override both of them:

- `W*PM` for the phrase "with my"
- `W-PM` for the phrase "with me"

I'll add in an alt outline for WPM so the outline doesn't get lost: `W-PL/W-PL`.

```yaml
"W*PL": "with my"
"W-PL": "with me"
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

### `"WAO*ED": "we'd"` and `"WAOED": "weed"`

Plover uses the following outlines for "we'd" and "weed":

```txt
we'd:
  WAOED
  WAOED/AE
weed:
  WAO*ED
```

Given that I want to standardise on using `*`-flags for contractions, I'm going
to swap these two outlines around.

```yaml
"WAO*ED": "we'd"
"WAOED": "weed"
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

### `"WR-RB": "where she"`

Plover uses the following outlines for "whereby":

```txt
whereby:
  W-RB
  WR-B
  WR-RB
  WR*RB
  W-R/PWEU
```

I would use `WR-B` or `W-RB` for this, so I'd like to override `WR-RB` to phrase
"where she".

```yaml
"WR-RB": "where she"
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

### `"HA*RLD": "Harold"`

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
```

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

### `"KW*ERT": "QWERTY"` and `"KWER/TEU": "Qwerty"`

Plover uses the following outlines for "QWERTY"-based variations:

```txt
qwerty:
  KWERT/KWREU
  KW*ERT/KWREU
QWERTY:
  KWER/TEU
Qwerty:
  KW*ERT
```

All I want to do is swap the outlines for all caps QWERTY and what looks like
proper noun Qwerty.

```yaml
"KW*ERT": "QWERTY"
"KWER/TEU": "Qwerty"
```

### `"PAO*ET": "Peat"`

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

### `"TPHAO*": "into a"`

Plover uses the following outlines for "into":

```txt
into:
  TPHAO
  SPWAO
  TPHAO*
  TPHRAO
  EUPB/TO
```

I use `TPHAO` for "into", and I'd like to have a one-stroke brief for the phrase
"into a", so I'm overriding `TPHAO*` for that.

```yaml
"TPHAO*": "into a"
```

[this version]: https://github.com/paulfioravanti/steno-dictionaries/blob/5c75e3ef78a6d4884f13f0000493ba57a098e5e8/dictionaries/overrides.md

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
[stitching]: http://ilovesteno.com/2015/03/12/theory-thursday-stitching/
[tat]: https://dictionary.cambridge.org/dictionary/english/tat
[Tet]: https://www.merriam-webster.com/dictionary/Tet
[tiff]: https://dictionary.cambridge.org/dictionary/english/tiff
[tot]: https://dictionary.cambridge.org/dictionary/english/tot
[Uber]: https://www.uber.com/
[unction]: https://dictionary.cambridge.org/dictionary/english/unction
[Yack]: https://dictionary.cambridge.org/dictionary/english/yack
[Yawl]: https://www.collinsdictionary.com/us/dictionary/english/yawl
