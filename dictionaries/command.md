# Command Dictionaries

This directory consists of dictionaries which contain [Plover Control Command][]
outlines that either:

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
"K*UT": "{:KEY_COMBO:SUPER_L(X)}"               # CUT (⌘X)
"KHRO*E": "{:KEY_COMBO:SUPER_L(W)}"             # CLOse (⌘W)
"KHRO*ES": "{:KEY_COMBO:SUPER_L(W)}"            # CLOSE (⌘W) [override]
"KP*EU": "{:KEY_COMBO:SUPER_L(C)}"              # CoPY (⌘C)
"KW*EU": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/quit.scpt'}" # QUIt
"KW*EUZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/quit-hard.scpt'}" # QUIt hard
"P*PBLG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/page-up.scpt'}" # PaGe (up ⇞)
"P-PBLG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/page-down.scpt'}" # PaGe (down ⇟)
"PA*EUFT": "{:KEY_COMBO:SUPER_L(V)}"            # PASTE (⌘V)
"PA*F": "{:KEY_COMBO:SUPER_L(V)}"               # PASTE (⌘V)
"PA*FT": "{:KEY_COMBO:SUPER_L(V)}"              # PASTE (⌘V)
"PWA*BG": "{:KEY_COMBO:SUPER_L(BRACKETLEFT)}"   # go BACK in history (⌘[) [override]
"PWO*LD": "{:KEY_COMBO:SUPER_L(B)}"             # make text BOLD
"R*D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/redo.scpt'}" # ReDo
"R*ERB": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/refresh.scpt'}{:ATTACH}" # REFRESH
"R*R": "{:KEY_COMBO:SHIFT_L(RETURN)}{:ATTACH}"  # shift RetuRn (⇧↩)
"S*F": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/save.scpt'}" # SaVe
"S-FP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/search.scpt'}{:ATTACH}" # SearCH [override]
"S-FRPB": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/search.scpt'}{:ATTACH}" # SeaRCH
"SHR*": "{:KEY_COMBO:SHIFT_L(LEFT)}"            # SeLect text vim-left
"SHR*D": "{:KEY_COMBO:SHIFT_L(ALT_L(LEFT))}"    # SeLect previous worD (⇧⌥←)
"SHR-D": "{:KEY_COMBO:SHIFT_L(ALT_L(RIGHT))}"   # SeLect next worD (⇧⌥→)
"SHR-G": "{:KEY_COMBO:SHIFT_L(RIGHT)}"          # SeLect text vim-right
"SHR-R": "{:KEY_COMBO:SHIFT_L(RETURN)}"         # SHift RetuRn (⇧↩)
"SHRAUL": "{:KEY_COMBO:SUPER_L(A)}"             # SeLect ALL (⌘A)
"SKWR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/undo.scpt'}" # [override for Plover default undo brief]
"SKWR-Z": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/redo.scpt'}"
"SPHR*T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/split-vertical.scpt'}" # SPLiT (vertical)
"SPHR-T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/split-horizontal.scpt'}" # SPLiT (horizontal)
"STAO*EUP": "{:COMMAND:SHELL:bash -ci '$STENO_DICTIONARIES/src/command/typey-type/typey-type-progress.sh'}" # Save TYPEy-type progress
"STKPW*PL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/zooming/zoom-out.scpt'}" # ZooM (out)
"STKPW-PL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/zooming/zoom-in.scpt'}" # ZooM (in)
"STPH*B": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/page-up.scpt'}" # PaGe (up ⇞)
"STPH*R": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/page-down.scpt'}" # PaGe (down ⇟)
"SWAOEUZ": "{:KEY_COMBO:SUPER_L(0)}"            # acTUal SIZE (⌘0)
"THR*EUBG": "{:KEY_COMBO:SUPER_L(I)}"           # make text iTaLIC
"TP-D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/find.scpt'}{:ATTACH}" # FinD (and suppress next space) [override]
"TP-Z": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/actions/fuzzy-find.scpt'}{:ATTACH}" # FuZZy find
"TPAO*RD": "{:KEY_COMBO:SUPER_L(BRACKETRIGHT)}" # go FORWARD in history (⌘])
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
"*EUPBLGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt ImageOptim'}" # IMAGEOptim
"A*EUPBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Anki'}" # ANKi
"HA*BZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Handbrake'}" # HAndBrake
"KP*BGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Xcode'}" # XCode
"KR-PL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"Google Chrome\"'}" # ChRoMe (brief)
"KRO*EPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"Google Chrome\"'}" # CHROME
"KW*EUBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"Quicktime Player\"'}" # QUICKTime Player
"KW*PLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"QMK Toolbox\"'}" # QMk toolbox
"KWRA*Z": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Insomnia'}" # insomnIA
"O*BS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt OBS'}" # OBS
"PH*RZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Miro'}" # MiRo
"PHRO*FRZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Plover'}" # PLOVER
"PO*EFBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Postico'}" # POStiCo
"PO*EFPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Postman'}" # POStMan
"PR*EFZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"System Preferences\"'}" # System PREFerenceS
"PRAO*UFZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Preview'}" # PREVIEW
"RA*URDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt RecordIt'}" # RECORDIt
"SAO*PLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt zoom.us'}" # ZOOM
"SHR*Z": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt VLC'}" # VLc
"SHR-BG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Slack'}" # SLaCK (brief)
"SHRA*BGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Slack'}" # SLACK
"SK*EFPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Sketch'}" # SKETCH
"SK*EUFPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Skitch'}" # SKITCH
"SK-F": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt ScreenFlow'}" # SCREEnFlow
"SKAO*EUPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Skype'}" # SKYPE
"SKRAO*EFZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt ScreenFlow'}" # SCREEnFlow
"SKWAO*EUZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt sqlitebrowser'}" # SQLIte
"SO*PBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"Sonic Pi\"'}" # SONiC Pi
"SPO*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Spotify'}" # SPOtiFy
"SPWHRAO*EUPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"Sublime Text\"'}" # SUBLIME Text
"SR*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"Visual Studio Code\"'}" # Visual Studio code
"SR*L": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt VLC'}" # VLc
"SR*PBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"AWS VPN Client\"'}" # VpN
"SR-L": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt VLC'}" # VLc
"STAO*EPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Steam'}" # STEAM
"STO*RZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"App Store\"'}" # App STORE
"STPA*RZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Safari'}" # SaFARi [override]
"T*EDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt TextEdit'}" # TextEDit
"T*ERPBLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Terminal'}" # TERMINAL
"T*ERPLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt iTerm'}" # iTERM
"T*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt TV'}" # TV
"T-RPL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt iTerm'}" # iTeRM (brief)
"TK*EBGZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Deckset'}" # DECKset
"TK-RD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Discord'}" # DiscoRD (brief)
"TKAO*PL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt GZDoom'}" # gzDOOM (brief)
"TKO*RDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Discord'}" # DiscORD
"TKPWRA*FLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt GraphiQL'}" # GRAPHiqL
"TKPWRA*FPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt \"GraphQL Playground\"'}" # GRAPHql Playground
"TPAO*EUFZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Firefox'}" # FIreFox
"TPH*GS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Notion'}" # NOTION (brief)
"TPHO*EGSZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Notion'}" # NOTION
"TPRA*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Photos'}" # PHOTO(GRAPHS)
"TR*ELZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Trello'}" # TRELLo
"TR*GSZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt Transmission'}" # TRansmiSSION
"TW-T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt TweetDeck'}" # TWiTTer (tweetdeck)
"TWAO*EDZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/activate-application.scpt TweetDeck'}" # TWEEtDeck
```

### Focus Application

For Plover and Finder, because no steno strokes are going to be listened for if
they are not activated already, a stroke can only be used to bring it, and all
its other windows, to the front.

```yaml
"PHR-FR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/focus-application.scpt Plover'}" # PLoVeR (brief) [override]
"TP*RZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/focus-application.scpt Finder'}"  # FindeR
```

### Re-open Application

Some applications require both activation _and_ focus.

```yaml
"A*PLZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/reopen-application.scpt \"Activity Monitor\"'}" # Activity Monitor
"KAO*EBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/reopen-application.scpt Keybase'}"            # KEYBase
"TK*RB": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/reopen-application.scpt Dash'}"                 # DASH [override]
"TKA*RBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/reopen-application.scpt Dash'}"               # DASH
"W*UPBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/reopen-application.scpt \"1Password 7\"'}"     # 1password
"WA*FZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/reopen-application.scpt WaveLink'}"             # WAVELink
"WA*LZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/reopen-application.scpt Wally'}"                # WALly
"WHA*PZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/reopen-application.scpt WhatsApp'}"            # WHATsApP
```

### Open Web Application

These outlines open a web-based application (with Google Chrome) using its URL.

```yaml
"A*PBZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://analytics.google.com/\"'}"               # ANalytics
"H*UBS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://app.hubspot.com/\"'}"                    # HUBSpot
"H*UBT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://app.hubspot.com/\"'}"                    # HUBspoT
"HR*EUPBD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.linkedin.com/\"'}"                # LINkeDin
"KHR*ERPBD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://calendar.google.com\"'}"             # CALENDAR
"KWR*T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.youtube.com/\"'}"                    # YouTube
"KWR*TS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://studio.youtube.com/\"'}"                # YouTube Studio
"PHA*EUL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://mail.google.com\"'}"                   # MAIL
"PHAO*EP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.meetup.com/\"'}"                   # MEEtuP
"PHRA*PBL": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.youtube.com/c/PlatinumSteno/\"'}" # PLAtiNuM (steno)
"PHRA*PLT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.youtube.com/c/PlatinumSteno/\"'}" # PLAtiNuM (steno)
"PWHR*G": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.paulfioravanti.com/\"'}"            # BLoG
"PWHR-G": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.paulfioravanti.com/\"'}"            # BLoG [override]
"R*ETD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.reddit.com\"'}"                      # REDDiT [override]
"SH*TS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://docs.google.com/spreadsheets\"'}"        # (google) SHeeTS
"SH-TS": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://docs.google.com/spreadsheets\"'}"        # (google) SHeeTS
"SK*L": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://search.google.com/search-console/links?resource_id=sc-domain%3Apaulfioravanti.com\"'}" # search ConSoLe [override]
"SKHRO*UD": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://soundcloud.com\"'}"                   # SoundCLOUD
"ST-FR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.stackoverflow.com\"'}"               # STack oVeRflow
"STA*UFR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.stackoverflow.com\"'}"             # STAck OVeRflow
"STO*EFR": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.stackoverflow.com\"'}"             # STAck OVeRflow
"TAO*EUPT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://didoesdigital.com/typey-type\"'}"     # TYPEy-type
"TAO*EUPZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://didoesdigital.com/typey-type\"'}"     # TYPEy-type
"TKO*BGSZ": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://docs.google.com\"'}"                  # (google) DOCS
"TKPW*UB": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.github.com/paulfioravanti\"'}"     # GithUB [override]
"TP*B": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.facebook.com\"'}"                     # FaceBook [override]
"TW*RT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.twitter.com\"'}"                     # TWiTTeR
"TW-RT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/use-web-application.scpt \"https://www.twitter.com\"'}"                     # TWiTTeR
```

### Application Shortcut

These outlines are just shortcuts for application functionality.

```yaml
"A*FRL": "{:KEY_COMBO:ALT_L(SPACE)}"                                     # ALFRed
"SR*EUZ": "{:KEY_COMBO:SHIFT_L(SUPER_L(SPACE))}"                         # diVVY
"TKAO*PLT": "{:COMMAND:SHELL:open ~/Documents/GZDoom/Typist/typist-v0.7.2.pk3}" # gzDOOM Typist (brief)
"TKAOPLT": "{:COMMAND:SHELL:open ~/Documents/GZDoom/Typist/typist-v0.7.2.pk3}"  # gzDOOM Typist (brief)
"TKO*EUF": "{:KEY_COMBO:SHIFT_L(SUPER_L(SPACE))}"                        # diVVY
"TKOEUF": "{:KEY_COMBO:SHIFT_L(SUPER_L(SPACE))}"                         # diVVY
```

## Browser

Key shortcuts for web browser-related functionality. As a baseline, the goal is
to have the outlines work across [Chrome][], [Firefox][], and [Safari][].

```yaml
"R*ERBLT": "{:KEY_COMBO:CONTROL_L(SHIFT_L(R))}" # REFRESH aLL Tabs (Reload all tabs extension)
"R-RZ": "{:KEY_COMBO:SHIFT_L(RETURN)}"          # shift RetuRn (⇧↩)
"SP*D": "{:KEY_COMBO:SHIFT_L(S)}"               # decrease SPeeD (video speed controller chrome extension)
"SP-BGT": "{:KEY_COMBO:SUPER_L(ALT_L(I))}"      # InSPeCT (⌘⌥I)
"SP-D": "{:KEY_COMBO:SHIFT_L(D)}"               # increase SPeeD (video speed controller chrome extension)
"TKPWA*R": "{:KEY_COMBO:SUPER_L(L)}"            # ADDress BAR (⌘L)
```

## Chat

Commands to specifically wrap around [Discord][] and [Slack][] shortcuts.

```yaml
"H*ULDZ": "{:KEY_COMBO:SUPER_L(SHIFT_L(H))}"      # (Slack) start, join, leave or end a HUDDle (⌘⇧H)
"KH*T": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/chat/toggle-chat.scpt'}" # toggle CHaT
"KHAL": "{:KEY_COMBO:SUPER_L(SHIFT_L(L))}"     # (Slack) browse CHAnneLs (⌘⇧H)
"P*RP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/chat/toggle-participants.scpt'}" # toggle PaRticiPants
"PH*BG": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/chat/toggle-microphone.scpt'}" # toggle MiCrophone
"PH*EPBLG": "{:KEY_COMBO:SUPER_L(N)}"          # (Slack) compose a new MEssaGE (⌘N)
"PR*P": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/chat/toggle-participants.scpt'}" # toggle PaRticiPants
"PWROUFP": "{:KEY_COMBO:SUPER_L(SHIFT_L(L))}"  # (Slack) BROWse CHannels (⌘⇧H)
"S*FRPB": "{:KEY_COMBO:SUPER_L(F)}"            # (Slack) SeaRCH in the current conversation (⌘F)
"SKWR-PL": "{:KEY_COMBO:SUPER_L(K)}"           # (Slack) JuMP to a conversation (⌘K)
"SR*D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/chat/toggle-video.scpt'}" # toggle ViDeo [override]
"THR*EDZ": "{:KEY_COMBO:SUPER_L(SHIFT_L(T))}"  # (Slack) open the THREADS view (⌘⇧T)
"TPH*EPLS": "{:KEY_COMBO:ALT_L(SHIFT_L(UP))}"  # (Discord, Slack) jump to previous (backwards NExt) unread channel or direct MeSSage (⌥⇧↑)
"TPH*UPBLG": "{:KEY_COMBO:SUPER_L(N)}"         # (Slack) compose a NEW MEssaGE (⌘N)
"TPHEPLS": "{:KEY_COMBO:ALT_L(SHIFT_L(DOWN))}" # (Discord, Slack) jump to NExt unread channel or direct MeSSage (⌥⇧↓)
"TPHR-D": "{:KEY_COMBO:SUPER_L(SHIFT_L(A))}"   # (Discord, Slack) open the all uNReaD view (⌘⇧A)
"TPHRAED": "{:KEY_COMBO:SUPER_L(J)}"           # (Slack) JuMp to the most recent unread message in a conversation (⌘J)
```

## Keys

These are mostly focused around outlines that have a one-to-one mapping with a
specific key, including media keys etc.

- The outlines for function keys (<kbd>F1</kbd>-<kdb>F12</kbd>) are taken
  pretty much from [Di's `computer-use.json`][] dictionary

```yaml
"1-BGS": "{:KEY_COMBO:F1}"
"10BGS": "{:KEY_COMBO:F10}"
"12-BGS": "{:KEY_COMBO:F12}"
"1K-BGS": "{:KEY_COMBO:F11}"
"1KW-6": "{:KEY_COMBO:F6}"
"1KW-7": "{:KEY_COMBO:F7}"
"1KW-8": "{:KEY_COMBO:F8}"
"1KW-9": "{:KEY_COMBO:F9}"
"2-BGS": "{:KEY_COMBO:F2}"
"3-BGS": "{:KEY_COMBO:F3}"
"4-BGS": "{:KEY_COMBO:F4}"
"5BGS": "{:KEY_COMBO:F5}"
"KPWRO*EUT": "{:KEY_COMBO:KBDBRIGHTNESSDOWN}" # Keyboard BRIGHTness (down)
"KPWROEUT": "{:KEY_COMBO:KBDBRIGHTNESSUP}"    # Keyboard BRIGHTness (up)
"PA*US": "{:KEY_COMBO:AUDIOPAUSE}"            # (audio) PAUSE
"PHAO*UT": "{:KEY_COMBO:AUDIOMUTE}"           # (audio) MUTE
"PHRA*EU": "{:KEY_COMBO:AUDIOPLAY}"           # (audio) PLAY
"PW*F": "{:KEY_COMBO:BACKSPACE}"              # BackSpace (⌫)
"PW*R": "{:KEY_COMBO:DELETE}"                 # foRward Backspace (delete) (⌦)
"PW-FP": "{:KEY_COMBO:BACKSPACE}"             # BackSPace (⌫)
"PWRO*EUT": "{:KEY_COMBO:MONBRIGHTNESSDOWN}"  # BRIGHTness (down)
"PWROEUT": "{:KEY_COMBO:MONBRIGHTNESSUP}"     # BRIGHTness (up)
"SK-P": "{:KEY_COMBO:ESCAPE}{MODE:RESET}"     # eSCaPe (⎋)
"SKWREPBD": "{:KEY_COMBO:END}"                # (j)END (END ↘)
"SKWROEPL": "{:KEY_COMBO:HOME}"               # (j)OME (HOME ↖)
"SP-B": "{:KEY_COMBO:SPACE}"                  # SPace Bar (␣)
"SRO*PL": "{:KEY_COMBO:AUDIOLOWERVOLUME}"     # VOluMe (down)
"SROPL": "{:KEY_COMBO:AUDIORAISEVOLUME}"      # VOluMe (up)
"T-B": "{:KEY_COMBO:TAB}{:ATTACH}"            # [override]
"TA*B": "{:KEY_COMBO:TAB}{:ATTACH}"
"TK-L": "{:KEY_COMBO:DELETE}"                 # foRward Backspace (delete) (⌦)
"TPH*EGT": "{:KEY_COMBO:AUDIONEXT}"           # (audio) NEXT
```

## Command/Control Modifiers

Follows on from, and follows the conventions of entries in
[Di's `modifiers-single-stroke.json` dictionary][].

- The outlines for Command-<number> modifiers use the `*RPLT` key pattern for
  <kbd>⌘</kbd><kbd>0</kbd>-<kbd>5</kbd>, and the mirrored version of that
  pattern, `STPR*`, for <kbd>⌘</kbd><kbd>6</kbd>-<kbd>9</kbd>.

### Command-Modifiers

```yaml
"*6": "{:KEY_COMBO:SUPER_L(6)}"             # ⌘6
"*7": "{:KEY_COMBO:SUPER_L(7)}"             # ⌘7
"*8": "{:KEY_COMBO:SUPER_L(8)}"             # ⌘8
"0*R789": "{:KEY_COMBO:SUPER_L(0)}"         # ⌘0
"0R789": "{:KEY_COMBO:SUPER_L(0)}"          # ⌘0
"1*": "{:KEY_COMBO:SUPER_L(1)}"             # ⌘1
"1*6789": "{:KEY_COMBO:SUPER_L(1)}"         # ⌘1
"1*R789": "{:KEY_COMBO:SUPER_L(1)}"         # ⌘1
"1-R789": "{:KEY_COMBO:SUPER_L(1)}"         # ⌘1
"1234*6": "{:KEY_COMBO:SUPER_L(6)}"         # ⌘6
"1234*7": "{:KEY_COMBO:SUPER_L(7)}"         # ⌘7
"1234*8": "{:KEY_COMBO:SUPER_L(8)}"         # ⌘8
"1234*9": "{:KEY_COMBO:SUPER_L(9)}"         # ⌘9
"123R*6": "{:KEY_COMBO:SUPER_L(6)}"         # ⌘6
"123R*7": "{:KEY_COMBO:SUPER_L(7)}"         # ⌘7
"123R*8": "{:KEY_COMBO:SUPER_L(8)}"         # ⌘8
"123R*9": "{:KEY_COMBO:SUPER_L(9)}"         # ⌘9
"123R-6": "{:KEY_COMBO:SUPER_L(6)}"         # ⌘6
"123R-7": "{:KEY_COMBO:SUPER_L(7)}"         # ⌘7
"123R-8": "{:KEY_COMBO:SUPER_L(8)}"         # ⌘8
"123R-9": "{:KEY_COMBO:SUPER_L(9)}"         # ⌘9
"2*": "{:KEY_COMBO:SUPER_L(2)}"             # ⌘2
"2*6789": "{:KEY_COMBO:SUPER_L(2)}"         # ⌘2
"2*R789": "{:KEY_COMBO:SUPER_L(2)}"         # ⌘2
"2-R789": "{:KEY_COMBO:SUPER_L(2)}"         # ⌘2
"3*": "{:KEY_COMBO:SUPER_L(3)}"             # ⌘3
"3*6789": "{:KEY_COMBO:SUPER_L(3)}"         # ⌘3
"3*R789": "{:KEY_COMBO:SUPER_L(3)}"         # ⌘3
"3-R789": "{:KEY_COMBO:SUPER_L(3)}"         # ⌘3
"4*": "{:KEY_COMBO:SUPER_L(4)}"             # ⌘4
"4*6789": "{:KEY_COMBO:SUPER_L(4)}"         # ⌘4
"4*R789": "{:KEY_COMBO:SUPER_L(4)}"         # ⌘4
"4-R789": "{:KEY_COMBO:SUPER_L(4)}"         # ⌘4
"5*": "{:KEY_COMBO:SUPER_L(5)}"             # ⌘5
"5*6789": "{:KEY_COMBO:SUPER_L(5)}"         # ⌘5
"5*R789": "{:KEY_COMBO:SUPER_L(5)}"         # ⌘5
"5-R789": "{:KEY_COMBO:SUPER_L(5)}"         # ⌘5
"KPH*B": "{:KEY_COMBO:SUPER_L(B)}"          # CoMMand-B (⌘B)
"KPH*BG": "{:KEY_COMBO:SUPER_L(K)}"         # CoMMand-K (⌘K)
"KPH*D": "{:KEY_COMBO:SUPER_L(D)}"          # CoMMand-D (⌘D)
"KPH*E": "{:KEY_COMBO:SUPER_L(E)}"          # CoMMand-E (⌘E)
"KPH*EU": "{:KEY_COMBO:SUPER_L(I)}"         # CoMMand-I (⌘I)
"KPH*F": "{:KEY_COMBO:SUPER_L(V)}"          # CoMMand-V (⌘V)
"KPH*G": "{:KEY_COMBO:SUPER_L(G)}"          # CoMMand-G (⌘G)
"KPH*L": "{:KEY_COMBO:SUPER_L(L)}"          # CoMMand-L (⌘L)
"KPH*P": "{:KEY_COMBO:SUPER_L(P)}"          # CoMMand-P (⌘P)
"KPH*PB": "{:KEY_COMBO:SUPER_L(N)}"         # CoMMand-N (⌘N)
"KPH*PBLG": "{:KEY_COMBO:SUPER_L(J)}"       # CoMMand-J (⌘J)
"KPH*PL": "{:KEY_COMBO:SUPER_L(M)}"         # CoMMand-M (⌘M)
"KPH*R": "{:KEY_COMBO:SUPER_L(R)}"          # CoMMand-R (⌘R)
"KPH*S": "{:KEY_COMBO:SUPER_L(S)}"          # CoMMand-T (⌘S)
"KPH*T": "{:KEY_COMBO:SUPER_L(T)}"          # CoMMand-T (⌘T)
"KPH*U": "{:KEY_COMBO:SUPER_L(U)}"          # CoMMand-U (⌘U)
"KPH*Z": "{:KEY_COMBO:SUPER_L(Z)}"          # CoMMand-Z (⌘Z)
"KPH-B": "{:KEY_COMBO:SUPER_L(B)}"          # CoMMand-B (⌘B)
"KPH-BG": "{:KEY_COMBO:SUPER_L(C)}"         # CoMMand-C (⌘C)
"KPH-D": "{:KEY_COMBO:SUPER_L(D)}"          # CoMMand-D (⌘D)
"KPH-F": "{:KEY_COMBO:SUPER_L(F)}"          # CoMMand-F (⌘F)
"KPH-G": "{:KEY_COMBO:SUPER_L(G)}"          # CoMMand-G (⌘G)
"KPH-P": "{:KEY_COMBO:SUPER_L(P)}"          # CoMMand-P (⌘P)
"KPH-PB": "{:KEY_COMBO:SUPER_L(N)}"         # CoMMand-N (⌘N)
"KPH-PBLG": "{:KEY_COMBO:SUPER_L(J)}"       # CoMMand-J (⌘J)
"KPH-PL": "{:KEY_COMBO:SUPER_L(M)}"         # CoMMand-M (⌘M)
"KPH-R": "{:KEY_COMBO:SUPER_L(R)}"          # CoMMand-R (⌘R)
"KPH-S": "{:KEY_COMBO:SUPER_L(S)}"          # CoMMand-S (⌘S)
"KPH-Z": "{:KEY_COMBO:SUPER_L(Z)}"          # CoMMand-Z (⌘Z)
"KPHA*": "{:KEY_COMBO:SUPER_L(A)}"          # CoMMand-A (⌘A)
"KPHO": "{:KEY_COMBO:SUPER_L(O)}"           # CoMMand-O (⌘O)
"KPHO*": "{:KEY_COMBO:SUPER_L(O)}"          # CoMMand-O (⌘O)
"KPHU": "{:KEY_COMBO:SUPER_L(U)}"           # CoMMand-U (⌘U)
"PW*FPL": "{:KEY_COMBO:SUPER_L(BACKSPACE)}" # Command-BackSpace (⌘⌫)
"R*RZ": "{:KEY_COMBO:SUPER_L(RETURN)}"      # cmd RetuRn (⌘↩)
"R*Z": "{:KEY_COMBO:SUPER_L(RETURN)}"       # cmd RetuRn (⌘↩)
"TK*L": "{:KEY_COMBO:SUPER_L(BACKSPACE)}"   # DeLete (⌘⌫)
```

### Control-Modifiers

```yaml
"KHR*B": "{:KEY_COMBO:CONTROL_L(B)}"           # ControL-B (^B)
"KHR*BG": "{:KEY_COMBO:CONTROL_L(C)}"          # ControL-C (^C)
"KHR*D": "{:KEY_COMBO:CONTROL_L(D)}"           # ControL-D (^D)
"KHR*E": "{:KEY_COMBO:CONTROL_L(E)}"           # ControL-E (^E)
"KHR*EU": "{:KEY_COMBO:CONTROL_L(I)}"          # ControL-I (^I) [override]
"KHR*F": "{:KEY_COMBO:CONTROL_L(V)}"           # ControL-V (^V)
"KHR*L": "{:KEY_COMBO:CONTROL_L(L)}"           # ControL-L (^L)
"KHR*P": "{:KEY_COMBO:CONTROL_L(P)}"           # ControL-P (^P)
"KHR*PBLG": "{:KEY_COMBO:CONTROL_L(J)}"        # ControL-J (^J)
"KHR*PL": "{:KEY_COMBO:CONTROL_L(M)}"          # ControL-M (^M)
"KHR*R": "{:KEY_COMBO:CONTROL_L(R)}"           # ControL-R (^R)
"KHR*T": "{:KEY_COMBO:CONTROL_L(T)}"           # ControL-T (^T)
"KHR*U": "{:KEY_COMBO:CONTROL_L(U)}"           # ControL-U (^U)
"KHR*Z": "{:KEY_COMBO:CONTROL_L(Z)}"           # ControL-Z (^Z)
"KHR-BG": "{:KEY_COMBO:CONTROL_L(K)}"          # ControL-K (^K)
"KHR-F": "{:KEY_COMBO:CONTROL_L(F)}"           # ControL-F (^F)
"KHR-L": "{:KEY_COMBO:CONTROL_L(L)}"           # ControL-L (^L)
"KHR-P": "{:KEY_COMBO:CONTROL_L(P)}"           # ControL-P (^P)
"KHR-PBLG": "{:KEY_COMBO:CONTROL_L(J)}"        # ControL-J (^J)
"KHR-T": "{:KEY_COMBO:CONTROL_L(T)}"           # ControL-T (^T)
"KHR-Z": "{:KEY_COMBO:CONTROL_L(Z)}"           # ControL-Z (^Z)
"KHRA": "{:KEY_COMBO:CONTROL_L(A)}"            # ControL-A (^A)
"KHRA*": "{:KEY_COMBO:CONTROL_L(A)}"           # ControL-A (^A)
"KHRE": "{:KEY_COMBO:CONTROL_L(E)}"            # ControL-E (^E)
"KHRO*": "{:KEY_COMBO:CONTROL_L(O)}"           # ControL-O (^O)
"PW-FPL": "{:KEY_COMBO:CONTROL_L(BACKSPACE)}"  # Control-BackSpace (^⌫)
"PW-FPLT": "{:KEY_COMBO:CONTROL_L(BACKSPACE)}" # Control-BackSpace (^⌫)
"SH-FT": "{:KEY_COMBO:CONTROL_L(HOME)}"        # Control-Home (^↖)
"SR-RS": "{:KEY_COMBO:CONTROL_L(END)}"         # Control-End (^↘)
```

## Google IME

Commands related to using Google Input Method Editor (IME).

They are currently specifically for use with [Google Japanese IME][].

```yaml
"*EPBG": "{:COMMAND:TOGGLE_DICT:-chidori.py}{:KEY_COMBO:CONTROL_L(SHIFT_L(SEMICOLON))}"   # google ime setting for ENGlish
"KW-RT": "{:KEY_COMBO:CONTROL_L(SHIFT_L(R))}" # japanese input reConVeRT
"SKWR*PB": "{:COMMAND:TOGGLE_DICT:-chidori.py}{:KEY_COMBO:CONTROL_L(SHIFT_L(SEMICOLON))}" # google ime setting for english (non-JaPaNese)
"SKWR-P": "{:COMMAND:TOGGLE_DICT:+chidori.py}{:KEY_COMBO:CONTROL_L(SHIFT_L(J))}"          # google ime setting for JaPanese
"SKWR-PB": "{:COMMAND:TOGGLE_DICT:+chidori.py}{:KEY_COMBO:CONTROL_L(SHIFT_L(J))}"         # google ime setting for JaPaNese
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
"KHR*": "{:KEY_COMBO:CONTROL_L(H)}"            # ControL vim-left (⌃←)
"KHR*T": "{:KEY_COMBO:ALT_L(SUPER_L(LEFT))}"   # mirrors KHR* but for iTerm
"KHR-B": "{:KEY_COMBO:CONTROL_L(K)}"           # ControL vim-up (⌃↑)
"KHR-BT": "{:KEY_COMBO:ALT_L(SUPER_L(UP))}"    # mirrors KHR-B but for iTerm
"KHR-G": "{:KEY_COMBO:CONTROL_L(L)}"           # ControL vim-right (⌃→)
"KHR-GT": "{:KEY_COMBO:ALT_L(SUPER_L(RIGHT))}" # mirrors KHR-G but for iTerm
"KHR-R": "{:KEY_COMBO:CONTROL_L(J)}"           # ControL vim-down (⌃↓)
"KHR-RT": "{:KEY_COMBO:ALT_L(SUPER_L(DOWN))}"  # mirrors KHR-R but for iTerm
"STPH*": "{:KEY_COMBO:LEFT}{:ATTACH}"          # vim-left (←) [override]
"STPH-B": "{:KEY_COMBO:UP}{:ATTACH}"           # vim-up (↑)
"STPH-G": "{:KEY_COMBO:RIGHT}{:ATTACH}"        # vim-right (→)
"STPH-R": "{:KEY_COMBO:DOWN}{:ATTACH}"         # vim-down (↓)
"T*B": "{:KEY_COMBO:SHIFT_L(TAB)}{:ATTACH}"    # reverse TaB [override]
"W*D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/navigation/previous-word.scpt'}" # move back a WorD
"W-D": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/navigation/next-word.scpt'}" # move forward a WorD [override]
```

## [Plover Control Commands][]

Aside from using commands standard commands, I have added a few custom ones as
well:

- `"PHROED": "{PLOVER:SET_CONFIG}"`: "**PLO**ver rel**OAD**". Since the Plover
  command `SET_CONFIG` reloads dictionaries as a side effect of actually
  setting some config, I am using essentially a "blank" config set command as
  a proxy to just reload the dictionaries.
- `"PHRAEUP": "{PLOVER:FOCUS}{#Super_L(T)}"`: "**PL**over t**APE**". There is
  no `{PLOVER:PAPER_TAPE}` built-in control command, so this command brings
  Plover back into focus first, then just runs the shortcut to focus the paper
  tape window.
- **[Plover Dict Commands][]** plugin-based commands:
  - `RA*U`: "**RAW** steno". Disables all dictionaries that output text so that
    I am able to write raw steno strokes.
  - `RA*UF`: "**RAW** steno of**F**". Turns off "raw steno" and restores the
    original dictionary stack.

```yaml
"#": "=REPEAT_LAST_STROKE"
"#*": "=RETROSPECTIVE_TOGGLE_ASTERISK"
"*UPD": "{:RETRO_CASE:UPPER_FIRST_WORD}"
"*URP": "{:CASE:UPPER_FIRST_WORD}"
"AFPS": "=RETROSPECTIVE_INSERT_SPACE"
"HRO*ER": "{:CASE:LOWER_FIRST_CHAR}"
"HRO*ERD": "{:RETRO_CASE:LOWER_FIRST_CHAR}"
"HRO*ERZ": "{:MODE:LOWER}"
"KA*PD": "{:RETRO_CASE:CAP_FIRST_WORD}"
"KA*PZ": "{:MODE:CAPS}"
"KPA*D": "{:RETRO_CASE:CAP_FIRST_WORD}"
"KPA*L": "{:CASE:UPPER_FIRST_WORD}"
"KPAD": "{:RETRO_CASE:CAP_FIRST_WORD}"
"KPH*EL": "{:MODE:CAMEL}"                                 # CaMEL
"KPH-L": "{:MODE:CAMEL}"                                  # CaMeL
"KPHA*PLD": "{:MODE:SET_SPACE:, }"                        # CoMMA list
"KPHAEUFT": "{:MODE:SET_SPACE:, }"                        # CoMMA lIST
"KW-BG": "=RETROSPECTIVE_TOGGLE_ASTERISK"
"PHOEPBLG": "{:EMOJI}"                                    # for plover-emoji plugin
"PHR*UP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/focus-application.scpt Plover'}{:COMMAND:LOOKUP}"        # PLover lookUP
"PHRAEUP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/focus-application.scpt Plover'}{:KEY_COMBO:SUPER_L(T)}" # PLover tAPE
"PHRO*F": "{:COMMAND:SUSPEND}"                            # PLOver oFF
"PHRO*PB": "{:COMMAND:RESUME}"                            # PLOver oN
"PHROED": "{:COMMAND:SET_CONFIG}"                         # PLOver relOAD
"PHROFBGS": "{:COMMAND:FOCUS}"                            # PLOver FoCuS
"PHROFG": "{:COMMAND:CONFIGURE}"                          # PLOver conFiGure
"PHROLG": "{:COMMAND:TOGGLE}"                             # PLOver toGGLe
"PHRUP": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/application/focus-application.scpt Plover'}{:COMMAND:LOOKUP}" # PLover lookUP
"PW*FP": "=RETROSPECTIVE_DELETE_SPACE"
"R-FDZ": "{:MODE:RESET_CASE}"                             # ReSet caSe
"R-FT": "{:MODE:RESET}"                                   # ReSeT
"R-FTS": "{:MODE:RESET_SPACE}"                            # ReSeT Space
"R-R": "{^~|\\n^}{MODE:RESET}"                            # Friendly command name does not work...
"RA*U": "{:COMMAND:SOLO_DICT:+command.md}"                # RAW steno
"RA*UF": "{:COMMAND:END_SOLO_DICT}"                       # RAW steno oFF
"SKWRAURBGS": "{:ATTACH:\\n\\n}{:CASE:CAP_FIRST_WORD}"
"STPH-BG": "{:MODE:SNAKE}"                                # SNaKe
"STPHA*EUBG": "{:MODE:SNAKE}"                             # SNAKE
"T-LT": "{:MODE:TITLE}"                                   # TiTLe
"TAO*EULZ": "{:MODE:TITLE}"                               # TItLe
"TK-FPGS": "=RETROSPECTIVE_DELETE_SPACE"
"TK-FPS": "=RETROSPECTIVE_DELETE_SPACE"
"TKA*RB": "{:MODE:LOWER}{:MODE:SET_SPACE:-}"              # DASHerize
```

## Switching

Commands for applications like web browsers or terminals, where there there can
be panes within tabs within multiple windows.

```yaml
"1*G": "{:KEY_COMBO:CONTROL_L(A) 1}"                     # switch to tmux window 1
"2*G": "{:KEY_COMBO:CONTROL_L(A) 2}"                     # switch to tmux window 2
"3*G": "{:KEY_COMBO:CONTROL_L(A) 3}"                     # switch to tmux window 3
"4*G": "{:KEY_COMBO:CONTROL_L(A) 4}"                     # switch to tmux window 4
"5*G": "{:KEY_COMBO:CONTROL_L(A) 5}"                     # switch to tmux window 5
"K*6": "{:KEY_COMBO:CONTROL_L(A) 6}"                     # switch to tmux window 6
"K*7": "{:KEY_COMBO:CONTROL_L(A) 7}"                     # switch to tmux window 7
"K*8": "{:KEY_COMBO:CONTROL_L(A) 8}"                     # switch to tmux window 8
"K*9": "{:KEY_COMBO:CONTROL_L(A) 9}"                     # switch to tmux window 9
"KHROED": "{:KEY_COMBO:SHIFT_L(SUPER_L(W))}"             # CLOse winDow (⇧⌘W)
"KHROET": "{:KEY_COMBO:SUPER_L(W)}"                      # CLOse Tab (⌘W)
"PRA*B": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/tabbing/move-tab-previous.scpt'}" # (move current tab to) PRevious tAB
"STPH*UD": "{:KEY_COMBO:SHIFT_L(SUPER_L(N))}"            # NEW incognito winDow
"STPHR*T": "{:KEY_COMBO:CONTROL_L(A) SHIFT_L(PERCENT)}"  # SPLiT Tmux pane (vertical)
"STPHR-T": "{:KEY_COMBO:CONTROL_L(A) SHIFT_L(QUOTEDBL)}" # SPLiT Tmux pane (horizontal)
"SW*D": "{:KEY_COMBO:SHIFT_L(SUPER_L(ASCIITILDE))}"      # SWitch winDow (backward) (⇧⌘~)
"SW*P": "{:KEY_COMBO:SHIFT_L(SUPER_L(TAB))}"             # SWitch aPP (backward) (⇧⌘⇥)
"SW*T": "{:KEY_COMBO:SHIFT_L(SUPER_L(BRACKETLEFT))}"     # SWitch Tab (backward) (⇧⌘[)
"SW*TD": "{:KEY_COMBO:CONTROL_L(A H)}"                   # SWitch Tmux winDow (backward)
"SW-D": "{:KEY_COMBO:SUPER_L(ASCIITILDE)}"               # SWitch winDow (⌘~)
"SW-P": "{:KEY_COMBO:SUPER_L(TAB)}"                      # SWitch aPP (⌘⇥)
"SW-T": "{:KEY_COMBO:SHIFT_L(SUPER_L(BRACKETRIGHT))}"    # SWitch Tab (⇧⌘])
"SW-TD": "{:KEY_COMBO:CONTROL_L(A L)}"                   # SWitch Tmux winDow
"TA*BT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/tabbing/move-tab-previous.scpt'}" # (move current TAB to) previous Tab
"TABT": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/tabbing/move-tab-next.scpt'}" # (move current TAB to) next Tab
"TPH*UD": "{:KEY_COMBO:SUPER_L(N)}"                      # NEW winDow
"TPH*UT": "{:KEY_COMBO:SUPER_L(T)}"                      # NEW Tab
"TPH*UTD": "{:KEY_COMBO:CONTROL_L(A) C}"                 # NEW Tmux winDow
"TPHA*B": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/tabbing/move-tab-next.scpt'}" # (move current tab to) Next tAB
```

## Vim

Commands specifically for use in [Vim][].

Some of the outlines just wrap around keyboard shortcuts (which may assume the
existence of certain plugins), while others input [Vimscript][] snippets to be
executed.

```yaml
"KAEUZ": "{:KEY_COMBO:SHIFT_L(GRAVE)}" # change CASE
"KHR*UFP": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:nohlsearch}{:KEY_COMBO:RETURN SHIFT_L(COLON)}{:ATTACH:call clearmatches()}{:KEY_COMBO:RETURN}" # CLear searCH (matches)
"KHR*Z": "{:KEY_COMBO:CONTROL_L(W) SHIFT_L(H)}"   # vim move window to far left (⌃W ⇧←)
"KHR-BZ": "{:KEY_COMBO:CONTROL_L(W) SHIFT_L(K)}"  # vim move window to very top (⌃W ⇧↑)
"KHR-FD": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:nohlsearch}{:KEY_COMBO:RETURN SHIFT_L(COLON)}{:ATTACH:call clearmatches()}{:KEY_COMBO:RETURN}" # CLear FinD (matches)
"KHR-FP": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:nohlsearch}{:KEY_COMBO:RETURN SHIFT_L(COLON)}{:ATTACH:call clearmatches()}{:KEY_COMBO:RETURN}" # CLear searCH (matches)
"KHR-GZ": "{:KEY_COMBO:CONTROL_L(W) SHIFT_L(L)}"  # vim move window to far right (⌃W ⇧→)
"KHR-RZ": "{:KEY_COMBO:CONTROL_L(W) SHIFT_L(J)}"  # vim move window to very bottom (^W ⇧↓)
"KHR-SZ": "{:KEY_COMBO:ESCAPE M Z SHIFT_L(COLON)}{:ATTACH:%s/\\s\\+$//}{:KEY_COMBO:RETURN SHIFT_L(COLON)}{:ATTACH:let @/=''}{:KEY_COMBO:RETURN GRAVE Z}" # CLear SpaceS
"KHRAOERP": "{:KEY_COMBO:ESCAPE M Z SHIFT_L(COLON)}{:ATTACH:%s/\\s\\+$//}{:KEY_COMBO:RETURN SHIFT_L(COLON)}{:ATTACH:let @/=''}{:KEY_COMBO:RETURN GRAVE Z}" # CLEAR sPaces
"KHRUFRPB": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:nohlsearch}{:KEY_COMBO:RETURN SHIFT_L(COLON)}{:ATTACH:call clearmatches()}{:KEY_COMBO:RETURN}" # CLear seaRCH (matches)
"KP*EUP": "{:KEY_COMBO:SHIFT_L(QUOTEDBL PLUS) Y}" # COPY into Plus buffer; handy for visual mode
"KPH*PBT": "{:KEY_COMBO:G C}"                     # toggle CoMMeNT range using vim-commentary
"KPH-PBT": "{:KEY_COMBO:G C C}"                   # toggle CoMMeNT lines using vim-commentary
"KPHO*ED": "{:KEY_COMBO:CONTROL_L(A) ESCAPE}"     # enter tmux Copy MODE (see tmux.conf in my dotfiles)
"KWA*UL": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:quitall}{:KEY_COMBO:RETURN}" # QUit ALL
"PHRUFR": "{:KEY_COMBO:ESCAPE SHIFT_L(QUOTEDBL PLUS)}" # PLUs (+) bUFFeR
"R*ERBTS": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:call UltiSnips#RefreshSnippets()}{:KEY_COMBO:RETURN}" # REFRESH (ultisnip) snippeTS
"R-LD": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:edit}{:KEY_COMBO:RETURN}" # ReLoaD (:edit)
"RERBTS": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:call UltiSnips#RefreshSnippets()}{:KEY_COMBO:RETURN}" # REFRESH (ultisnip) snippeTS
"S*UB": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:%s/}" # vim SUBstitute [override]
"SK-L": "{:KEY_COMBO:CONTROL_L(Z)}"               # escape to ConSoLe (from Vim)
"SKW*EU": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:wq}{:KEY_COMBO:RETURN}" # Save and QUIt
"SKW*EUZ": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:wq!}{:KEY_COMBO:RETURN}" # force Save and QUIt
"SKWR*EUP": "{:KEY_COMBO:SHIFT_L(I)}{:ATTACH}"    # I with suppressed space (capital letter counterpart to Plover's SKWR*EU)
"SKWRA*P": "{:KEY_COMBO:SHIFT_L(A)}{:ATTACH}"     # A with suppressed space (captial letter counterpart to Plover's SKWRA*)
"SKWRO*P": "{:KEY_COMBO:SHIFT_L(O)}{:ATTACH}"     # O with suppressed space (capital leter counterpart to Plover's SKWRO*)
"STPH*EU": "{:ATTACH:i}"                          # i with suppressed space (STPH counterpart to Plover's SKWR*EU)
"STPH*EUP": "{:KEY_COMBO:SHIFT_L(I)}{:ATTACH}"    # I with suppressed space (STPH counterpart to SKWR*EUP)
"STPH*EUPS": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:call UltiSnips#RefreshSnippets()}{:KEY_COMBO:RETURN}" # Refresh SNIPPetS (vim)
"STPHA*": "{:ATTACH:a}"                           # a with suppressed space (STPH counterpart to Plover's SKWRA*)
"STPHA*P": "{:KEY_COMBO:SHIFT_L(A)}{:ATTACH}"     # A with suppressed space (STPH counterpart to SKWRA*P)
"STPHO*": "{:ATTACH:o}"                           # o with suppressed space (STPH counterpart to Plover's SKWRO*)
"STPHO*P": "{:KEY_COMBO:SHIFT_L(O)}{:ATTACH}"     # O with suppressed space (STPH counterpart to SKWRO*P)
"SW*": "{:ATTACH://g}{:KEY_COMBO:LEFT LEFT}"      # vim Substitute With
"T*TS": "{:KEY_COMBO:CONTROL_L(K)}{:ATTACH}"      # move to previous snippet TabStop (ultisnips)
"T-TS": "{:KEY_COMBO:CONTROL_L(J)}{:ATTACH}"      # move to next snippet TabStop (ultisnips) [override]
"TP*G": "{:ATTACH:fg}{:KEY_COMBO:RETURN}"         # ForeGround process
"TPH*RD": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:NERDTreeFind}{:KEY_COMBO:RETURN}" # find in NeRDtree (vim)
"TPH-RD": "{:KEY_COMBO:ESCAPE SHIFT_L(COLON)}{:ATTACH:NERDTreeToggle}{:KEY_COMBO:RETURN}" # toggle NeRDtree (vim)
"TPR-PLT": "{:KEY_COMBO:ESCAPE G G EQUAL SHIFT_L(G) CONTROL_L(O O)}" # FoRMaT file and return to last jump
```

## [VLC][]

Shortcut commands (see the [`vlc` directory][] for technical details):

- `SHR*F`: "**VL**C **F**ast Forward". Maps to VLC's "Step Forward" command.
- `SHR*R`: "**VL**C **R**ewind". Maps to VLC's "Step Backward" command.

```yaml
"SHR*F": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/vlc/vlc-step-forward.scpt'}"  # VLc Fast forward
"SHR*R": "{:COMMAND:SHELL:bash -ci 'osascript $STENO_DICTIONARIES/src/command/vlc/vlc-step-backward.scpt'}" # VLc Rewind
```

## Bash Commands

- Q: Why are all of the `COMMAND:SHELL:` commands from the [Plover Run Shell][]
  plugin wrapped in a `bash -ci '...'`?
- A: On macOS, without running the command through `bash` in
  [interactive mode][], I was unable to get environment variables defined in
  `~/.bashrc` to read properly (specifically, the `$STENO_DICTIONARIES` variable
  would be blank). See [user202729/plover_run_shell#3][] for some more details.

[1Password]: https://1password.com/
[Activity Monitor]: https://support.apple.com/en-au/guide/activity-monitor/welcome/mac
[Alfred]: https://www.alfredapp.com/
[Anki]: https://apps.ankiweb.net/
[`application` directory]: ../src/command/application
[App Store]: https://www.apple.com/app-store/
[AWS VPN Client]: https://aws.amazon.com/vpn/client-vpn-download/
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
