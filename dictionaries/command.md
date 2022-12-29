# Command Dictionaries

This directory consists of dictionaries which contain
[Plover Control Command][Plover Control Commands] outlines that either:

- run a keyboard shortcut
- run a script to perform some action

More details on the code that runs the functionality that some command outlines
are mapped to can be found in the [commands source code][] directory.

Entries that contain a `[override]` in their comment override a default Plover
`main.json` outline.

My current set of commands consists of the following:

<!-- vim-markdown-toc GFM -->

* [Actions](#actions)
* [Application Activation (macOS)](#application-activation-macos)
    - [Activate Application](#activate-application)
    - [Focus Application](#focus-application)
    - [Re-open Application](#re-open-application)
    - [Open Web Application](#open-web-application)
    - [Application Shortcut](#application-shortcut)
* [Browser](#browser)
* [Chat](#chat)
* [Keys](#keys)
* [Command/Control Modifiers](#commandcontrol-modifiers)
    - [Command-Modifiers](#command-modifiers)
    - [Control-Modifiers](#control-modifiers)
* [Google IME](#google-ime)
* [Navigation](#navigation)
* [Plover Control Commands](#plover-control-commands)
* [Switching](#switching)
* [Vim](#vim)
* [VLC](#vlc)
* [Bash Commands](#bash-commands)

<!-- vim-markdown-toc -->

## Actions

These commands represent general core "named actions" that can be performed by a
variety of applications, like copy/paste, save, quit etc.

Some of the actions have common keyboard shortcuts across applications, while
others use different shortcuts or key combinations, necessitating the use of a
script.

```yaml
"K*UT": "{#SUPER(X)}"               # CUT (⌘X)
"KH*ERD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/text/change-current-word.scpt'}" # CHange current woRD
"KHRAO*ER": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/clear.scpt'}" # CLEAR
"KHO*RD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/text/change-current-word.scpt'}" # CHange current wORD
"KHRO*E": "{#SUPER(W)}"             # CLOse (⌘W)
"KHRO*ES": "{#SUPER(W)}"            # CLOSE (⌘W) [override]
"KP*EU": "{#SUPER(C)}"              # CoPY (⌘C)
"KW*EU": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/quit.scpt'}" # QUIt
"KW*EUZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/quit-hard.scpt'}" # QUIt hard
"P*PBLG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/page-up.scpt'}" # PaGe (up ⇞)
"P-PBLG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/page-down.scpt'}" # PaGe (down ⇟)
"PA*EUFT": "{#SUPER(V)}"            # PASTE (⌘V)
"PA*F": "{#SUPER(V)}"               # PASTE (⌘V)
"PA*FT": "{#SUPER(V)}"              # PASTE (⌘V)
"PWA*BG": "{#SUPER(BRACKETLEFT)}"   # go BACK in history (⌘[) [override]
"PWO*LD": "{#SUPER(B)}"             # make text BOLD
"PWRAO*EUT": "{:COMMAND:SHELL:bash -ci 'brightness 0.99; brightness 1'}" # BRIGHT(ness) (Uses https://github.com/nriley/brightness. Workaround for LG monitor brightness issue.)
"R*D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/redo.scpt'}" # ReDo
"R*ERB": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/refresh.scpt'}{^}" # REFRESH
"R*R": "{#SHIFT(RETURN)}{^}"        # shift RetuRn (⇧↩)
"S*F": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/save.scpt'}" # SaVe
"S-FP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/search.scpt'}{^}" # SearCH [override]
"S-FRPB": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/search.scpt'}{^}" # SeaRCH
"SHR*": "{#SHIFT(LEFT)}"            # SeLect text vim-left
"SHR*D": "{#SHIFT(ALT(LEFT))}"      # SeLect previous worD (⇧⌥←)
"SHR*ERD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/text/select-one-word-forward.scpt'}" # SeLEct one woRD forward
"SHR*ERDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/text/select-one-word-backward.scpt'}" # SeLEct one woRD backwardS
"SHR-D": "{#SHIFT(ALT(RIGHT))}"     # SeLect next worD (⇧⌥→)
"SHR-G": "{#SHIFT(RIGHT)}"          # SeLect text vim-right
"SHR-R": "{#SHIFT(RETURN)}"         # SHift RetuRn (⇧↩)
"SHRAUL": "{#SUPER(A)}"             # SeLect ALL (⌘A)
"SHRO*RD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/text/select-one-word-forward.scpt'}" # SeLect one wORD forward
"SHRO*RD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/text/select-one-word-backward.scpt'}" # SeLect one wORD backwardS
"SKWR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/undo.scpt'}" # [override for Plover default undo brief]
"SKWR-Z": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/redo.scpt'}"
"SPHR*T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/split-vertical.scpt'}" # SPLiT (vertical)
"SPHR-T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/split-horizontal.scpt'}" # SPLiT (horizontal)
"STAO*EUP": "{:COMMAND:SHELL:bash -ci '$STENO_COMMAND/typey-type/typey-type-progress.sh'}" # Save TYPEy-type progress
"STKPW*PL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/zooming/zoom-out.scpt'}" # ZooM (out)
"STKPW-PL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/zooming/zoom-in.scpt'}" # ZooM (in)
"STPH*B": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/page-up.scpt'}" # PaGe (up ⇞)
"STPH*R": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/page-down.scpt'}" # PaGe (down ⇟)
"SWAO*EUZ": "{#SUPER(0)}"           # acTUal SIZE (⌘0)
"SWAOEUZ": "{#SUPER(0)}"            # acTUal SIZE (⌘0)
"THR*EUBG": "{#SUPER(I)}"           # make text iTaLIC
"TP-D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/find.scpt'}{^}" # FinD (and suppress next space) [override]
"TP-Z": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/actions/fuzzy-find.scpt'}{^}" # FuZZy find
"TPAO*RD": "{#SUPER(BRACKETRIGHT)}" # go FORWARD in history (⌘])
"W*D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/text/move-one-word-back.scpt'}" # move one WorD back
"W-D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/text/move-one-word-forward.scpt'}" # move one WorD forward [override]
```

## Application Activation (macOS)

These commands either open (activate) an application or bring it into focus,
reducing the need to use <kbd>Alt</kbd><kbd>Tab</kbd> for application switching
(see the [`application` directory][] for technical details).

The basis of the outlines are (mostly) a brief of the application name, with
`*Z` appended to reduce likelihood of an outline conflict:

- `*EUPBLGZ`: "**IMAGE**Optim" for [ImageOptim][]
- `A*EUPBGZ`: "**ANK**i" for [Anki][]
- `A*FRL`: "**ALFR**ed" for triggering the [Alfred][] search bar
- `A*PLZ`: "**A**ctivity **M**onitor" for [Activity Monitor][]
- `HA*BZ`: "**HA**nd**B**rake" for [Handbrake][]
- `KAO*EBZ`: "**KEYB**ase" for [Keybase][]
- `KP*BGZ`: "**XC**ode" for [Xcode][]
- `KRO*EPLZ`: "**CHROME**" for [Chrome][]
- `KW*EUBGZ`: "**QUICK**Time Player" for [QuickTime Player][]
- `KW*PLZ`: "**QM**K Toolbox" for [QMK Toolbox][]
- `KWRA*Z`: "Insomn**IA**" for [Insomnia][]
- `PH*RZ`: "**M**i**R**o" for [Miro][]
- `PHRO*FRZ`: "**PLOVER**" for [Plover][] (no activation, only focus)
- `PO*EFBGZ`: "**POS**ti**C**o" for [Postico][]
- `PO*EFPLZ`: "**POS**t**M**an" for [Postman][]
- `PR*EFZ`: "System **PREF**erence**S**": for [System Preferences][]
- `PRAO*UFZ`: "**PREVIEW**" for [Preview][]
- `RA*URDZ`: "**RECORD**It" for [RecordIt][]
- `SAO*PLZ`: "**ZOOM**" for [Zoom][]
- `SHR*Z`: "**VL**C" for [VLC][]
- `SHRA*BGZ`: "**SLACK**" for [Slack][]
- `SK*EFPZ`: "**SKETCH**" for [Sketch][]
- `SK*EUFPZ`: "**SKITCH**" for [Skitch][]
- `SKAO*EUPZ`: "**SKYPE**" for [Skype][]
- `SKRAO*EFZ`: "**SCREE**n**F**low" for [ScreenFlow][]
- `SKWAO*EUZ`: "**SQ**L**I**te" for [DB Browser for SQLite][]
- `SO*PBGZ`: "**SON**i**C** Pi" for [Sonic Pi][]
- `SPO*FZ`: "**SPO**ti**F**y" for [Spotify][]
- `SPWHRAO*EUPLZ`: "**SUBLIME** Text" for [Sublime Text][]
- `SR*EUZ`: "Di**VVY**" for triggering the [Divvy][] window manager
- `SR*FZ`: "**V**isual **S**tudio Code" for [Visual Studio Code][]
- `SR*PBZ`: "**V**P**N**" for [AWS VPN Client][]
- `STAO*EPLZ`: "**STEAM**" for [Steam][]
- `STO*RZ`: "App **STORE**" for [App Store][]
- `STPA*RZ`: "**S**a**FAR**i" for [Safari][]
- `T*EDZ`: "**T**ext**ED**it" for [TextEdit][]
- `T*ERPLZ`: "i**TERM**" for [iTerm2][]
- `T*FZ`: "**TV**" for [TV][]
- `TAO*EUPZ`: "**TYPE**y Type" for opening up [Typey Type][] in a browser
- `TK*EBGZ`: "**DECK**set" for [Deckset][]
- `TKA*RBZ`: "**DASH**" for [Dash][]
- `TKO*RDZ`: "**D**isc**ORD**" for [Discord][]
- `TKPWRA*FLZ`: "**GRAPH**iQ**L**" for [GraphiQL][]
- `TKPWRA*FPZ`: "**GRAPH**QL **P**layground" for [GraphQL Playground][]
- `TP*RZ`: "**F**inde**R**" for [Finder][]
- `TPAO*EUFZ`: "**FI**re**F**ox" for [Firefox][]
- `TPHO*EGSZ`: "**NOTION**" for [Notion][]
- `TPRA*FZ`: "**PHOTO(GRAPHS)**" for [Photos][]
- `TR*ELZ`: "**TRELL**o" for [Trello][]
- `TR*GSZ`: "**TR**ansmi**SSION**" for [Transmission][]
- `TWAO*EDZ`: "**TWEE**t**D**eck" for [TweetDeck][]
- `W*UPBZ`: "**1**Password" for [1Password][]
- `WA*FZ`: "**WAVE**Link" for [WaveLink][]
- `WA*LZ`: "**WAL**ly" for [Wally][]
- `WHA*PZ`: "**WHAT**sAp**P**" for [WhatsApp][]

### Activate Application

These outlines "activate" (open) macOS applications and/or bring their main
window into focus in order to use them.

```yaml
"*EUPBLGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt ImageOptim'}" # IMAGEOptim
"A*EUPBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Anki'}" # ANKi
"HA*BZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Handbrake'}" # HAndBrake
"KP*BGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Xcode'}" # XCode
"KR-PL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"Google Chrome\"'}" # ChRoMe (brief)
"KRO*EPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"Google Chrome\"'}" # CHROME
"KW*EUBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"Quicktime Player\"'}" # QUICKTime Player
"KW*PLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"QMK Toolbox\"'}" # QMk toolbox
"KWRA*Z": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Insomnia'}" # insomnIA
"O*BS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt OBS'}" # OBS
"PH*RZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Miro'}" # MiRo
"PHRO*FRZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Plover'}" # PLOVER
"PO*EFBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Postico'}" # POStiCo
"PO*EFPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Postman'}" # POStMan
"PR*EFZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"System Preferences\"'}" # System PREFerenceS
"PRAO*UFZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Preview'}" # PREVIEW
"RA*URDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt RecordIt'}" # RECORDIt
"SAO*PLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt zoom.us'}" # ZOOM
"SHR*Z": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt VLC'}" # VLc
"SHR-BG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Slack'}" # SLaCK (brief)
"SHRA*BGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Slack'}" # SLACK
"SK*EFPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Sketch'}" # SKETCH
"SK*EUFPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Skitch'}" # SKITCH
"SK-F": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt ScreenFlow'}" # SCREEnFlow
"SKAO*EUPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Skype'}" # SKYPE
"SKRAO*EFZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt ScreenFlow'}" # SCREEnFlow
"SKWAO*EUZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt sqlitebrowser'}" # SQLIte
"SO*PBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"Sonic Pi\"'}" # SONiC Pi
"SPO*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Spotify'}" # SPOtiFy
"SPWHRAO*EUPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"Sublime Text\"'}" # SUBLIME Text
"SR*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"Visual Studio Code\"'}" # Visual Studio code
"SR*L": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt VLC'}" # VLc
"SR*PBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"AWS VPN Client\"'}" # VpN
"SR-L": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt VLC'}" # VLc
"STAO*EPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Steam'}" # STEAM
"STO*RZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"App Store\"'}" # App STORE
"STPA*RZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Safari'}" # SaFARi [override]
"T*EDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt TextEdit'}" # TextEDit
"T*ERPBLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Terminal'}" # TERMINAL
"T*ERPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt iTerm'}" # iTERM
"T*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt TV'}" # TV
"T-RPL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt iTerm'}" # iTeRM (brief)
"TK*EBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Deckset'}" # DECKset
"TK-RD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Discord'}" # DiscoRD (brief)
"TKAO*PL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt GZDoom'}" # gzDOOM (brief)
"TKO*RDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Discord'}" # DiscORD
"TKPWRA*FLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt GraphiQL'}" # GRAPHiqL
"TKPWRA*FPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt \"GraphQL Playground\"'}" # GRAPHql Playground
"TP*F": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Firefox'}" # FireFox
"TPAO*EUFZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Firefox'}" # FIreFox
"TPH*GS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Notion'}" # NOTION (brief)
"TPHO*EGSZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Notion'}" # NOTION
"TPRA*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Photos'}" # PHOTO(GRAPHS)
"TR*ELZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Trello'}" # TRELLo
"TR*GSZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt Transmission'}" # TRansmiSSION
"TW-T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt TweetDeck'}" # TWiTTer (tweetdeck)
"TWAO*EDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/activate-application.scpt TweetDeck'}" # TWEEtDeck
```

### Focus Application

For Plover and Finder, because no steno strokes are going to be listened for if
they are not activated already, a stroke can only be used to bring it, and all
its other windows, to the front.

```yaml
"PHR-FR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/focus-application.scpt Plover'}" # PLoVeR (brief) [override]
"TP*RZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/focus-application.scpt Finder'}"  # FindeR
```

### Re-open Application

Some applications require both activation _and_ focus.

```yaml
"A*PLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/reopen-application.scpt \"Activity Monitor\"'}" # Activity Monitor
"KAO*EBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/reopen-application.scpt Keybase'}"            # KEYBase
"TK*RB": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/reopen-application.scpt Dash'}"                 # DASH [override]
"TKA*RBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/reopen-application.scpt Dash'}"               # DASH
"W*UPBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/reopen-application.scpt \"1Password 7\"'}"     # 1password
"WA*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/reopen-application.scpt WaveLink'}"             # WAVELink
"WA*LZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/reopen-application.scpt Wally'}"                # WALly
"WHA*PZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/reopen-application.scpt WhatsApp'}"            # WHATsApP
```

### Open Web Application

These outlines open a web-based application (with Google Chrome) using its URL.

```yaml
"A*PBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://analytics.google.com/\"'}"               # ANalytics
"H*UBS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://app.hubspot.com/\"'}"                    # HUBSpot
"H*UBT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://app.hubspot.com/\"'}"                    # HUBspoT
"HR*EUPBD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.linkedin.com/\"'}"                # LINkeDin
"KHR*ERPBD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://calendar.google.com\"'}"             # CALENDAR
"KWR*T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.youtube.com/\"'}"                    # YouTube
"KWR*TS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://studio.youtube.com/\"'}"                # YouTube Studio
"PHA*EUL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://mail.google.com\"'}"                   # MAIL
"PHAO*EP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.meetup.com/\"'}"                   # MEEtuP
"PHRA*PBL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.youtube.com/c/PlatinumSteno/\"'}" # PLAtiNuM (steno)
"PHRA*PLT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.youtube.com/c/PlatinumSteno/\"'}" # PLAtiNuM (steno)
"PWHR*G": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.paulfioravanti.com/\"'}"            # BLoG
"PWHR-G": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.paulfioravanti.com/\"'}"            # BLoG [override]
"R*ETD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.reddit.com\"'}"                      # REDDiT [override]
"SH*TS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://docs.google.com/spreadsheets\"'}"        # (google) SHeeTS
"SH-TS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://docs.google.com/spreadsheets\"'}"        # (google) SHeeTS
"SK*L": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://search.google.com/search-console/links?resource_id=sc-domain%3Apaulfioravanti.com\"'}" # search ConSoLe [override]
"SKHRO*UD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://soundcloud.com\"'}"                   # SoundCLOUD
"ST-FR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.stackoverflow.com\"'}"               # STack oVeRflow
"STA*UFR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.stackoverflow.com\"'}"             # STAck OVeRflow
"STO*EFR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.stackoverflow.com\"'}"             # STAck OVeRflow
"TAO*EUPT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://didoesdigital.com/typey-type\"'}"     # TYPEy-type
"TAO*EUPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://didoesdigital.com/typey-type\"'}"     # TYPEy-type
"TKO*BGSZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://docs.google.com\"'}"                  # (google) DOCS
"TKPW*UB": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://github.com/paulfioravanti/\"'}"        # GithUB [override]
"TP*B": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.facebook.com\"'}"                     # FaceBook [override]
"TW*RT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.twitter.com\"'}"                     # TWiTTeR
"TW-RT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/use-web-application.scpt \"https://www.twitter.com\"'}"                     # TWiTTeR
```

### Application Shortcut

These outlines are just shortcuts for application functionality.

```yaml
"A*FRL": "{#ALT(SPACE)}"            # ALFRed
"SR*EUZ": "{#SHIFT(SUPER(SPACE))}"  # diVVY
"TKAO*PLT": "{:COMMAND:SHELL:open ~/Documents/GZDoom/Typist/typist-v0.7.2.pk3}" # gzDOOM Typist (brief)
"TKAOPLT": "{:COMMAND:SHELL:open ~/Documents/GZDoom/Typist/typist-v0.7.2.pk3}"  # gzDOOM Typist (brief)
"TKO*EUF": "{#SHIFT(SUPER(SPACE))}" # diVVY
```

## Browser

Key shortcuts for web browser-related functionality. As a baseline, the goal is
to have the outlines work across [Chrome][], [Firefox][], and [Safari][].

```yaml
"R*ERBLT": "{#CONTROL(SUPER(R))}" # REFRESH aLL Tabs (Reload All Tabs Chrome extension)
"R-RZ": "{#SHIFT(RETURN)}"        # shift RetuRn (⇧↩)
"SP*D": "{#SHIFT(S)}"             # decrease SPeeD (video speed controller chrome extension)
"SP-BGT": "{#SUPER(ALT(I))}"      # InSPeCT (⌘⌥I)
"SP-D": "{#SHIFT(D)}"             # increase SPeeD (video speed controller chrome extension)
"TKPWA*R": "{#SUPER(L)}"          # ADDress BAR (⌘L)
"TAO*LS": "{#SUPER(ALT(I))}"      # (developer) TOOLS (⌘⌥I)
```

## Chat

Commands to specifically wrap around [Discord][], [Slack][], [Google Meet][],
and [Zoom][] shortcuts.

```yaml
"H*ULDZ": "{#SUPER(SHIFT(H))}"   # (Slack) start, join, leave or end a HUDDle (⌘⇧H)
"KH*T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/toggle-chat.scpt'}"                                 # toggle CHaT
"KHAL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/browse-channels.scpt'}"                             # browse CHAnneLs
"P*RP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/toggle-participants.scpt'}"                         # toggle PaRticiPants
"PH*BG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/toggle-microphone.scpt'}"                          # toggle MiCrophone
"PH*EPBLG": "{#SUPER(N)}"        # (Slack) compose a new MEssaGE (⌘N)
"PR*P": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/toggle-participants.scpt'}"                         # toggle PaRticiPants
"PWROUFP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/browse-channels.scpt'}"                          # BROWse CHannels
"S*FRPB": "{#SUPER(F)}"          # (Slack) SeaRCH in the current conversation (⌘F)
"SKWR-PL": "{#SUPER(K)}"         # (Slack) JuMP to a conversation (⌘K)
"SR*D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/toggle-video.scpt'}"                                # toggle ViDeo [override]
"THR*EDZ": "{#SUPER(SHIFT(T))}"  # (Slack) open the THREADS view (⌘⇧T)
"TPH*EPLS": "{#ALT(SHIFT(UP))}"  # (Discord, Slack) jump to previous (backwards NExt) unread channel or direct MeSSage (⌥⇧↑)
"TPH*UPBLG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/compose-new-message.scpt'}"                    # compose a NEW MEssaGE
"TPHEPLS": "{#ALT(SHIFT(DOWN))}" # (Discord, Slack) jump to NExt unread channel or direct MeSSage (⌥⇧↓)
"TPHR-D": "{#SUPER(SHIFT(A))}"   # (Discord, Slack) open the all uNReaD view (⌘⇧A)
"TPHRAED": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/chat/jump-to-oldest-unread-message-in-channel.scpt'}" # jump to oldest uNREAD message in channel
```

## Keys

These are mostly focused around outlines that have a one-to-one mapping with a
specific key, including media keys etc.

- The outlines for function keys (<kbd>F1</kbd>-<kdb>F12</kbd>) are taken
  pretty much from [Di's `computer-use.json`][] dictionary

```yaml
"1-BGS": "{#F1}"
"10BGS": "{#F10}"
"12-BGS": "{#F12}"
"1K-BGS": "{#F11}"
"1KW-6": "{#F6}"
"1KW-7": "{#F7}"
"1KW-8": "{#F8}"
"1KW-9": "{#F9}"
"2-BGS": "{#F2}"
"3-BGS": "{#F3}"
"4-BGS": "{#F4}"
"5BGS": "{#F5}"
"KPWRO*EUT": "{#KBDBRIGHTNESSDOWN}" # Keyboard BRIGHTness (down)
"KPWROEUT": "{#KBDBRIGHTNESSUP}"    # Keyboard BRIGHTness (up)
"PA*US": "{#AUDIOPAUSE}"            # (audio) PAUSE
"PHAO*UT": "{#AUDIOMUTE}"           # (audio) MUTE
"PHRA*EU": "{#AUDIOPLAY}"           # (audio) PLAY
"PW*F": "{#BACKSPACE}"              # BackSpace (⌫)
"PW*R": "{#DELETE}"                 # foRward Backspace (delete) (⌦)
"PW-FP": "{#BACKSPACE}"             # BackSPace (⌫)
"PWRO*EUT": "{#MONBRIGHTNESSDOWN}"  # BRIGHTness (down)
"PWROEUT": "{#MONBRIGHTNESSUP}"     # BRIGHTness (up)
"SK-P": "{#ESCAPE}{MODE:RESET}"     # eSCaPe (⎋)
"SKWREPBD": "{#END}"                # (j)END (END ↘)
"SKWROEPL": "{#HOME}"               # (j)OME (HOME ↖)
"SP-B": "{#SPACE}"                  # SPace Bar (␣)
"SRO*PL": "{#AUDIOLOWERVOLUME}"     # VOluMe (down)
"SROPL": "{#AUDIORAISEVOLUME}"      # VOluMe (up)
"T-B": "{#TAB}{^}"            # [override]
"TA*B": "{#TAB}{^}"
"TK-L": "{#DELETE}"                 # foRward Backspace (delete) (⌦)
"TPH*EGT": "{#AUDIONEXT}"           # (audio) NEXT
```

## Command/Control Modifiers

Follows on from, and follows the conventions of entries in
[Di's `modifiers-single-stroke.json` dictionary][].

- The outlines for Command-<number> modifiers use the `*RPLT` key pattern for
  <kbd>⌘</kbd><kbd>0</kbd>-<kbd>5</kbd>, and the mirrored version of that
  pattern, `STPR*`, for <kbd>⌘</kbd><kbd>6</kbd>-<kbd>9</kbd>.

### Command-Modifiers

```yaml
"*6": "{#SUPER(6)}"             # ⌘6
"*7": "{#SUPER(7)}"             # ⌘7
"*8": "{#SUPER(8)}"             # ⌘8
"0*R789": "{#SUPER(0)}"         # ⌘0
"0R789": "{#SUPER(0)}"          # ⌘0
"1*": "{#SUPER(1)}"             # ⌘1
"1*6789": "{#SUPER(1)}"         # ⌘1
"1*R789": "{#SUPER(1)}"         # ⌘1
"1-R789": "{#SUPER(1)}"         # ⌘1
"1234*6": "{#SUPER(6)}"         # ⌘6
"1234*7": "{#SUPER(7)}"         # ⌘7
"1234*8": "{#SUPER(8)}"         # ⌘8
"1234*9": "{#SUPER(9)}"         # ⌘9
"123R*6": "{#SUPER(6)}"         # ⌘6
"123R*7": "{#SUPER(7)}"         # ⌘7
"123R*8": "{#SUPER(8)}"         # ⌘8
"123R*9": "{#SUPER(9)}"         # ⌘9
"123R-6": "{#SUPER(6)}"         # ⌘6
"123R-7": "{#SUPER(7)}"         # ⌘7
"123R-8": "{#SUPER(8)}"         # ⌘8
"123R-9": "{#SUPER(9)}"         # ⌘9
"2*": "{#SUPER(2)}"             # ⌘2
"2*6789": "{#SUPER(2)}"         # ⌘2
"2*R789": "{#SUPER(2)}"         # ⌘2
"2-R789": "{#SUPER(2)}"         # ⌘2
"3*": "{#SUPER(3)}"             # ⌘3
"3*6789": "{#SUPER(3)}"         # ⌘3
"3*R789": "{#SUPER(3)}"         # ⌘3
"3-R789": "{#SUPER(3)}"         # ⌘3
"4*": "{#SUPER(4)}"             # ⌘4
"4*6789": "{#SUPER(4)}"         # ⌘4
"4*R789": "{#SUPER(4)}"         # ⌘4
"4-R789": "{#SUPER(4)}"         # ⌘4
"5*": "{#SUPER(5)}"             # ⌘5
"5*6789": "{#SUPER(5)}"         # ⌘5
"5*R789": "{#SUPER(5)}"         # ⌘5
"5-R789": "{#SUPER(5)}"         # ⌘5
"KPH*B": "{#SUPER(B)}"          # CoMMand-B (⌘B)
"KPH*BG": "{#SUPER(K)}"         # CoMMand-K (⌘K)
"KPH*D": "{#SUPER(D)}"          # CoMMand-D (⌘D)
"KPH*E": "{#SUPER(E)}"          # CoMMand-E (⌘E)
"KPH*EU": "{#SUPER(I)}"         # CoMMand-I (⌘I)
"KPH*F": "{#SUPER(V)}"          # CoMMand-V (⌘V)
"KPH*G": "{#SUPER(G)}"          # CoMMand-G (⌘G)
"KPH*L": "{#SUPER(L)}"          # CoMMand-L (⌘L)
"KPH*P": "{#SUPER(P)}"          # CoMMand-P (⌘P)
"KPH*PB": "{#SUPER(N)}"         # CoMMand-N (⌘N)
"KPH*PBLG": "{#SUPER(J)}"       # CoMMand-J (⌘J)
"KPH*PL": "{#SUPER(M)}"         # CoMMand-M (⌘M)
"KPH*R": "{#SUPER(R)}"          # CoMMand-R (⌘R)
"KPH*S": "{#SUPER(S)}"          # CoMMand-T (⌘S)
"KPH*T": "{#SUPER(T)}"          # CoMMand-T (⌘T)
"KPH*U": "{#SUPER(U)}"          # CoMMand-U (⌘U)
"KPH*Z": "{#SUPER(Z)}"          # CoMMand-Z (⌘Z)
"KPH-B": "{#SUPER(B)}"          # CoMMand-B (⌘B)
"KPH-BG": "{#SUPER(C)}"         # CoMMand-C (⌘C)
"KPH-D": "{#SUPER(D)}"          # CoMMand-D (⌘D)
"KPH-F": "{#SUPER(F)}"          # CoMMand-F (⌘F)
"KPH-G": "{#SUPER(G)}"          # CoMMand-G (⌘G)
"KPH-P": "{#SUPER(P)}"          # CoMMand-P (⌘P)
"KPH-PB": "{#SUPER(N)}"         # CoMMand-N (⌘N)
"KPH-PBLG": "{#SUPER(J)}"       # CoMMand-J (⌘J)
"KPH-PL": "{#SUPER(M)}"         # CoMMand-M (⌘M)
"KPH-R": "{#SUPER(R)}"          # CoMMand-R (⌘R)
"KPH-S": "{#SUPER(S)}"          # CoMMand-S (⌘S)
"KPH-Z": "{#SUPER(Z)}"          # CoMMand-Z (⌘Z)
"KPHA*": "{#SUPER(A)}"          # CoMMand-A (⌘A)
"KPHO": "{#SUPER(O)}"           # CoMMand-O (⌘O)
"KPHO*": "{#SUPER(O)}"          # CoMMand-O (⌘O)
"KPHU": "{#SUPER(U)}"           # CoMMand-U (⌘U)
"PW*FPL": "{#SUPER(BACKSPACE)}" # Command-BackSpace (⌘⌫)
"R*RZ": "{#SUPER(RETURN)}"      # cmd RetuRn (⌘↩)
"R*Z": "{#SUPER(RETURN)}"       # cmd RetuRn (⌘↩)
"TK*L": "{#SUPER(BACKSPACE)}"   # DeLete (⌘⌫)
```

### Control-Modifiers

```yaml
"KHR*B": "{#CONTROL(B)}"           # ControL-B (^B)
"KHR*BG": "{#CONTROL(C)}"          # ControL-C (^C)
"KHR*D": "{#CONTROL(D)}"           # ControL-D (^D)
"KHR*E": "{#CONTROL(E)}"           # ControL-E (^E)
"KHR*EU": "{#CONTROL(I)}"          # ControL-I (^I) [override]
"KHR*F": "{#CONTROL(V)}"           # ControL-V (^V)
"KHR*G": "{#CONTROL(K)}"           # ControL-K (^K)
"KHR*L": "{#CONTROL(L)}"           # ControL-L (^L)
"KHR*P": "{#CONTROL(P)}"           # ControL-P (^P)
"KHR*PBLG": "{#CONTROL(J)}"        # ControL-J (^J)
"KHR*PL": "{#CONTROL(M)}"          # ControL-M (^M)
"KHR*R": "{#CONTROL(R)}"           # ControL-R (^R)
"KHR*T": "{#CONTROL(T)}"           # ControL-T (^T)
"KHR*U": "{#CONTROL(U)}"           # ControL-U (^U)
"KHR*Z": "{#CONTROL(Z)}"           # ControL-Z (^Z)
"KHR-F": "{#CONTROL(F)}"           # ControL-F (^F)
"KHR-L": "{#CONTROL(L)}"           # ControL-L (^L)
"KHR-P": "{#CONTROL(P)}"           # ControL-P (^P)
"KHR-PBLG": "{#CONTROL(J)}"        # ControL-J (^J)
"KHR-T": "{#CONTROL(T)}"           # ControL-T (^T)
"KHR-Z": "{#CONTROL(Z)}"           # ControL-Z (^Z)
"KHRA": "{#CONTROL(A)}"            # ControL-A (^A)
"KHRA*": "{#CONTROL(A)}"           # ControL-A (^A)
"KHRE": "{#CONTROL(E)}"            # ControL-E (^E)
"KHRO*": "{#CONTROL(O)}"           # ControL-O (^O)
"PW-FPL": "{#CONTROL(BACKSPACE)}"  # Control-BackSpace (^⌫)
"PW-FPLT": "{#CONTROL(BACKSPACE)}" # Control-BackSpace (^⌫)
"SH-FT": "{#CONTROL(HOME)}"        # Control-Home (^↖)
"SR-RS": "{#CONTROL(END)}"         # Control-End (^↘)
```

## Google IME

Commands related to using Google Input Method Editor (IME).

They are currently specifically for use with [Google Japanese IME][] and my
[Chidori][] Japanese dictionary (`chidori.py`).

```yaml
"*EPBG": "{:COMMAND:TOGGLE_DICT:-chidori.py}{#CONTROL(SHIFT(SEMICOLON))}"   # google ime setting for ENGlish
"KW-RT": "{#CONTROL(SHIFT(R))}" # japanese input reConVeRT
"SKWR*PB": "{:COMMAND:TOGGLE_DICT:-chidori.py}{#CONTROL(SHIFT(SEMICOLON))}" # google ime setting for english (non-JaPaNese)
"SKWR-P": "{:COMMAND:TOGGLE_DICT:+chidori.py}{#CONTROL(SHIFT(J))}"          # google ime setting for JaPanese
"SKWR-PB": "{:COMMAND:TOGGLE_DICT:+chidori.py}{#CONTROL(SHIFT(J))}"         # google ime setting for JaPaNese
```

## Navigation

Key shortcuts and modifiers mostly centered around navigation keys
(<kbd>↑</kbd><kbd>↓</kbd><kbd>←</kbd><kbd>→</kbd>).

Based heavily off of Di's [`navigation.json`][] dictionary, but rather than the
direction keys be based off of the location of QWERTY
<kbd>W</kbd><kbd>A</kbd><kbd>S</kbd><kbd>D</kbd> keys, they are based on the
location of [Vim][] navigation keys on a QWERTY keyboard
(<kbd>H</kbd><kbd>J</kbd><kbd>K</kbd><kbd>L</kbd>)

```yaml
"KHR*": "{#CONTROL(H)}"          # ControL vim-left (⌃←)
"KHR*T": "{#ALT(SUPER(LEFT))}"   # mirrors KHR* but for iTerm
"KHR-B": "{#CONTROL(K)}"         # ControL vim-up (⌃↑)
"KHR-BT": "{#ALT(SUPER(UP))}"    # mirrors KHR-B but for iTerm
"KHR-G": "{#CONTROL(L)}"         # ControL vim-right (⌃→)
"KHR-GT": "{#ALT(SUPER(RIGHT))}" # mirrors KHR-G but for iTerm
"KHR-R": "{#CONTROL(J)}"         # ControL vim-down (⌃↓)
"KHR-RT": "{#ALT(SUPER(DOWN))}"  # mirrors KHR-R but for iTerm
"STPH*": "{#LEFT}{^}"            # vim-left (←) [override]
"STPH-B": "{#UP}{^}"             # vim-up (↑)
"STPH-G": "{#RIGHT}{^}"          # vim-right (→)
"STPH-R": "{#DOWN}{^}"           # vim-down (↓)
"T*B": "{#SHIFT(TAB)}{^}"        # reverse TaB [override]
```

## [Plover Control Commands][]

Aside from using commands standard commands, I have added a few custom ones as
well:

- `"PHROED": "{PLOVER:SET_CONFIG}"`: "**PLO**ver rel**OAD**". Since the Plover
  command `SET_CONFIG` reloads dictionaries as a side effect of actually
  setting some config, I am using essentially a "blank" config set command as
  a proxy to just reload the dictionaries.
- `"PHRAEUP": "{PLOVER:FOCUS}{#SUPER(T)}"`: "**PL**over t**APE**". There is
  no `{PLOVER:PAPER_TAPE}` built-in control command, so this command brings
  Plover back into focus first, then just runs the shortcut to focus the paper
  tape window.
- **[Plover Dict Commands][]** plugin-based commands:
  - `RA*U`: "**RAW** steno". Disables all dictionaries that output text so that
    I am able to write raw steno strokes.
  - `RA*UF`: "**RAW** steno of**F**". Turns off "raw steno" and restores the
    original dictionary stack.

```yaml
"#": "{*+}"                                # =REPEAT_LAST_STROKE
"#*": "{*}"                                # =RETROSPECTIVE_TOGGLE_ASTERISK
"*UPD": "{*<}"                             # {:RETRO_CASE:UPPER_FIRST_WORD}
"*URP": "{<}"                              # {:CASE:UPPER_FIRST_WORD}
"AFPS": "{*?}"                             # =RETROSPECTIVE_INSERT_SPACE
"HRO*ER": "{>}"                            # {:CASE:LOWER_FIRST_CHAR}
"HRO*ERD": "{*>}"                          # {:RETRO_CASE:LOWER_FIRST_CHAR}
"HRO*ERZ": "{MODE:LOWER}"
"KA*PD": "{*-|}"                           # {:RETRO_CASE:CAP_FIRST_WORD}
"KA*PZ": "{MODE:CAPS}"
"KPA*D": "{-|}"                            # {:RETRO_CASE:CAP_FIRST_WORD}
"KPA*L": "{<}"                             # {:CASE:UPPER_FIRST_WORD}
"KPAD": "{*-|}"                            # {:RETRO_CASE:CAP_FIRST_WORD}
"KPH*EL": "{MODE:CAMEL}"                   # CaMEL
"KPH-L": "{MODE:CAMEL}"                    # CaMeL
"KPHA*PLD": "{MODE:SET_SPACE:, }"          # CoMMA list
"KPHAEUFT": "{MODE:SET_SPACE:, }"          # CoMMA lIST
"KW-BG": "{*}"                             # =RETROSPECTIVE_TOGGLE_ASTERISK
"PHOEPBLG": "{:EMOJI}"                     # for plover-emoji plugin
"PHR*UP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/focus-application.scpt Plover'}{:COMMAND:LOOKUP}"        # PLover lookUP
"PHRAEUP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/focus-application.scpt Plover'}{#SUPER(T)}" # PLover tAPE
"PHRO*ED": "{:COMMAND:SET_CONFIG}"         # PLOver relOAD
"PHRO*F": "{:COMMAND:SUSPEND}"             # PLOver oFF
"PHRO*PB": "{:COMMAND:RESUME}"             # PLOver oN
"PHROED": "{:COMMAND:SET_CONFIG}"          # PLOver relOAD
"PHROFBGS": "{:COMMAND:FOCUS}"             # PLOver FoCuS
"PHROFG": "{:COMMAND:CONFIGURE}"           # PLOver conFiGure
"PHROLG": "{:COMMAND:TOGGLE}"              # PLOver toGGLe
"PHRUP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/application/focus-application.scpt Plover'}{:COMMAND:LOOKUP}" # PLover lookUP
"PW*FP": "{*!}"                            # =RETROSPECTIVE_DELETE_SPACE
"R-FDZ": "{MODE:RESET_CASE}"               # ReSet caSe
"R-FT": "{MODE:RESET}"                     # ReSeT
"R-FTS": "{MODE:RESET_SPACE}"              # ReSeT Space
"R-R": "{^~|\\n^}{MODE:RESET}"             # Friendly command name does not work...
"RA*U": "{:COMMAND:SOLO_DICT:+command.md}" # RAW steno
"RA*UF": "{:COMMAND:END_SOLO_DICT}"        # RAW steno oFF
"SKWRAURBGS": "{^\\n\\n^}{-|}"
"STPH-BG": "{MODE:SNAKE}"                  # SNaKe
"STPHA*EUBG": "{MODE:SNAKE}"               # SNAKE
"T-LT": "{MODE:TITLE}"                     # TiTLe
"TAO*EULZ": "{MODE:TITLE}"                 # TItLe
"TK-FPGS": "{*!}"                          # =RETROSPECTIVE_DELETE_SPACE
"TK-FPS": "{*!}"                           # =RETROSPECTIVE_DELETE_SPACE
"TKA*RB": "{MODE:LOWER}{MODE:SET_SPACE:-}" # DASHerize
```

## Switching

Commands for applications like web browsers or terminals, where there there can
be panes within tabs within multiple windows.

```yaml
"1*G": "{#CONTROL(A) 1}"                   # switch to tmux window 1
"2*G": "{#CONTROL(A) 2}"                   # switch to tmux window 2
"3*G": "{#CONTROL(A) 3}"                   # switch to tmux window 3
"4*G": "{#CONTROL(A) 4}"                   # switch to tmux window 4
"5*G": "{#CONTROL(A) 5}"                   # switch to tmux window 5
"K*6": "{#CONTROL(A) 6}"                   # switch to tmux window 6
"K*7": "{#CONTROL(A) 7}"                   # switch to tmux window 7
"K*8": "{#CONTROL(A) 8}"                   # switch to tmux window 8
"K*9": "{#CONTROL(A) 9}"                   # switch to tmux window 9
"KHROED": "{#SHIFT(SUPER(W))}"             # CLOse winDow (⇧⌘W)
"KHROET": "{#SUPER(W)}"                    # CLOse Tab (⌘W)
"PRA*B": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/tabbing/move-tab-previous.scpt'}" # (move current tab to) PRevious tAB
"STPH*UD": "{#SHIFT(SUPER(N))}"            # NEW incognito winDow
"STPHR*T": "{#CONTROL(A) SHIFT(PERCENT)}"  # SPLiT Tmux pane (vertical)
"STPHR-T": "{#CONTROL(A) SHIFT(QUOTEDBL)}" # SPLiT Tmux pane (horizontal)
"SW*D": "{#SHIFT(SUPER(ASCIITILDE))}"      # SWitch winDow (backward) (⇧⌘~)
"SW*P": "{#SHIFT(SUPER(TAB))}"             # SWitch aPP (backward) (⇧⌘⇥)
"SW*T": "{#SHIFT(SUPER(BRACKETLEFT))}"     # SWitch Tab (backward) (⇧⌘[)
"SW*TD": "{#CONTROL(A H)}"                 # SWitch Tmux winDow (backward)
"SW-D": "{#SUPER(ASCIITILDE)}"             # SWitch winDow (⌘~)
"SW-P": "{#SUPER(TAB)}"                    # SWitch aPP (⌘⇥)
"SW-T": "{#SHIFT(SUPER(BRACKETRIGHT))}"    # SWitch Tab (⇧⌘])
"SW-TD": "{#CONTROL(A L)}"                 # SWitch Tmux winDow
"TA*BT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/tabbing/move-tab-previous.scpt'}" # (move current TAB to) previous Tab
"TABT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/tabbing/move-tab-next.scpt'}" # (move current TAB to) next Tab
"TPH*UD": "{#SUPER(N)}"                    # NEW winDow
"TPH*UDZ": "{#SHIFT(SUPER(N))}"            # NEW incognito winDow
"TPH*UT": "{#SUPER(T)}"                    # NEW Tab
"TPH*UTD": "{#CONTROL(A) C}"               # NEW Tmux winDow
"TPHA*B": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/tabbing/move-tab-next.scpt'}" # (move current tab to) Next tAB
```

## Vim

Commands specifically for use in [Vim][].

Some of the outlines just wrap around keyboard shortcuts (which may assume the
existence of certain plugins), while others input [Vimscript][] snippets to be
executed.

```yaml
"K-Z": "{#SHIFT(GRAVE)}" # change CASE
"KAEUZ": "{#SHIFT(GRAVE)}" # change CASE
"KHO*ET": "{#C I SHIFT(QUOTEDBL)}" # CHange (inside) quOTE
"KHR*UFP": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}" # CLear searCH (matches)
"KHR*Z": "{#CONTROL(W) SHIFT(H)}" # vim move window to far left (⌃W ⇧←)
"KHR-BZ": "{#CONTROL(W) SHIFT(K)}" # vim move window to very top (⌃W ⇧↑)
"KHR-FD": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}" # CLear FinD (matches)
"KHR-FP": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}" # CLear searCH (matches)
"KHR-FRPB": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}" # CLear seaRCH (matches)
"KHR-GZ": "{#CONTROL(W) SHIFT(L)}" # vim move window to far right (⌃W ⇧→)
"KHR-RZ": "{#CONTROL(W) SHIFT(J)}" # vim move window to very bottom (^W ⇧↓)
"KHR-SZ": "{#ESCAPE M Z SHIFT(COLON)}{^%s/\\s\\+$//^}{#RETURN SHIFT(COLON)}{^let @/=''^}{#RETURN GRAVE Z}" # CLear SpaceS
"KHRAOERP": "{#ESCAPE M Z SHIFT(COLON)}{^%s/\\s\\+$//^}{#RETURN SHIFT(COLON)}{^let @/=''^}{#RETURN GRAVE Z}" # CLEAR sPaces
"KHRUFRPB": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}" # CLear seaRCH (matches)
"KP*EUP": "{#SHIFT(QUOTEDBL PLUS) Y}" # COPY to Plus (+) buffer; handy for visual mode
"KPH*PBT": "{#G C}" # toggle CoMMeNT range using vim-commentary
"KPH-PBT": "{#G C C}" # toggle CoMMeNT lines using vim-commentary
"KPHO*ED": "{#CONTROL(A) ESCAPE}" # enter tmux Copy MODE (see tmux.conf in my dotfiles)
"KWA*UL": "{#ESCAPE SHIFT(COLON)}{^quitall^}{#RETURN}" # QUit ALL
"PHRUFR": "{#ESCAPE SHIFT(QUOTEDBL PLUS)}" # PLUs (+) bUFFeR
"R*ERBTS": "{#ESCAPE SHIFT(COLON)}{^call UltiSnips#RefreshSnippets()^}{#RETURN}" # REFRESH (ultisnip) snippeTS
"R-LD": "{#ESCAPE SHIFT(COLON)}{^edit^}{#RETURN}" # ReLoaD (:edit)
"RERBTS": "{#ESCAPE SHIFT(COLON)}{^call UltiSnips#RefreshSnippets()^}{#RETURN}" # REFRESH (ultisnip) snippeTS
"S*UB": "{#ESCAPE SHIFT(COLON)}{^%s/^}" # vim SUBstitute [override]
"SK-L": "{#CONTROL(Z)}" # escape to ConSoLe (from Vim)
"SKHO*ET": "{#C I QUOTERIGHT}" # CHange (inside single) quOTE
"SKW*EU": "{#ESCAPE SHIFT(COLON)}{^wq^}{#RETURN}" # Save and QUIt
"SKW*EUZ": "{#ESCAPE SHIFT(COLON)}{^wq!^}{#RETURN}" # force Save and QUIt
"SKWR*EUP": "{#SHIFT(I)}{^}" # I with suppressed space (capital letter counterpart to Plover's SKWR*EU)
"SKWRA*P": "{#SHIFT(A)}{^}" # A with suppressed space (captial letter counterpart to Plover's SKWRA*)
"SKWRO*P": "{#SHIFT(O)}{^}" # O with suppressed space (capital letter counterpart to Plover's SKWRO*)
"SR*ERD": "{#V I W}" # Visual (inside) woRD
"SRO*RD": "{#V I W}" # Visual (inside) wORD
"STPH*EU": "{^i^}" # i with suppressed space (STPH counterpart to Plover's SKWR*EU)
"STPH*EUP": "{#SHIFT(I)}{^}" # I with suppressed space (STPH counterpart to SKWR*EUP)
"STPH*EUPS": "{#ESCAPE SHIFT(COLON)}{^call UltiSnips#RefreshSnippets()^}{#RETURN}" # Refresh SNIPPetS (vim)
"STPHA*": "{^a^}" # a with suppressed space (STPH counterpart to Plover's SKWRA*)
"STPHA*P": "{#SHIFT(A)}{^}" # A with suppressed space (STPH counterpart to SKWRA*P)
"STPHO*": "{^o^}" # o with suppressed space (STPH counterpart to Plover's SKWRO*)
"STPHO*P": "{#SHIFT(O)}{^}"# O with suppressed space (STPH counterpart to SKWRO*P)
"SW*": "{^//g^}{#LEFT LEFT}" # vim Substitute With
"T*TS": "{#CONTROL(K)}{^}" # move to previous snippet TabStop (ultisnips)
"T-TS": "{#CONTROL(J)}{^}" # move to next snippet TabStop (ultisnips) [override]
"TP*G": "{^fg^}{#RETURN}" # ForeGround process
"TPH*RD": "{#ESCAPE SHIFT(COLON)}{^NERDTreeFind^}{#RETURN}" # find in NeRDtree (vim)
"TPH-RD": "{#ESCAPE SHIFT(COLON)}{^NERDTreeToggle^}{#RETURN}" # toggle NeRDtree (vim)
"TPO*RPLT": "{#ESCAPE G G EQUAL SHIFT(G) CONTROL(O O)}" # FORMAT file (and return to last jump)
"TPR-PLT": "{#ESCAPE G G EQUAL SHIFT(G) CONTROL(O O)}" # FoRMaT file (and return to last jump)
```

## [VLC][]

Shortcut commands (see the [`vlc` directory][] for technical details):

- `SHR*F`: "**VL**C **F**ast Forward". Maps to VLC's "Step Forward" command.
- `SHR*R`: "**VL**C **R**ewind". Maps to VLC's "Step Backward" command.

```yaml
"SHR*F": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/vlc/vlc-step-forward.scpt'}"  # VLc Fast forward
"SHR*R": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_COMMAND/vlc/vlc-step-backward.scpt'}" # VLc Rewind
```

## Bash Commands

- Q: Why are all of the `COMMAND:SHELL:` commands from the [Plover Run Shell][]
  plugin wrapped in a `bash -ci '...'`?
- A: On macOS, without running the command through `bash` in
  [interactive mode][], I was unable to get environment variables defined in
  `~/.bashrc` to read properly (specifically, the `$STENO_COMMAND` variable
  would be blank). See [user202729/plover_run_shell#3][] for some more details.

[1Password]: https://1password.com/
[Activity Monitor]: https://support.apple.com/en-au/guide/activity-monitor/welcome/mac
[Alfred]: https://www.alfredapp.com/
[Anki]: https://apps.ankiweb.net/
[`application` directory]: ../src/command/application
[App Store]: https://www.apple.com/app-store/
[AWS VPN Client]: https://aws.amazon.com/vpn/client-vpn-download/
[Chidori]: https://github.com/paulfioravanti/plover-chidori
[Chrome]: https://www.google.com/chrome/
[commands source code]: ../src/command
[Dash]: https://kapeli.com/dash
[DB Browser for SQLite]: https://sqlitebrowser.org/
[Deckset]: https://www.deckset.com/
[Di's `computer-use.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/computer-use.json
[Di's `modifiers-single-stroke.json` dictionary]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/modifiers-single-stroke.json
[`navigation.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/navigation.json
[Discord]: https://discord.com/
[Divvy]: https://mizage.com/divvy/
[Dropbox]: https://www.dropbox.com/
[Finder]: https://support.apple.com/en-us/HT201732
[Firefox]: https://www.mozilla.org/en-US/firefox/new/
[Google Japanese IME]: https://www.google.co.jp/ime/
[Google Meet]: https://meet.google.com/
[GraphiQL]: https://github.com/graphql/graphiql
[GraphQL Playground]: https://github.com/graphql/graphql-playground
[Handbrake]: https://handbrake.fr/
[ImageOptim]: https://imageoptim.com/mac
[Insomnia]: https://insomnia.rest/
[interactive mode]: https://www.gnu.org/software/bash/manual/html_node/Interactive-Shell-Behavior.html
[iTerm2]: https://iterm2.com/
[Keybase]: https://keybase.io/
[Miro]: https://miro.com/
[Notion]: https://www.notion.so/
[Photos]: https://www.apple.com/macos/photos/
[Plover]: https://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover Dict Commands]: https://github.com/KoiOates/plover_dict_commands
[Plover plugin]: https://plover.readthedocs.io/en/latest/plugins.html
[Plover Run Shell]: https://github.com/user202729/plover_run_shell
[Postico]: https://eggerapps.at/postico/
[Postman]: https://www.postman.com/
[Preview]: http://support.apple.com/guide/preview
[QMK Toolbox]: https://github.com/qmk/qmk_toolbox
[QuickTime Player]: https://support.apple.com/downloads/quicktime
[RecordIt]: https://recordit.co/
[Safari]: https://www.apple.com/safari/
[ScreenFlow]: https://www.telestream.net/screenflow/
[Sketch]: https://www.sketch.com/
[Skitch]: https://evernote.com/products/skitch
[Skype]: https://www.skype.com/en/
[Slack]: https://slack.com/
[Sonic Pi]: https://sonic-pi.net/
[Spotify]: https://www.spotify.com/
[Steam]: https://store.steampowered.com/
[Sublime Text]: https://www.sublimetext.com/
[System Preferences]: https://support.apple.com/en-au/guide/mac-help/mh15217/mac
[TextEdit]: https://support.apple.com/en-au/guide/textedit/welcome/mac
[Transmission]: https://transmissionbt.com/
[Trello]: https://trello.com/en
[TV]: https://www.apple.com/au/apple-tv-app/
[TweetDeck]: https://tweetdeck.twitter.com/
[Typey Type]: https://didoesdigital.com/typey-type/
[user202729/plover_run_shell#3]: https://github.com/user202729/plover_run_shell/issues/3
[Vim]: https://www.vim.org/
[Vimscript]: https://en.wikipedia.org/wiki/Vim_(text_editor)#Vim_script
[Visual Studio Code]: https://code.visualstudio.com/
[VLC]: https://www.videolan.org/vlc/
[`vlc` directory]: ../src/command/vlc
[Wally]: https://ergodox-ez.com/pages/wally
[WaveLink]: https://www.elgato.com/en/downloads
[WhatsApp]: https://www.whatsapp.com/
[Xcode]: https://developer.apple.com/xcode/
[Zoom]: https://zoom.us/
