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
   - `A*EUPBGZ`: "**ANK**i" for [Anki][]
   - `A*FRL`: "**ALFR**ed" for triggering the [Alfred][] search bar
   - `KRO*EPLZ`: "**CHROME**" for [Chrome][]
   - `PHRO*FRZ`: "**PLOVER**" for [Plover][] (no activation, only focus)
   - `SAO*PLZ`: "**ZOOM**" for [Zoom][]
   - `SHR*Z`: "**VL**C" for [VLC][]
   - `SHRA*BGZ`: "**SLACK**" for [Slack][]
   - `SK*EUFPZ`: "**SKITCH**" for [Skitch][]
   - `SR*EUZ`: "Di**VVY**" for triggering the [Divvy][] window manager
   - `SR*PBZ`: "**V**P**N**" for [AWS VPN Client][]
   - `STO*RZ`: "App **STORE**" for [App Store][]
   - `STPA*RZ`: "**S**a**FAR**i" for [Safari][]
   - `T*ERPLZ`: "i**TERM**" for [iTerm2][]
   - `TK*EBGZ`: "**DECK**set" for [Deckset][]
   - `TKA*RBZ`: "**DASH**" for [Dash][]
   - `TKO*RDZ`: "**D**isc**ORD**" for [Discord][]
   - `TKPWRA*FLZ`: "**GRAPH**iQ**L**" for [GraphiQL][]
   - `TKPWRA*FPZ`: "**GRAPH**QL **P**layground" for [GraphQL Playground][]
   - `TP*RZ`: "**F**inde**R**" for [Finder][]
   - `TPAO*EUFZ`: "**FI**re**F**ox" for [Firefox][]
   - `TPHO*EGSZ`: "**NOTION**" for [Notion][]
   - `W*UPBZ`: "**1**Password" for [1Password][]
   - `WA*LZ`: "**WAL**ly" for [Wally][]
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
- **[VLC][]** shortcut commands (see the [`vlc` directory][] for technical
  details):
  - `SHR*R`: "**VL**C **R**ewind". Maps to VLC's "Step Backward" command.
  - `SHR*F`: "**VL**C **F**ast Forward". Maps to VLC's "Step Forward" command.
  - `SHR*Z`: "**VL**C Activate". Opens the VLC application and/or brings it in
     focus
- **[Typey Type][]** shortcut commands (see the [`typey-type` directory][] for
  technical details):
  - `TAO*EUPZ`: "Save **TYPE**y Type progress". Maps to custom script to save
    steno progress file to [Dropbox][].
- Other miscellaneous outlines and briefs in `command-other.json`

[1Password]: https://1password.com/
[Alfred]: https://www.alfredapp.com/
[Anki]: https://apps.ankiweb.net/
[`application` directory]: ../../config/command/application
[App Store]: https://www.apple.com/app-store/
[AWS VPN Client]: https://aws.amazon.com/vpn/client-vpn-download/
[Chrome]: https://www.google.com/chrome/
[commands config]: ../../config/commands
[Dash]: https://kapeli.com/dash
[Deckset]: https://www.deckset.com/
[Discord]: https://discord.com/
[Divvy]: https://mizage.com/divvy/
[Dropbox]: https://www.dropbox.com/
[Finder]: https://support.apple.com/en-us/HT201732
[Firefox]: https://www.mozilla.org/en-US/firefox/new/
[GraphiQL]: https://github.com/graphql/graphiql
[GraphQL Playground]: https://github.com/graphql/graphql-playground
[iTerm2]: https://iterm2.com/
[Notion]: https://www.notion.so/
[Plover]: https://www.openstenoproject.org/plover/
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover Dict Commands]: https://github.com/KoiOates/plover_dict_commands
[Plover plugin]: https://plover.readthedocs.io/en/latest/plugins.html
[Safari]: https://www.apple.com/safari/
[Skitch]: https://evernote.com/products/skitch
[Slack]: https://slack.com/
[Typey Type]: https://didoesdigital.com/typey-type/
[`typey-type` directory]: ../../config/command/typey-type
[VLC]: https://www.videolan.org/vlc/
[`vlc` directory]: ../../config/command/vlc
[Wally]: https://ergodox-ez.com/pages/wally
[Zoom]: https://zoom.us/
