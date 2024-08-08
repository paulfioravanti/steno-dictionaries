# Command Dictionaries

This directory consists of dictionaries which contain
[Plover Control Command][Plover Control Commands] outlines that either:

- run a keyboard shortcut
- run a script to perform some action

More details on the code that runs the functionality that some command outlines
are mapped to can be found in the [commands source code][] directory.

Entries that contain a `[override]` in their comment override a default Plover
`main.json` outline.

You may notice that all of the `COMMAND:SHELL:` commands from the
[Plover Run Shell][] plugin wrapped in a `zsh -ci '...'` command. The reason
for this is that on macOS, without running the command through `zsh` in
[interactive mode][], I was unable to get environment variables defined in
`~/.zshrc` to read properly (specifically, the `$STENO_DICTIONARIES` variable
would be blank). See [user202729/plover_run_shell#3][] for some more details.

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
* [Personal](#personal)
* [Plover Control Commands](#plover-control-commands)
* [Switching](#switching)
* [Vim](#vim)
* [VLC](#vlc)
* [Window Management](#window-management)

<!-- vim-markdown-toc -->

## Actions

These commands represent general core "named actions" that can be performed by a
variety of applications, like copy/paste, save, quit etc.

Some of the actions have common keyboard shortcuts across applications, while
others use different shortcuts or key combinations, necessitating the use of a
script.

```yaml
"HR*BG": "{:PLATFORM:MAC:#CONTROL(SUPER(Q)):WINDOWS:#SUPER(L):LINUX:#CONTROL(ALT(L))}"                      # LocK screen [override]
"HR*D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/load.scpt}"                          # LoaD
"K*UT": "{:PLATFORM:MAC:#SUPER(X):OTHER:#CONTROL(X)}"                                                       # CUT (⌘X)
"K*Z": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/transform-uppercase.scpt}"               # (transform to upper) CaSe
"K-Z": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/transform-lowercase.scpt}"               # (transform to lower) CaSe
"KA*EUZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/transform-uppercase.scpt}"            # (transform to upper) CASE
"KAEUZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/transform-lowercase.scpt}"             # (transform to lower) CASE
"KH*ERD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/change-current-word.scpt}"            # CHange current woRD
"KHO*RD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/change-current-word.scpt}"            # CHange current wORD
"KHRA*EUP": "{:COMMAND:SHELL:zsh -ci '$STENO_DICTIONARIES/src/command/iterm/clear-tape.sh'}"                # CLear tAPEy tape (and archive tape)
"KHRAEUP": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/iterm/clear-tape-buffer.scpt}"            # CLear tAPEy tape
"KHRAO*ER": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/clear.scpt}"                     # CLEAR
"KHRO*E": "{:PLATFORM:MAC:#SUPER(W):OTHER:#CONTROL(W)}"                                                     # CLOse (⌘W)
"KHRO*ES": "{:PLATFORM:MAC:#SUPER(W):OTHER:#CONTROL(W)}"                                                    # CLOSE (⌘W) [override]
"KP*EU": "{:PLATFORM:MAC:#SUPER(C):OTHER:#CONTROL(C)}"                                                      # CoPY (⌘C)
"KPA*LZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/transform-capitalize.scpt}"           # (transform to) CAPITALiZe
"KW*EU": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/quit.scpt}"                         # QUIt
"KW*EUZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/quit-hard.scpt}"                   # QUIt hard
"P*EUPBT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/tabbing/pin-tab.scpt}"                    # PIN Tab
"P*PBLG": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/page-up.scpt}"                     # PaGe (up ⇞)
"P-PBLG": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/page-down.scpt}"                   # PaGe (down ⇟)
"PA*EUFT": "{:PLATFORM:MAC:#SUPER(V):OTHER:#CONTROL(V)}"                                                    # PASTE (⌘V)
"PA*FT": "{:PLATFORM:MAC:#SUPER(V):OTHER:#CONTROL(V)}"                                                      # PASTE (⌘V)
"PEUPBT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/tabbing/pin-tab.scpt}"                     # PIN Tab
"PWA*BG": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/back.scpt}"                        # (go) BACK [override]
"PWO*LD": "{:PLATFORM:MAC:#SUPER(B):OTHER:#CONTROL(B)}"                                                     # make text BOLD
"PWRAO*EUT": "{:COMMAND:SHELL:zsh -ci '$STENO_DICTIONARIES/src/command/actions/fix-brightness.sh'}"         # BRIGHT(ness)
"R*D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/redo.scpt}"                           # ReDo
"R*ERB": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/refresh.scpt}{^^}"                  # REFRESH
"R*R": "{#SHIFT(RETURN)}{^^}"                                                                               # shift RetuRn (⇧↩)
"S*F": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/save.scpt}{^^}"                       # SaVe
"S-FP": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/search.scpt}{^^}"                    # SearCH [override]
"S-FRPB": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/search.scpt}{^^}"                  # SeaRCH
"SHR*": "{#SHIFT(LEFT)}"                                                                                    # SeLect text vim-left
"SHR*D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-one-word-backward.scpt}"        # SeLect one worD backwards
"SHR*ERD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-one-word-forward.scpt}"       # SeLEct one woRD forward
"SHR*ERDZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-one-word-backward.scpt}"     # SeLEct one woRD backwardS
"SHR*RD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-one-word-backward.scpt}"       # SeLect one wORD backwardS
"SHR-D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-one-word-forward.scpt}"         # SeLect one worD forward
"SHR-G": "{#SHIFT(RIGHT)}"                                                                                  # SeLect text vim-right
"SHR-R": "{#SHIFT(RETURN)}"                                                                                 # SHift RetuRn (⇧↩)
"SHR-RD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-one-word-forward.scpt}"        # SeLect one wORD forward
"SHRA*UL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-all.scpt}"                    # SeLect ALL
"SHRAO*EUPB": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-editable-line.scpt}"       # SeLect whole lINE of editable text
"SHRAUL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/select-all.scpt}"                     # SeLect ALL
"SK*Z": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/transform-swapcase.scpt}"               # (transform to) Swapped CaSe
"SKA*EUZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/transform-swapcase.scpt}"            # (transform to) Swapped CaSe
"SKWR": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/undo.scpt}"                          # [override for Plover default undo brief]
"SKWR-Z": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/redo.scpt}"                        # uses undo brief plus Z to mean opposite of undo
"SP*DZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/decrease-playback-speed.scpt}"      # decrease SPeeD
"SP-DZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/increase-playback-speed.scpt}"      # increase SPeeD
"SPHR*T": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/split-vertical.scpt}"              # SPLiT (vertical)
"SPHR-T": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/split-horizontal.scpt}"            # SPLiT (horizontal)
"SR-FT": "{:PLATFORM:MAC:#SUPER(0):OTHER:#CONTROL(0)}"                                                      # ReSeT Size (⌘0)
"STAO*EUP": "{:COMMAND:SHELL:zsh -ci '$STENO_DICTIONARIES/src/command/typey-type/typey-type-progress.sh'}"  # Save TYPEy-type progress
"STKPW*PL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/zooming/zoom-out.scpt}"                  # ZooM (out)
"STKPW-PL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/zooming/zoom-in.scpt}"                   # ZooM (in)
"STPH*B": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/page-up.scpt}"                     # PaGe (up ⇞)
"STPH*R": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/page-down.scpt}"                   # PaGe (down ⇟)
"SWAO*EUZ": "{:PLATFORM:MAC:#SUPER(0):OTHER:#CONTROL(0)}"                                                   # acTUal SIZE (⌘0)
"SWAOEUZ": "{:PLATFORM:MAC:#SUPER(0):OTHER:#CONTROL(0)}"                                                    # acTUal SIZE (⌘0)
"TAO*B": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/toggle-toolbar.scpt}"               # toggle TOOlBar
"TAOB": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/toggle-toolbar.scpt}"                # toggle TOOlBar
"THR*EUBG": "{:PLATFORM:MAC:#SUPER(I):OTHER:#CONTROL(I)}"                                                   # make text iTaLIC
"TP-D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/find.scpt}{^^}"                      # FinD (and suppress next space) [override]
"TP-Z": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/fuzzy-find.scpt}{^^}"                # FuZZy find
"TPAO*RD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/actions/forward.scpt}"                    # (go) FORWARD
"W*D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/move-one-word-back.scpt}"                # move one WorD back
"W-D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/text/move-one-word-forward.scpt}"             # move one WorD forward [override]
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
- `R*EBGDZ`: "RECTangle" for [Rectangle][]
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
- `W*UPBZ`: "**1**Password" for [1Password][]
- `WA*FZ`: "**WAVE**Link" for [WaveLink][]
- `WA*LZ`: "**WAL**ly" for [Wally][]
- `WHA*PZ`: "**WHAT**sAp**P**" for [WhatsApp][]

### Activate Application

These outlines "activate" (open) macOS applications and/or bring their main
window into focus in order to use them.

```yaml
"*EUPBLGZ": "{:COMMAND:APPLESCRIPT:activate application \"ImageOptim\"}"                              # IMAGEOptim
"A*EUPBGZ": "{:COMMAND:APPLESCRIPT:activate application \"Anki\"}"                                    # ANKi
"HA*BZ": "{:COMMAND:APPLESCRIPT:activate application \"Handbrake\"}"                                  # HAndBrake
"KP*BGZ": "{:COMMAND:APPLESCRIPT:activate application \"Xcode\"}"                                     # XCode
"KR-PL": "{:COMMAND:APPLESCRIPT:activate application \"Google Chrome\"}"                              # ChRoMe (brief)
"KRO*EPLZ": "{:COMMAND:APPLESCRIPT:activate application \"Google Chrome\"}"                           # CHROME
"KW*EUBGZ": "{:COMMAND:APPLESCRIPT:activate application \"Quicktime Player\"}"                        # QUICKTime Player
"KW*PLZ": "{:COMMAND:APPLESCRIPT:activate application \"QMK Toolbox\"}"                               # QMk toolbox
"KWRA*Z": "{:COMMAND:APPLESCRIPT:activate application \"Insomnia\"}"                                  # insomnIA
"O*BS": "{:COMMAND:APPLESCRIPT:activate application \"OBS\"}"                                         # OBS
"PH*RZ": "{:COMMAND:APPLESCRIPT:activate application \"Miro\"}"                                       # MiRo
"PHRO*FRZ": "{:COMMAND:APPLESCRIPT:activate application \"Plover\"}"                                  # PLOVER
"PO*EFBGZ": "{:COMMAND:APPLESCRIPT:activate application \"Postico\"}"                                 # POStiCo
"PO*EFPLZ": "{:COMMAND:APPLESCRIPT:activate application \"Postman\"}"                                 # POStMan
"PR*EFZ": "{:COMMAND:APPLESCRIPT:activate application \"System Preferences\"}"                        # System PREFerenceS
"PR-F": "{:COMMAND:APPLESCRIPT:activate application \"Preview\"}"                                     # PREVIEW
"PRAO*UFZ": "{:COMMAND:APPLESCRIPT:activate application \"Preview\"}"                                 # PREVIEW
"R*EBGDZ": "{:COMMAND:APPLESCRIPT:activate application \"Rectangle\"}"                                # RECtangle
"RA*URDZ": "{:COMMAND:APPLESCRIPT:activate application \"RecordIt\"}"                                 # RECORDIt
"S*PL": "{:COMMAND:APPLESCRIPT:activate application \"zoom.us\"}"                                     # ZooM
"SAO*PLZ": "{:COMMAND:APPLESCRIPT:activate application \"zoom.us\"}"                                  # ZOOM
"SHR*BG": "{:COMMAND:APPLESCRIPT:activate application \"Slack\"}"                                     # SLaCK (brief)
"SHR*Z": "{:COMMAND:APPLESCRIPT:activate application \"VLC\"}"                                        # VLc
"SHR-BG": "{:COMMAND:APPLESCRIPT:activate application \"Slack\"}"                                     # SLaCK (brief)
"SHRA*BGZ": "{:COMMAND:APPLESCRIPT:activate application \"Slack\"}"                                   # SLACK
"SK*EFPZ": "{:COMMAND:APPLESCRIPT:activate application \"Sketch\"}"                                   # SKETCH
"SK*EUFP": "{:COMMAND:APPLESCRIPT:activate application \"Skitch\"}"                                   # SKITCH
"SK*EUFPZ": "{:COMMAND:APPLESCRIPT:activate application \"Skitch\"}"                                  # SKITCH
"SK*FP": "{:COMMAND:APPLESCRIPT:activate application \"Skitch\"}"                                     # SKITCH
"SK-F": "{:COMMAND:APPLESCRIPT:activate application \"ScreenFlow\"}"                                  # SCREEnFlow
"SK-FP": "{:COMMAND:APPLESCRIPT:activate application \"Skitch\"}"                                     # SKITCH
"SKAO*EUP": "{:COMMAND:APPLESCRIPT:activate application \"Skype\"}"                                   # SKYPE
"SKAO*EUPZ": "{:COMMAND:APPLESCRIPT:activate application \"Skype\"}"                                  # SKYPE
"SKRAO*EFZ": "{:COMMAND:APPLESCRIPT:activate application \"ScreenFlow\"}"                             # SCREEnFlow
"SKWAO*EUZ": "{:COMMAND:APPLESCRIPT:activate application \"sqlitebrowser\"}"                          # SQLIte
"SO*PBGZ": "{:COMMAND:APPLESCRIPT:activate application \"Sonic Pi\"}"                                 # SONiC Pi
"SPO*FZ": "{:COMMAND:APPLESCRIPT:activate application \"Spotify\"}"                                   # SPOtiFy
"SPWHRAO*EUPLZ": "{:COMMAND:APPLESCRIPT:activate application \"Sublime Text\"}"                       # SUBLIME Text
"SR*FZ": "{:COMMAND:APPLESCRIPT:activate application \"Visual Studio Code\"}"                         # Visual Studio code
"SR*L": "{:COMMAND:APPLESCRIPT:activate application \"VLC\"}"                                         # VLc
"SR*PBZ": "{:COMMAND:APPLESCRIPT:activate application \"AWS VPN Client\"}"                            # VpN
"SR-L": "{:COMMAND:APPLESCRIPT:activate application \"VLC\"}"                                         # VLc
"STAO*EPLZ": "{:COMMAND:APPLESCRIPT:activate application \"Steam\"}"                                  # STEAM
"STO*RZ": "{:COMMAND:APPLESCRIPT:activate application \"App Store\"}"                                 # App STORE
"STP*R": "{:COMMAND:APPLESCRIPT:activate application \"Safari\"}"                                     # SaFaRi
"STPA*RZ": "{:COMMAND:APPLESCRIPT:activate application \"Safari\"}"                                   # SaFARi [override]
"T*EDZ": "{:COMMAND:APPLESCRIPT:activate application \"TextEdit\"}"                                   # TextEDit
"T*ERPBLZ": "{:COMMAND:APPLESCRIPT:activate application \"Terminal\"}"                                # TERMINAL
"T*ERPLZ": "{:COMMAND:APPLESCRIPT:activate application \"iTerm\"}"                                    # iTERM
"T*FZ": "{:COMMAND:APPLESCRIPT:activate application \"TV\"}"                                          # TV
"T-RL": "{:COMMAND:APPLESCRIPT:activate application \"Trello\"}"                                      # TReLLo
"T-RPL": "{:COMMAND:APPLESCRIPT:activate application \"iTerm\"}"                                      # iTeRM (brief)
"TK*EBGZ": "{:COMMAND:APPLESCRIPT:activate application \"Deckset\"}"                                  # DECKset
"TK*GS": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/activate/dictation.scpt}" # DictaTION
"TK-RD": "{:COMMAND:APPLESCRIPT:activate application \"Discord\"}"                                    # DiscoRD (brief)
"TKAO*PL": "{:COMMAND:APPLESCRIPT:activate application \"GZDoom\"}"                                   # gzDOOM (brief)
"TKO*RDZ": "{:COMMAND:APPLESCRIPT:activate application \"Discord\"}"                                  # DiscORD
"TKPWRA*FLZ": "{:COMMAND:APPLESCRIPT:activate application \"GraphiQL\"}"                              # GRAPHiqL
"TKPWRA*FPZ": "{:COMMAND:APPLESCRIPT:activate application \"GraphQL Playground\"}"                    # GRAPHql Playground
"TP*F": "{:COMMAND:APPLESCRIPT:activate application \"Firefox\"}"                                     # FireFox
"TPAO*EUFZ": "{:COMMAND:APPLESCRIPT:activate application \"Firefox\"}"                                # FIreFox
"TPH*GS": "{:COMMAND:APPLESCRIPT:activate application \"Notion\"}"                                    # NOTION (brief)
"TPHO*EGSZ": "{:COMMAND:APPLESCRIPT:activate application \"Notion\"}"                                 # NOTION
"TPRA*FZ": "{:COMMAND:APPLESCRIPT:activate application \"Photos\"}"                                   # PHOTO(GRAPHS)
"TR*EL": "{:COMMAND:APPLESCRIPT:activate application \"Trello\"}"                                     # TReLLo
"TR*ELZ": "{:COMMAND:APPLESCRIPT:activate application \"Trello\"}"                                    # TRELLo
"TR*GSZ": "{:COMMAND:APPLESCRIPT:activate application \"Transmission\"}"                              # TRansmiSSION
"TR*L": "{:COMMAND:APPLESCRIPT:activate application \"Trello\"}"                                      # TReLLo
"TR-L": "{:COMMAND:APPLESCRIPT:activate application \"Trello\"}"                                      # TReLLo
```

### Focus Application

For Plover and Finder, because no steno strokes are going to be listened for if
they are not activated already, a stroke can only be used to bring it, and all
its other windows, to the front.

```yaml
"PHR-FR": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/focus/plover.scpt}" # PLoVeR (brief) [override]
"TP*R": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/focus/finder.scpt}"   # FindeR
"TP*RZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/focus/finder.scpt}"  # FindeR
```

### Re-open Application

Some applications require both activation _and_ focus.

```yaml
"1*7": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/1password.scpt}"          # 1Password
"A*PLZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/activity-monitor.scpt}" # Activity Monitor
"KAO*EBZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/keybase.scpt}"        # KEYBase
"TK*RB": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/dash.scpt}"             # DASH [override]
"TKA*RBZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/dash.scpt}"           # DASH
"W*UPBZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/1password.scpt}"       # 1password
"W-FL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/wave-link.scpt}"         # WaVeLink
"WA*FZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/wave-link.scpt}"        # WAVELink
"WA*LZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/wally.scpt}"            # WALly
"WHA*PZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/reopen/whats-app.scpt}"       # WHATsApP
```

### Open Web Application

These outlines open a web-based application (with Google Chrome) using its URL.

```yaml
"A*PBZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-analytics.scpt}"     # ANalytics
"H*BS": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/hubspot.scpt}"               # HUBspoT
"H*UBS": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/hubspot.scpt}"              # HUBSpot
"H*UBT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/hubspot.scpt}"              # HUBspoT
"H-BS": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/hubspot.scpt}"               # HUBspoT
"HR*BGD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/linkedin.scpt}"            # LinKeDin
"HR*EUPBD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/linkedin.scpt}"          # LINkeDin
"KA*L": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-calendar.scpt}"       # CALENDAR [override]
"KHR*ERPBD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-calendar.scpt}"  # CALENDAR
"KP*FPL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/exercism.scpt}"            # EXerciSM
"KWR*T": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/youtube.scpt}"              # YouTube
"KWR*TS": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/youtube-studio.scpt}"      # YouTube Studio
"PHA*EUL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-mail.scpt}"        # MAIL
"PHAO*EP": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/meetup.scpt}"             # MEEtuP
"PHRA*PBL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/platinum-steno.scpt}"    # PLAtiNuM (steno)
"PHRA*PLT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/platinum-steno.scpt}"    # PLATinuM (steno)
"PWO*BZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/bob.scpt}"                 # BoB
"PWHR*G": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/blog.scpt}"                # BLoG
"PWHR-G": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/blog.scpt}"                # BLoG [override]
"R*ETD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/reddit.scpt}"               # REDDiT [override]
"R*TD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/reddit.scpt}"                # ReDDiT
"SH*TS": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-sheets.scpt}"        # (google) SHeeTS
"SH-TS": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-sheets.scpt}"        # (google) SHeeTS
"SK*L": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-search-console.scpt}" # search ConSoLe [override]
"SKHRO*UD": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/soundcloud.scpt}"        # SoundCLOUD
"ST-FR": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/stackoverflow.scpt}"        # STack oVeRflow
"STA*UFR": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/stackoverflow.scpt}"      # STAck OVeRflow
"STO*EFR": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/stackoverflow.scpt}"      # STAck OVeRflow
"STR*F": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/strava.scpt}"               # STRaVa
"STR-F": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/strava.scpt"                # STRaVa
"TAO*EUPT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/typey-type.scpt}"        # TYPEy-type
"TAO*EUPZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/typey-type.scpt}"        # TYPEy-type
"TK-FBG": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/disqus.scpt}"              # DiSQus admin
"TKO*BGSZ": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-docs.scpt}"       # (google) DOCS
"TKPW*PT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/chat-gpt.scpt}"           # chat GPT
"TKPW*UB": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/github.scpt}"             # GithUB [override]
"TKPW-PT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/chat-gpt.scpt}"           # chat GPT
"TKPWR*P": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/grip.scpt}"               # GRiP
"TKPWR-P": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/grip.scpt}"               # GRiP
"TKPWRA*PL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/instagram.scpt}"        # instaGRAM [override]
"TKR*F": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-drive.scpt}"         # (google) DRiVe
"TKR-F": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/google-drive.scpt}"         # (google) DRiVe
"TP*B": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/facebook.scpt}"              # FaceBook [override]
"TW*RT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/twitter.scpt}"              # TWiTTeR
"TW-RT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/web/twitter.scpt}"              # TWiTTeR
```

### Application Shortcut

These outlines are just shortcuts for application functionality.

```yaml
"A*FRL": "{#ALT(SPACE)}"                                                                                  # ALFRed
"AFRLD": "{#ALT(SPACE)}{^^}"                                                                              # ALFRed
"PW-RD": "{#SUPER(BACKSLASH)}"                                                                            # Fill login or show 1PassWoRD (⌘\)
"SR*EUZ": "{#SHIFT(SUPER(SPACE))}"                                                                        # diVVY
"TKAO*PLT": "{:COMMAND:SHELL:zsh -ci '$STENO_DICTIONARIES/src/command/application/open-doom-typist.sh'}"  # gzDOOM Typist (brief)
"TKAOPLT": "{:COMMAND:SHELL:zsh -ci '$STENO_DICTIONARIES/src/command/application/open-doom-typist.sh'}"   # gzDOOM Typist (brief)
"TKO*EUF": "{#SHIFT(SUPER(SPACE))}"                                                                       # diVVY
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
"SP-Z": "{#SHIFT(R)}"             # reset SPeeD (video speed controller chrome extension)
"TKPWA*R": "{#SUPER(L)}"          # ADDress BAR (⌘L)
"TAO*LS": "{#SUPER(ALT(I))}"      # (developer) TOOLS (⌘⌥I)
```

## Chat

Commands to specifically wrap around [Discord][], [Slack][], [Google Meet][],
and [Zoom][] shortcuts.

```yaml
"KA*UL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/start-call.scpt}"                        # start CALL
"KH*T": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/toggle-chat.scpt}"                        # toggle CHaT
"KHA*T": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/toggle-chat.scpt}"                       # toggle CHAT
"KHAL": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/browse-channels.scpt}"                    # browse CHAnneLs
"P*RP": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/toggle-participants.scpt}"                # toggle PaRticiPants
"PH*BG": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/toggle-microphone.scpt}"                 # toggle MiCrophone
"PH*EPBLG": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/compose-new-message.scpt}"            # compose new MEssaGE
"PH-PBLG": "{#ALT(SHIFT(DOWN))}"                                                                              # (Discord, Slack) jump to next unread channel or direct MessaGe (⌥⇧↓) [override emergency]
"PH*PBLG": "{#ALT(SHIFT(UP))}"                                                                                # (Discord, Slack) jump to previous unread channel or direct MessaGe (⌥⇧↓)
"PR*EPBLG": "{#ALT(SHIFT(UP))}"                                                                               # (Discord, Slack) jump to PREvious unread channel or direct messaGe (⌥⇧↑)
"PR*P": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/toggle-participants.scpt}"                # toggle PaRticiPants
"PR*PBLG": "{#ALT(SHIFT(UP))}"                                                                                # (Discord, Slack) jump to PRevious unread channel or direct messaGe (⌥⇧↑)
"PWROUFP": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/browse-channels.scpt}"                 # BROWse CHannels
"S*FRPB": "{#SUPER(F)}"                                                                                       # (Discord, Slack) SeaRCH current conversation (⌘F)
"SKUTS": "{#SUPER(SLASH)}"                                                                                    # (Discord, Slack) toggle ShortCUTS (⌘/)
"SKWR-PL": "{#SUPER(K)}"                                                                                      # (Discord, Slack) JuMP to a conversation/open discord quick switcher (⌘K)
"SR*D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/toggle-video.scpt}"                       # toggle ViDeo [override]
"THR*EDZ": "{#SUPER(SHIFT(T))}"                                                                               # (Slack) open the THREADS view (⌘⇧T)
"TPH*EPBLG": "{#ALT(SHIFT(DOWN))}"                                                                            # (Discord, Slack) jump to NExt unread channel or direct messaGe (⌥⇧↓)
"TPH*EPLG": "{#ALT(SHIFT(UP))}"                                                                               # (Discord, Slack) jump to previous (backwards NExt) unread channel or direct MeSSage (⌥⇧↑)
"TPH*PBLG": "{#ALT(SHIFT(UP))}"                                                                               # (Discord, Slack) jump to previous (backwards NExt) unread channel or direct messaGe (⌥⇧↑)
"TPH*PBLG/TPH*PBLG": "{#ALT(SHIFT(UP))}"                                                                      # (Discord, Slack) jump to previous (backwards NExt) unread channel or direct messaGe (⌥⇧↑) [override New Jersey]
"TPH*UPBLG": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/compose-new-message.scpt}"           # compose NEW messaGE
"TPH-PBLG": "{#ALT(SHIFT(DOWN))}"                                                                             # (Discord, Slack) jump to NExt unread channel or direct messaGe (⌥⇧↓) [override engine]
"TPHEPLS": "{#ALT(SHIFT(DOWN))}"                                                                              # (Discord, Slack) jump to NExt unread channel or direct MeSSage (⌥⇧↓)
"TPHR*D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/oldest-unread-channel-message.scpt}"    # jump to oldest uNReaD message in channel
"TPHR-D": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/oldest-unread-channel-message.scpt}"    # jump to oldest uNReaD message in channel
"TPHR-PBLG": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/chat/oldest-unread-channel-message.scpt}" # jump to oldest uNRead messaGe in channel
"TPHRA*ED": "{#SUPER(SHIFT(A))}"                                                                              # (Discord, Slack) open the all uNREAD view (⌘⇧A)
"TPHRAED": "{#SUPER(SHIFT(A))}"                                                                               # (Discord, Slack) open the all uNREAD view (⌘⇧A)
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
"PA*B": "{#TAB}{^^}"                # (p)AB: A misstroke I have with TAB
"PA*US": "{#AUDIOPAUSE}"            # (audio) PAUSE
"PHAO*UT": "{#AUDIOMUTE}"           # (audio) MUTE
"PHRA*EU": "{#AUDIOPLAY}"           # (audio) PLAY
"PW*F": "{#BACKSPACE}"              # BackSpace (⌫)
"PW*R": "{#DELETE}"                 # foRward Backspace (delete) (⌦)
"PW-FP": "{#BACKSPACE}"             # BackSPace (⌫)
"PWRO*EUT": "{#MONBRIGHTNESSDOWN}"  # BRIGHTness (down)
"PWROEUT": "{#MONBRIGHTNESSUP}"     # BRIGHTness (up)
"SK-P": "{#ESCAPE}{MODE:RESET}{^}"  # eSCaPe (⎋)
"SKWREPBD": "{#END}"                # (j)END (END ↘)
"SKWROEPL": "{#HOME}"               # (j)OME (HOME ↖)
"SP-B": "{#SPACE}"                  # SPace Bar (␣)
"SRO*PL": "{#AUDIOLOWERVOLUME}"     # VOluMe (down)
"SROPL": "{#AUDIORAISEVOLUME}"      # VOluMe (up)
"TA*B": "{#TAB}{^^}"                # TAB
"TA*RB": "{#TAB}{^^}"               # tA(r)B: A misstroke I have with TAB
"TK-L": "{#DELETE}"                 # DeLete (⌦)
"TPA*B": "{#TAB}{^^}"               # T(p)AB: A misstroke I have with TAB
"TPH*EGT": "{#AUDIONEXT}"           # (audio) NEXT
```

## Command/Control Modifiers

Follows on from, and follows the conventions of entries in
[Di's `modifiers-single-stroke.json` dictionary][].

- The outlines for Command-<number> modifiers use the `*RPLT` key pattern for
  <kbd>⌘</kbd><kbd>0</kbd>-<kbd>5</kbd>, and the mirrored version of that
  pattern, `STPR*`, for <kbd>⌘</kbd><kbd>6</kbd>-<kbd>9</kbd>.
- [Plover Platform Specific Translation][] plugin needed in order to use
  outlines that contain multiple platform (OS) specific translations in a single
  outline definition (see examples that start with `:PLATFORM` below)

### Command-Modifiers

```yaml
"*6": "{#SUPER(6)}"                                       # ⌘6
"*7": "{#SUPER(7)}"                                       # ⌘7
"*8": "{#SUPER(8)}"                                       # ⌘8
"0*R789": "{#SUPER(0)}"                                   # ⌘0
"0R789": "{#SUPER(0)}"                                    # ⌘0
"1*": "{#SUPER(1)}"                                       # ⌘1
"1*6789": "{#SUPER(1)}"                                   # ⌘1
"1*R789": "{#SUPER(1)}"                                   # ⌘1
"1-R789": "{#SUPER(1)}"                                   # ⌘1
"1234*6": "{#SUPER(6)}"                                   # ⌘6
"1234*7": "{#SUPER(7)}"                                   # ⌘7
"1234*8": "{#SUPER(8)}"                                   # ⌘8
"1234*9": "{#SUPER(9)}"                                   # ⌘9
"123R*6": "{#SUPER(6)}"                                   # ⌘6
"123R*7": "{#SUPER(7)}"                                   # ⌘7
"123R*8": "{#SUPER(8)}"                                   # ⌘8
"123R*9": "{#SUPER(9)}"                                   # ⌘9
"123R-6": "{#SUPER(6)}"                                   # ⌘6
"123R-7": "{#SUPER(7)}"                                   # ⌘7
"123R-8": "{#SUPER(8)}"                                   # ⌘8
"123R-9": "{#SUPER(9)}"                                   # ⌘9
"2*": "{#SUPER(2)}"                                       # ⌘2
"2*6789": "{#SUPER(2)}"                                   # ⌘2
"2*R789": "{#SUPER(2)}"                                   # ⌘2
"2-R789": "{#SUPER(2)}"                                   # ⌘2
"3*": "{#SUPER(3)}"                                       # ⌘3
"3*6789": "{#SUPER(3)}"                                   # ⌘3
"3*R789": "{#SUPER(3)}"                                   # ⌘3
"3-R789": "{#SUPER(3)}"                                   # ⌘3
"4*": "{#SUPER(4)}"                                       # ⌘4
"4*6789": "{#SUPER(4)}"                                   # ⌘4
"4*R789": "{#SUPER(4)}"                                   # ⌘4
"4-R789": "{#SUPER(4)}"                                   # ⌘4
"5*": "{#SUPER(5)}"                                       # ⌘5
"5*6789": "{#SUPER(5)}"                                   # ⌘5
"5*R789": "{#SUPER(5)}"                                   # ⌘5
"5-R789": "{#SUPER(5)}"                                   # ⌘5
"KPH*B": "{:PLATFORM:MAC:#SUPER(B):OTHER:#CONTROL(B)}"    # CoMMand-B (⌘B)
"KPH*BG": "{:PLATFORM:MAC:#SUPER(K):OTHER:#CONTROL(K)}"   # CoMMand-K (⌘K)
"KPH*D": "{:PLATFORM:MAC:#SUPER(D):OTHER:#CONTROL(D)}"    # CoMMand-D (⌘D)
"KPH*E": "{:PLATFORM:MAC:#SUPER(E):OTHER:#CONTROL(E)}"    # CoMMand-E (⌘E)
"KPH*EU": "{:PLATFORM:MAC:#SUPER(I):OTHER:#CONTROL(I)}"   # CoMMand-I (⌘I)
"KPH*F": "{:PLATFORM:MAC:#SUPER(V):OTHER:#CONTROL(V)}"    # CoMMand-V (⌘V)
"KPH*G": "{:PLATFORM:MAC:#SUPER(G):OTHER:#CONTROL(G)}"    # CoMMand-G (⌘G)
"KPH*L": "{:PLATFORM:MAC:#SUPER(L):OTHER:#CONTROL(L)}"    # CoMMand-L (⌘L)
"KPH*P": "{:PLATFORM:MAC:#SUPER(P):OTHER:#CONTROL(P)}"    # CoMMand-P (⌘P)
"KPH*PB": "{:PLATFORM:MAC:#SUPER(N):OTHER:#CONTROL(N)}"   # CoMMand-N (⌘N)
"KPH*PBLG": "{:PLATFORM:MAC:#SUPER(J):OTHER:#CONTROL(J)}" # CoMMand-J (⌘J)
"KPH*PL": "{:PLATFORM:MAC:#SUPER(M):OTHER:#CONTROL(M)}"   # CoMMand-M (⌘M)
"KPH*R": "{:PLATFORM:MAC:#SUPER(R):OTHER:#CONTROL(R)}"    # CoMMand-R (⌘R)
"KPH*S": "{:PLATFORM:MAC:#SUPER(S):OTHER:#CONTROL(S)}"    # CoMMand-T (⌘S)
"KPH*T": "{:PLATFORM:MAC:#SUPER(T):OTHER:#CONTROL(T)}"    # CoMMand-T (⌘T)
"KPH*U": "{:PLATFORM:MAC:#SUPER(U):OTHER:#CONTROL(U)"     # CoMMand-U (⌘U)
"KPH*Z": "{:PLATFORM:MAC:#SUPER(Z):OTHER:#CONTROL(Z)}"    # CoMMand-Z (⌘Z)
"KPH-B": "{:PLATFORM:MAC:#SUPER(B):OTHER:#CONTROL(B)}"    # CoMMand-B (⌘B)
"KPH-BG": "{:PLATFORM:MAC:#SUPER(C):OTHER:#CONTROL(C)}"   # CoMMand-C (⌘C)
"KPH-D": "{:PLATFORM:MAC:#SUPER(D):OTHER:#CONTROL(D)}"    # CoMMand-D (⌘D)
"KPH-F": "{:PLATFORM:MAC:#SUPER(F):OTHER:#CONTROL(F)}"    # CoMMand-F (⌘F)
"KPH-G": "{:PLATFORM:MAC:#SUPER(G):OTHER:#CONTROL(G)}"    # CoMMand-G (⌘G)
"KPH-P": "{:PLATFORM:MAC:#SUPER(P):OTHER:#CONTROL(P)}"    # CoMMand-P (⌘P)
"KPH-PB": "{:PLATFORM:MAC:#SUPER(N):OTHER:CONTROL(N)}"    # CoMMand-N (⌘N)
"KPH-PBLG": "{:PLATFORM:MAC:#SUPER(J):OTHER:CONTROL(J)}"  # CoMMand-J (⌘J)
"KPH-PL": "{:PLATFORM:MAC:#SUPER(M):OTHER:#CONTROL(M)}"   # CoMMand-M (⌘M)
"KPH-R": "{:PLATFORM:MAC:#SUPER(R):OTHER:#CONTROL(R)}"    # CoMMand-R (⌘R)
"KPH-S": "{:PLATFORM:MAC:#SUPER(S):OTHER:#CONTROL(S)}"    # CoMMand-S (⌘S)
"KPH-Z": "{:PLATFORM:MAC:#SUPER(Z):OTHER:#CONTROL(Z)}"    # CoMMand-Z (⌘Z)
"KPHA*": "{:PLATFORM:MAC:#SUPER(A):OTHER:#CONTROL(A)}"    # CoMMand-A (⌘A)
"KPHO": "{:PLATFORM:MAC:#SUPER(O):OTHER:#CONTROL(O)}"     # CoMMand-O (⌘O)
"KPHO*": "{:PLATFORM:MAC:#SUPER(O):OTHER:#CONTROL(O)}"    # CoMMand-O (⌘O)
"KPHU": "{:PLATFORM:MAC:#SUPER(U):OTHER:#CONTROL(U)}"     # CoMMand-U (⌘U)
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
"KW-RT": "{#CONTROL(SHIFT(R))}"                                             # japanese input reConVeRT
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
"STPH*": "{#LEFT}{^^}"           # vim-left (←) [override]
"STPH-B": "{#UP}{^^}"            # vim-up (↑)
"STPH-G": "{#RIGHT}{^^}"         # vim-right (→)
"STPH-R": "{#DOWN}{^^}"          # vim-down (↓)
"T*B": "{#SHIFT(TAB)}{^^}"       # reverse TaB [override]
```

## Personal

These outlines have outputs that are really only applicable to
the author of this repo, personally, but the outline concept itself is
potentially worth sharing.

I use the [Plover Local Env Var][] plugin to be able to use semi-private
information in an outline value while still being able to share the outline
itself in this dictionary. All these environment variables are managed using
[direnv][].

```yaml
"AOURS/AOURS": "{:ENV_VAR:$USERNAME}"             # USERname
"HREUPBD/HREUPBD": "{:ENV_VAR:$LINKEDIN}"         # LINkeDin
"KWRAOUB/KWRAOUB": "{:ENV_VAR:$YOUTUBE}"          # YOUtuBe
"KWRAOUT/KWRAOUT": "{:ENV_VAR:$YOUTUBE}"          # YOUTube
"PHAEUL/PHA*EUL": "{:ENV_VAR:$EMAIL2}"            # eMAIL
"PHAEUL/PHAEUL": "{:ENV_VAR:$EMAIL}"              # eMAIL
"PHOEBL/PHO*EBL": "{:ENV_VAR:$MOBILE_NUMBER2}"    # MOBILE
"PHOEBL/PHOEBL": "{:ENV_VAR:$MOBILE_NUMBER}"      # MOBILE
"STOEFRL/STOEFRL": "{:ENV_VAR:$STACK_OVERFLOW}"   # STack OVeRfLow
"STRO*EUF/STRO*EUF": "{:ENV_VAR:$STRAVA}"         # STRaVa
"TKA*EUB/TKA*EUB": "{:ENV_VAR:$DATE_OF_BIRTH3}"   # DATe of Birth
"TKAEUB/TKA*EUB": "{:ENV_VAR:$DATE_OF_BIRTH2}"    # DATe of Birth
"TKAEUB/TKAEUB": "{:ENV_VAR:$DATE_OF_BIRTH1}"     # DATe of Birth
"TKPWRAPL/TKPWRA*PL": "{:ENV_VAR:$INSTAGRAM_URL}" # instaGRAM url
"TKPWRAPL/TKPWRAPL": "{:ENV_VAR:$INSTAGRAM}"      # instaGRAM
"TKPWUB/TKPWUB": "{:ENV_VAR:$GITHUB}"             # GithUB
"TKR*ES/TKR*ES": "{:ENV_VAR:$ADDRESS}"            # ADDRESS
"TPHAEUPL/TPHA*EUPL": "{:ENV_VAR:$NAME2}"         # NAME
"TPHAEUPL/TPHAEUPL": "{:ENV_VAR:$NAME}"           # NAME
"TPOEPB/TPO*EPB": "{:ENV_VAR:$MOBILE_NUMBER2}"    # PHONE
"TPOEPB/TPOEPB": "{:ENV_VAR:$MOBILE_NUMBER}"      # PHONE
"TWEURT/TW*EURT": "{:ENV_VAR:$TWITTER_URL}"       # TWITTeR url
"TWEURT/TWEURT": "{:ENV_VAR:$TWITTER}"            # TWITTeR
"WEB/WEB": "{:ENV_VAR:$WEBSITE}"                  # WEBsite
"WORBG/PHA*EUL": "{:ENV_VAR:$EMAIL3}"             # WORK eMAIL
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
- Some code case entries lifted from [Ben's programming dictionary][]

```yaml
"#": "{*+}"                                                   # =REPEAT_LAST_STROKE
"#*": "{*}"                                                   # =RETROSPECTIVE_TOGGLE_ASTERISK
"*UPD": "{*<}"                                                # {:RETRO_CASE:UPPER_FIRST_WORD}
"*URP": "{<}"                                                 # {:CASE:UPPER_FIRST_WORD}
"/HR-BGS": "{MODE:RESET}{^ ^}{MODE:LOWERCASE}"                # LowerCaSe (explicit space)
"/K-BGS": "{MODE:RESET}{^ ^}{MODE:CAMEL}"                     # CamelCaSe (explicit space)
"/KP-BGS": "{MODE:RESET}{^ ^}{MODE:CAMEL}{-|}"                # CaPital camelCaSe (explicit space)
"/KPW-BGS": "{MODE:RESET}{^ ^}{MODE:LOWER}{MODE:SET_SPACE:-}" # KeBabCaSe (explicit space)
"/S-BGS": "{MODE:RESET}{^ ^}{MODE:SNAKE}"                     # SnakeCaSe (explicit space) [override]
"/SKR-BGS": "{MODE:RESET}{^ ^}{MODE:CAPS}{MODE:SET_SPACE:_}"  # SCReaming snakeCaSe (explicit space) [override]
"/SKWR-BGS": "{MODE:RESET}{^ ^}{MODE:SET_SPACE:}"             # JoinCaSe (explicit space)
"/STPH-BGS": "{MODE:RESET}{^ ^}{MODE:SNAKE}"                  # SnakeCaSe (explicit space)
"AFPS": "{*?}"                                                # =RETROSPECTIVE_INSERT_SPACE
"HR*BGS": "{^}{MODE:RESET}{MODE:LOWER}"                       # LowerCaSe (attach previous output)
"HR-BGS": "{MODE:RESET}{MODE:LOWER}"                          # LowerCaSe [override]
"HRO*ER": "{>}"                                               # {:CASE:LOWER_FIRST_CHAR}
"HRO*ERD": "{*>}"                                             # {:RETRO_CASE:LOWER_FIRST_CHAR}
"HRO*ERZ": "{MODE:LOWER}"
"K*BGS": "{^}{MODE:RESET}{MODE:CAMEL}"                        # CamelCaSe (attach previous output)
"K*EB": "{MODE:LOWER}{MODE:SET_SPACE:-}"                      # KEBab case
"K-BGS": "{MODE:RESET}{MODE:CAMEL}"                           # CamelCaSe
"KA*PD": "{*-|}"                                              # {:RETRO_CASE:CAP_FIRST_WORD}
"KA*PZ": "{MODE:CAPS}"
"KP*BGS": "{^}{MODE:RESET}{MODE:CAMEL}{-|}"                   # CaPital camelCaSe (attach previous output)
"KP-BGS": "{MODE:RESET}{MODE:CAMEL}{-|}"                      # CaPital camelCaSe
"KPA*D": "{*-|}"                                              # {:RETRO_CASE:CAP_FIRST_WORD}
"KPA*L": "{<}"                                                # {:CASE:UPPER_FIRST_WORD}
"KPAD": "{*-|}"                                               # {:RETRO_CASE:CAP_FIRST_WORD}
"KPH*EL": "{MODE:CAMEL}"                                      # CaMEL
"KPH-L": "{MODE:CAMEL}"                                       # CaMeL
"KPHA*PLD": "{MODE:SET_SPACE:, }"                             # CoMMA list
"KPHAEUFT": "{MODE:SET_SPACE:, }"                             # CoMMA lIST
"KPW*BGS": "{^}{MODE:RESET}{MODE:LOWER}{MODE:SET_SPACE:-}"    # KeBabCaSe (attach previous output)
"KPW-BGS": "{MODE:RESET}{MODE:LOWER}{MODE:SET_SPACE:-}"       # KeBabCaSe
"KPWA*B": "{MODE:LOWER}{MODE:SET_SPACE:-}"                    # KeBAB case
"KW-BG": "{*}"                                                # =RETROSPECTIVE_TOGGLE_ASTERISK
"PHOEPBLG": "{:EMOJI}"                                        # for plover-emoji plugin
"PHR*UP": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/focus/plover.scpt}{:COMMAND:ADD_TRANSLATION}" # PLover lookUP (add translation is a better lookup for specifics)
"PHRAEUP": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/focus/plover.scpt}{#SUPER(T)}"               # PLover tAPE
"PHRO*ED": "{:COMMAND:SET_CONFIG}"                            # PLOver relOAD
"PHRO*F": "{:COMMAND:SUSPEND}"                                # PLOver oFF
"PHRO*PB": "{:COMMAND:RESUME}"                                # PLOver oN
"PHROED": "{:COMMAND:SET_CONFIG}"                             # PLOver relOAD
"PHROFBGS": "{:COMMAND:FOCUS}"                                # PLOver FoCuS
"PHROFG": "{:COMMAND:CONFIGURE}"                              # PLOver conFiGure
"PHROLG": "{:COMMAND:TOGGLE}"                                 # PLOver toGGLe
"PHRUP": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/application/focus/plover.scpt}{:COMMAND:LOOKUP}"           # PLover lookUP
"PW*FP": "{*!}"                                               # =RETROSPECTIVE_DELETE_SPACE
"R*BGS": "{MODE:RESET}{^}"                                    # Reset CaSe (suppress next space)
"R-BGS": "{MODE:RESET}"                                       # Reset CaSe
"R-FDZ": "{MODE:RESET_CASE}"                                  # ReSet caSe
"R-FT": "{MODE:RESET}"                                        # ReSeT
"R-FTS": "{MODE:RESET_SPACE}"                                 # ReSeT Space
"R-R": "{^~|\\n^}{MODE:RESET}"                                # Friendly command name does not work...
"RA*U": "{:COMMAND:SOLO_DICT:+commands.md}"                   # RAW steno
"RA*UF": "{:COMMAND:END_SOLO_DICT}"                           # RAW steno oFF
"S*BGS": "{^}{MODE:RESET}{MODE:SNAKE}"                        # SnakeCaSe (attach previous output) [override]
"S-BGS": "{MODE:RESET}{MODE:SNAKE}"                           # SnakeCaSe [override]
"SK-PBT": "{MODE:RESET}{MODE:CAPS}{MODE:SET_SPACE:_}"         # SCreaming snakecase [override]
"SKR*BGS": "{^}{MODE:RESET}{MODE:CAPS}{MODE:SET_SPACE:_}"     # SCReaming snakeCaSe (attach previous output)
"SKR-BGS": "{MODE:RESET}{MODE:CAPS}{MODE:SET_SPACE:_}"        # SCReaming snakeCaSe [override]
"SKWR*BGS": "{^}{MODE:RESET}{MODE:SET_SPACE:}"                # JoinCaSe (attach previous output)
"SKWR-BGS": "{MODE:RESET}{MODE:SET_SPACE:}"                   # JoinCaSe
"SKWRAURBGS": "{^\\n\\n^}{-|}"
"SP*S": "{*?}"                                                # =RETROSPECTIVE_INSERT_SPACE [override]
"STPH-BG": "{MODE:SNAKE}"                                     # SNaKe
"STPH-BGS": "{MODE:RESET}{MODE:SNAKE}"                        # SNakeCaSe
"STPHA*EUBG": "{MODE:SNAKE}"                                  # SNAKE
"STPHA*EUBGS": "{MODE:CAPS}{MODE:SET_SPACE:_}"                # Screaming SNAKE
"T-BGS": "{MODE:TITLE}"                                       # TiTLe [override]
"T-P": "{#SHIFT(CONTROL(ALT(SUPER(T))))}"                     # open TaPey TaPe iterm hotkey window
"TAO*EULZ": "{MODE:TITLE}"                                    # TItLe
"TK-FPGS": "{*!}"                                             # =RETROSPECTIVE_DELETE_SPACE
"TK-FPS": "{*!}"                                              # =RETROSPECTIVE_DELETE_SPACE
"TKA*RB": "{MODE:LOWER}{MODE:SET_SPACE:-}"                    # DASHerize
```

## Switching

Commands for applications like web browsers or terminals, where there there can
be panes within tabs within multiple windows.

```yaml
"1*G": "{#CONTROL(A) 1}"                                                                         # switch to tmux window 1
"2*G": "{#CONTROL(A) 2}"                                                                         # switch to tmux window 2
"3*G": "{#CONTROL(A) 3}"                                                                         # switch to tmux window 3
"4*G": "{#CONTROL(A) 4}"                                                                         # switch to tmux window 4
"5*G": "{#CONTROL(A) 5}"                                                                         # switch to tmux window 5
"K*6": "{#CONTROL(A) 6}"                                                                         # switch to tmux window 6
"K*7": "{#CONTROL(A) 7}"                                                                         # switch to tmux window 7
"K*8": "{#CONTROL(A) 8}"                                                                         # switch to tmux window 8
"K*9": "{#CONTROL(A) 9}"                                                                         # switch to tmux window 9
"KHROED": "{#SHIFT(SUPER(W))}"                                                                   # CLOse winDow (⇧⌘W)
"KHROET": "{#SUPER(W)}"                                                                          # CLOse Tab (⌘W)
"PRA*B": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/tabbing/move-tab-previous.scpt}" # (move current tab to) PRevious tAB
"STPH*UD": "{#SHIFT(SUPER(N))}"                                                                  # NEW incognito winDow
"STPHR*T": "{#CONTROL(A) SHIFT(PERCENT)}"                                                        # SPLiT Tmux pane (vertical)
"STPHR-T": "{#CONTROL(A) SHIFT(QUOTEDBL)}"                                                       # SPLiT Tmux pane (horizontal)
"SW*D": "{#SHIFT(SUPER(ASCIITILDE))}"                                                            # SWitch winDow (backward) (⇧⌘~)
"SW*P": "{#SHIFT(SUPER(TAB))}{^}"                                                                # SWitch aPP (backward) (⇧⌘⇥)
"SW*T": "{#SHIFT(SUPER(BRACKETLEFT))}"                                                           # SWitch Tab (backward) (⇧⌘[)
"SW*TD": "{#CONTROL(A H)}"                                                                       # SWitch Tmux winDow (backward)
"SW-D": "{#SUPER(ASCIITILDE)}"                                                                   # SWitch winDow (⌘~)
"SW-P": "{#SUPER(TAB)}{^}"                                                                       # SWitch aPP (⌘⇥)
"SW-T": "{#SHIFT(SUPER(BRACKETRIGHT))}"                                                          # SWitch Tab (⇧⌘])
"SW-TD": "{#CONTROL(A L)}"                                                                       # SWitch Tmux winDow
"TA*BT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/tabbing/move-tab-previous.scpt}" # (move current TAB to) previous Tab
"TABT": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/tabbing/move-tab-next.scpt}"      # (move current TAB to) next Tab
"TPH*UD": "{#SUPER(N)}"                                                                          # NEW winDow
"TPH*UDZ": "{#SHIFT(SUPER(N))}"                                                                  # NEW incognito winDow
"TPH*UPT": "{#SUPER(T) SUPER(V) RETURN}"                                                         # NEW Tab and Paste
"TPH*UT": "{#SUPER(T)}"                                                                          # NEW Tab
"TPH*UTD": "{#CONTROL(A) C}"                                                                     # NEW Tmux winDow
"TPHA*B": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/tabbing/move-tab-next.scpt}"    # (move current tab to) Next tAB
```

## Vim

Commands specifically for use in [Vim][].

Some of the outlines just wrap around keyboard shortcuts (which may assume the
existence of certain plugins), while others input [Vimscript][] snippets to be
executed.

```yaml
"H*RZ": "{#CONTROL(W) SHIFT(COMMA)}"                                                                                  # Decrease current NERDTree window width (HoRiZontal) by 1
"H-RZ": "{#CONTROL(W) SHIFT(PERIOD)}"                                                                                 # Increase current NERDTree window width (HoRiZontal) by 1
"K*URPL": "{#ESCAPE SHIFT(COLON)}{^set cursorcolumn!^}{#RETURN}"                                                      # toggle CURsor coluMn
"KHA*G": "{#C I T}{^^}"                                                                                               # CHange (inside) tAG
"KHAG": "{#C I T}{^^}"                                                                                                # CHange (inside) tAG
"KHO*ET": "{#C I SHIFT(QUOTEDBL)}{^^}"                                                                                # CHange (inside) quOTE
"KHOET": "{#C I SHIFT(QUOTEDBL)}{^^}"                                                                                 # CHange (inside) quOTE
"KHR*UFP": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}"               # CLear searCH (matches)
"KHR*Z": "{#CONTROL(W) SHIFT(H)}"                                                                                     # vim move window to far left (⌃W ⇧←)
"KHR-BZ": "{#CONTROL(W) SHIFT(K)}"                                                                                    # vim move window to very top (⌃W ⇧↑)
"KHR-FD": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}"                # CLear FinD (matches)
"KHR-FP": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}"                # CLear searCH (matches)
"KHR-FRPB": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}"              # CLear seaRCH (matches)
"KHR-GZ": "{#CONTROL(W) SHIFT(L)}"                                                                                    # vim move window to far right (⌃W ⇧→)
"KHR-RZ": "{#CONTROL(W) SHIFT(J)}"                                                                                    # vim move window to very bottom (^W ⇧↓)
"KHR-SZ": "{#ESCAPE M Z SHIFT(COLON)}{^%s/\\s\\+$//^}{#RETURN SHIFT(COLON)}{^let @/=''^}{#RETURN GRAVE Z}"            # CLear SpaceS
"KHRAOERP": "{#ESCAPE M Z SHIFT(COLON)}{^%s/\\s\\+$//^}{#RETURN SHIFT(COLON)}{^let @/=''^}{#RETURN GRAVE Z}"          # CLEAR sPaces
"KHRUFRPB": "{#ESCAPE SHIFT(COLON)}{^nohlsearch^}{#RETURN SHIFT(COLON)}{^call clearmatches()^}{#RETURN}"              # CLear seaRCH (matches)
"KP*EUP": "{#SHIFT(QUOTEDBL PLUS) Y}"                                                                                 # COPY to Plus (+) buffer; handy for visual mode
"KPH*PBT": "{#G C}"                                                                                                   # toggle CoMMeNT range using vim-commentary
"KPH-PBT": "{#G C C}"                                                                                                 # toggle CoMMeNT lines using vim-commentary
"KPH-T": "{#G C C}"                                                                                                   # toggle CoMMenT lines using vim-commentary
"KPHO*ED": "{#CONTROL(A) ESCAPE}"                                                                                     # enter tmux Copy MODE (see tmux.conf in my dotfiles)
"KWA*UL": "{#ESCAPE SHIFT(COLON)}{^quitall^}{#RETURN}"                                                                # QUit ALL
"PHRUFR": "{#ESCAPE SHIFT(QUOTEDBL PLUS)}"                                                                            # PLUs (+) bUFFeR
"R*ERBTS": "{#ESCAPE SHIFT(COLON)}{^call UltiSnips#RefreshSnippets()^}{#RETURN}"                                      # REFRESH (ultisnip) snippeTS
"R-LD": "{#ESCAPE SHIFT(COLON)}{^edit^}{#RETURN}"                                                                     # ReLoaD (:edit)
"RERBTS": "{#ESCAPE SHIFT(COLON)}{^call UltiSnips#RefreshSnippets()^}{#RETURN}"                                       # REFRESH (ultisnip) snippeTS
"S*R": "{#ESCAPE Z PERIOD}"                                                                                           # CenteR screen
"S*UB": "{#SHIFT(COLON)}{^%s/^}{^^}"                                                                                  # vim SUBstitute [override]
"S*UBZ": "{#SHIFT(COLON)}{^%S/^}{^^}"                                                                                 # vim SUBstitute (using vim-abolish)
"S-BS": "yiw{#SHIFT(COLON)}{^%s/}{#CONTROL(R) 0}{^//g^}{#LEFT LEFT}{^^}"                                              # SuBStitute word under cursor
"SK-L": "{#CONTROL(Z)}"                                                                                               # escape to ConSoLe (from Vim)
"SKHO*ET": "{#C I QUOTERIGHT}{^^}"                                                                                    # CHange (inside single) quOTE
"SKR*L": "{#ESCAPE Z B}"                                                                                              # SCRoLL (to bottom)
"SKR-L": "{#ESCAPE Z T}"                                                                                              # SCRoLL (to top)
"SKW*EU": "{#ESCAPE SHIFT(COLON)}{^wq^}{#RETURN}"                                                                     # Save and QUIt
"SKW*EUZ": "{#ESCAPE SHIFT(COLON)}{^wq!^}{#RETURN}"                                                                   # force Save and QUIt
"SKWR*EUP": "{#SHIFT(I)}{^^}"                                                                                         # I with suppressed space (capital letter counterpart to Plover's SKWR*EU)
"SKWRA*P": "{#SHIFT(A)}{^^}"                                                                                          # A with suppressed space (captial letter counterpart to Plover's SKWRA*)
"SKWRO*P": "{#SHIFT(O)}{^^}"                                                                                          # O with suppressed space (capital letter counterpart to Plover's SKWRO*)
"SO*RB": "{#ESCAPE V I F SHIFT(COLON)}{^sort^}{#RETURN}"                                                              # SORt Block (using vim-textobj-markdown)
"SORB": "{#ESCAPE V I F SHIFT(COLON)}{^sort^}{#RETURN}"                                                               # SORt Block (using vim-textobj-markdown)
"SP*L": "{#BRACKETRIGHT S}"                                                                                           # go to next SPeLLing mistake
"SP-FL": "{#Z G}"                                                                                                     # add word as good word to SPellFiLe
"SP-L": "{#Z EQUAL}"                                                                                                  # list SPeLLing suggestions
"SR*ERD": "{#V I W}"                                                                                                  # Visual (inside) woRD
"SR*RT": "{#CONTROL(W) MINUS}"                                                                                        # Decrease current NERDTree window height (VeRTical) by 1
"SR*UBS": "{#SHIFT(COLON)}{^s/^}{^^}"                                                                                 # vim Visual SUBstitute
"SR-RT": "{#CONTROL(W) SHIFT(EQUAL)}"                                                                                 # Increase current NERDTree window height (VeRTical) by 1
"SRO*ET": "{#V I SHIFT(QUOTEDBL)}"                                                                                    # Visual (inside) quOTE
"SRO*RD": "{#V I W}"                                                                                                  # Visual (inside) wORD
"STPH*EU": "{>}{^i^}"                                                                                                 # i with suppressed space (STPH counterpart to Plover's SKWR*EU)
"STPH*EUP": "{#SHIFT(I)}{^^}"                                                                                         # I with suppressed space (STPH counterpart to SKWR*EUP)
"STPH*EUPS": "{#ESCAPE SHIFT(COLON)}{^call UltiSnips#RefreshSnippets()^}{#RETURN}"                                    # Refresh SNIPPetS (vim)
"STPHA*": "{>}{^a^}"                                                                                                  # a with suppressed space (STPH counterpart to Plover's SKWRA*)
"STPHA*P": "{#SHIFT(A)}{^^}"                                                                                          # A with suppressed space (STPH counterpart to SKWRA*P)
"STPHO*": "{>}{^o^}"                                                                                                  # o with suppressed space (STPH counterpart to Plover's SKWRO*)
"STPHO*P": "{#SHIFT(O)}{^^}"                                                                                          # O with suppressed space (STPH counterpart to SKWRO*P)
"SW*": "{^//g^}{#LEFT LEFT}{^^}"                                                                                      # vim Substitute With
"T*TS": "{#CONTROL(K)}{^^}"                                                                                           # move to previous snippet TabStop (ultisnips)
"T-TS": "{#CONTROL(J)}{^^}"                                                                                           # move to next snippet TabStop (ultisnips) [override]
"TKPW*URT": "{#ESCAPE SHIFT(COLON)}{^GitGutterToggle^}{#RETURN}"                                                      # toggle git GUTTER (vim-gitgutter)
"TOEFP": "{#ESCAPE SHIFT(COLON)}{^if getqflist(\\{'winid' : 0\\}).winid == 0 | copen | else | cclose | end}{#RETURN}" # TOggle sEarCH (the ack.vim quickfix window)
"TP*G": "{^fg^}{#RETURN}"                                                                                             # ForeGround process
"TPH*RD": "{#ESCAPE SHIFT(COLON)}{^NERDTreeFind^}{#RETURN}"                                                           # find in NeRDtree (vim)
"TPH*UFL": "{#ESCAPE SHIFT(COLON)}{^edit ^}"                                                                          # NEW FiLe
"TPH-RD": "{#ESCAPE SHIFT(COLON)}{^NERDTreeToggle^}{#RETURN}"                                                         # toggle NeRDtree (vim)
"TPHUFL": "{#ESCAPE SHIFT(COLON)}{^edit ^}"                                                                           # NEW FiLe
"TPO*RPLT": "{#ESCAPE G G EQUAL SHIFT(G) CONTROL(O O)}"                                                               # FORMAT file (and return to last jump)
"TPR-PLT": "{#ESCAPE G G EQUAL SHIFT(G) CONTROL(O O)}"                                                                # FoRMaT file (and return to last jump)
"W*T": "{^//g^}{#LEFT LEFT}{^^}"                                                                                      # vim substitute WiTH
"WR*T": "{#ESCAPE SHIFT(COLON)}{^write ^}"                                                                            # WRiTe
```

## [VLC][]

Shortcut commands (see the [`vlc` directory][] for technical details):

- `SHR*F`: "**VL**C **F**ast Forward". Maps to VLC's "Step Forward" command.
- `SHR*R`: "**VL**C **R**ewind". Maps to VLC's "Step Backward" command.

```yaml
"SHR*F": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/vlc/vlc-step-forward.scpt}"  # VLc Fast forward
"SHR*R": "{:COMMAND:APPLESCRIPT:$STENO_DICTIONARIES/src/command/vlc/vlc-step-backward.scpt}" # VLc Rewind
```

## Window Management

These commands use the default shortcuts provided by [Rectangle][] to resize
windows.

```yaml
"TP-F": "{#CONTROL(ALT(RETURN))}"                            # maximize ("Full Full screen") [override]
"TP-P": "{#CONTROL(ALT(SUPER(RIGHT))) CONTROL(ALT(RETURN))}" # maximize next disPlay ("Full screen next disPlay") [override]
```

[1Password]: https://1password.com/
[Activity Monitor]: https://support.apple.com/en-au/guide/activity-monitor/welcome/mac
[Alfred]: https://www.alfredapp.com/
[Anki]: https://apps.ankiweb.net/
[`application` directory]: ../src/command/application
[App Store]: https://www.apple.com/app-store/
[AWS VPN Client]: https://aws.amazon.com/vpn/client-vpn-download/
[Ben's programming dictionary]: https://or.computer.surgery/benjamin/steno-dicts/-/blob/master/programming.json
[Chidori]: https://github.com/paulfioravanti/plover-chidori
[Chrome]: https://www.google.com/chrome/
[commands source code]: ../src/command
[Create Environment Variable]: ../README.md#create-environment-variable
[Dash]: https://kapeli.com/dash
[DB Browser for SQLite]: https://sqlitebrowser.org/
[Deckset]: https://www.deckset.com/
[Di's `computer-use.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/computer-use.json
[Di's `modifiers-single-stroke.json` dictionary]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/modifiers-single-stroke.json
[direnv]: https://direnv.net/
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
[`navigation.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/navigation.json
[Notion]: https://www.notion.so/
[Photos]: https://www.apple.com/macos/photos/
[Plover]: https://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover Dict Commands]: https://github.com/KoiOates/plover_dict_commands
[Plover Local Env Var]: https://github.com/paulfioravanti/plover-local-env-var
[Plover Platform Specific Translation]: https://github.com/paulfioravanti/plover-platform-specific-translation
[Plover plugin]: https://plover.readthedocs.io/en/latest/plugins.html
[Plover Run Shell]: https://github.com/user202729/plover_run_shell
[Postico]: https://eggerapps.at/postico/
[Postman]: https://www.postman.com/
[Preview]: http://support.apple.com/guide/preview
[QMK Toolbox]: https://github.com/qmk/qmk_toolbox
[QuickTime Player]: https://support.apple.com/downloads/quicktime
[RecordIt]: https://recordit.co/
[Rectangle]: https://rectangleapp.com/
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
