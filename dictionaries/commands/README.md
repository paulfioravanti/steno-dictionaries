# Custom Commands

This directory contains custom commands I use with Plover that are mostly
macOS-centric.

It consists of a dictionary, `custom-commands.json`, which contains a set of
command outlines that either:

- leverage a [Plover plugin][] to perform some action
- run a keyboard shortcut

In the latter case, I have used [Alfred][] to pick up those keyboard shortcuts,
and route them through [Alfred workflows][] in order to:

- perform a command in some specific application
- run a [bash][] or [AppleScript][] file

Where possible, I have added in both the Alfred workflow file
(`.alfredworkflow`), and the content of the scripts that the workflow uses.

My current set of commands consists of the following:

- [Plover Dict Commands][] plugin-based commands:
  - `RA*U`: "Raw steno". Disables all dictionaries that output text so that
    I am able to write raw steno strokes.
  - `RA*UF`: "Raw steno off". Turns off "raw steno" and restores the original
    dictionary stack.
- [VLC][] shortcut commands (see the `vlc` directory for details)
- [Typey Type][] shortcut commands (see the `typey-type` directory for details)

[Alfred]: https://www.alfredapp.com/
[Alfred workflows]: https://www.alfredapp.com/workflows/
[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[bash]: https://en.wikipedia.org/wiki/Bash_(Unix_shell)
[Plover Dict Commands]: https://github.com/KoiOates/plover_dict_commands
[Plover plugin]: https://plover.readthedocs.io/en/latest/plugins.html
[Typey Type]: https://didoesdigital.com/typey-type/
[VLC]: https://www.videolan.org/vlc/
