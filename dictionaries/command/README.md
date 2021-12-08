# Command Dictionaries

This directory consists of dictionaries which contain Plover command outlines
that either:

- run a keyboard shortcut
- run a script to perform some action

More details on the code that runs the functionality that some command outlines
are mapped to can be found in the [commands config][] directory.

My current set of commands consists of the following:

- **Application Activation** (macOS): these commands either open (activate) an
  application or bring it into focus, reducing the need to use
  <kbd>Alt</kbd><kbd>Tab</kbd> for application switching (see the
  [`application` directory][] for technical details). The basis of the outlines
  are (mostly) a brief of the application name, with `*Z` appended to reduce
  likelihood of an outline conflict:
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
   - `PRAO*UFZ`: "**PREVIEW**" for [Preview][]
   - `PR*EFZ`: "System **PREF**erence**S**": for [System Preferences][]
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
- **[Plover Control Commands][]**. Aside from using commands standard commands,
  I have added a few custom ones as well:
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
- **Tabbing** commands for applications like Chrome or iTerm2, where there
  there are tabs within windows:
  - `PRA*B`: Select "**PR**evious t**AB**"
  - `PRA*BZ`: Move current tab to "**PR**evious t**AB**"
  - `TPHA*B`: Select "**N**ext t**AB**"
  - `TPHA*BZ`: Move current tab to "**N**ext t**AB**"
  - `W*PB`: Forward cycle open "**W**i**N**dows"
  - `W*PBD`: Backward cycle open "**W**i**N**dows"
- **[Typey Type][]** shortcut commands (see the [`typey-type` directory][] for
  technical details):
  - `TAO*EUPZ`: "Save **TYPE**y Type progress". Maps to custom script to save
    steno progress file to [Dropbox][].
- **[VLC][]** shortcut commands (see the [`vlc` directory][] for technical
  details):
  - `SHR*R`: "**VL**C **R**ewind". Maps to VLC's "Step Backward" command.
  - `SHR*F`: "**VL**C **F**ast Forward". Maps to VLC's "Step Forward" command.
- Other miscellaneous outlines and briefs in `command-other.json`

[1Password]: https://1password.com/
[Activity Monitor]: https://support.apple.com/en-au/guide/activity-monitor/welcome/mac
[Alfred]: https://www.alfredapp.com/
[Anki]: https://apps.ankiweb.net/
[`application` directory]: ../../config/command/application
[App Store]: https://www.apple.com/app-store/
[AWS VPN Client]: https://aws.amazon.com/vpn/client-vpn-download/
[Chrome]: https://www.google.com/chrome/
[commands config]: ../../config/commands
[Dash]: https://kapeli.com/dash
[DB Browser for SQLite]: https://sqlitebrowser.org/
[Deckset]: https://www.deckset.com/
[Discord]: https://discord.com/
[Divvy]: https://mizage.com/divvy/
[Dropbox]: https://www.dropbox.com/
[Finder]: https://support.apple.com/en-us/HT201732
[Firefox]: https://www.mozilla.org/en-US/firefox/new/
[GraphiQL]: https://github.com/graphql/graphiql
[GraphQL Playground]: https://github.com/graphql/graphql-playground
[Handbrake]: https://handbrake.fr/
[ImageOptim]: https://imageoptim.com/mac
[Insomnia]: https://insomnia.rest/
[iTerm2]: https://iterm2.com/
[Keybase]: https://keybase.io/
[Miro]: https://miro.com/
[Notion]: https://www.notion.so/
[Photos]: https://www.apple.com/macos/photos/
[Plover]: https://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover Dict Commands]: https://github.com/KoiOates/plover_dict_commands
[Plover plugin]: https://plover.readthedocs.io/en/latest/plugins.html
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
[`typey-type` directory]: ../../config/command/typey-type
[Visual Studio Code]: https://code.visualstudio.com/
[VLC]: https://www.videolan.org/vlc/
[`vlc` directory]: ../../config/command/vlc
[Wally]: https://ergodox-ez.com/pages/wally
[WaveLink]: https://www.elgato.com/en/downloads
[WhatsApp]: https://www.whatsapp.com/
[Xcode]: https://developer.apple.com/xcode/
[Zoom]: https://zoom.us/
