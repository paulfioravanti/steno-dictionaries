# Chat

The [AppleScript][] file contained in this directory contains functionality that
relate to performing various actions in chat programs I use frequently.

The script is referenced in the [`command-chat.json`][] dictionary.

Since different applications handle this functionality with different shortcut
key combinations, the keystrokes that the script attempts to run will differ
depending on what application currently has focus.

Very primitive error handling has been included if the script is run against an
application it doesn't know how to handle.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`command-chat.json`]: ../../../dictionaries/command/command-chat.json
