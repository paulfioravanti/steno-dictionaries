# Custom Commands

This directory contains custom commands I use with Plover that are mostly
macOS-centric.

It consists of a dictionary, `custom-commands.json`, found in the `dictionaries`
directory, which contains a set of command outlines that either:

- leverage a [Plover plugin][] to perform some action
- run a keyboard shortcut

In the latter case, I have used [Alfred][] to pick up those keyboard shortcuts,
and route them through [Alfred workflows][] in order to:

- perform a command in some specific application
- run a [bash][] or [AppleScript][] file

Where possible, I have added in both the Alfred workflow file
(`.alfredworkflow`), and the content of the scripts that the workflow uses.

My current set of commands consists of the following:

- [Plover Control Commands][]
  - Since the Plover command `SET_CONFIG` reloads dictionaries as a side effect
    of actually setting some config, I am using essentially a "blank" config set
    command as a proxy to just reload the dictionaries:
    - `"PHROED": "{PLOVER:SET_CONFIG}"`: "**Plo**ver rel**oad**"
- [Plover Dict Commands][] plugin-based commands:
  - `RA*U`: "**Raw** steno". Disables all dictionaries that output text so that
    I am able to write raw steno strokes.
  - `RA*UF`: "**Raw** steno of**f**". Turns off "raw steno" and restores the
    original dictionary stack.
- [VLC][] shortcut commands (see the [`vlc` directory][] for details)
- [Typey Type][] shortcut commands (see the [`typey-type` directory][] for
  details)
- [Alfred][] shortcuts:
  - `A*FRL`: "**Alfr**ed". Brings up the Alfred search dialog.

[Alfred]: https://www.alfredapp.com/
[Alfred workflows]: https://www.alfredapp.com/workflows/
[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[bash]: https://en.wikipedia.org/wiki/Bash_(Unix_shell)
[`config/commands`]: ./config/commands
[Plover Control Commands]: https://github.com/openstenoproject/plover/wiki/Dictionary-Format#plover-control-commands
[Plover Dict Commands]: https://github.com/KoiOates/plover_dict_commands
[Plover plugin]: https://plover.readthedocs.io/en/latest/plugins.html
[Typey Type]: https://didoesdigital.com/typey-type/
[`typey-type` directory]: ./typey-type
[VLC]: https://www.videolan.org/vlc/
[`vlc` directory]: ./vlc
