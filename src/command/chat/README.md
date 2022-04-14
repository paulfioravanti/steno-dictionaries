# Chat

The [AppleScript][] files contained in this directory contain functionality that
relate to performing various actions in chat programs I use frequently.

The scripts are referenced in the [`command-chat.json`][] dictionary.

Since different applications handle this functionality with different shortcut
key combinations, the keystrokes that the scripts attempt to run will differ
depending on what application currently has focus.

Very primitive error handling has been included if the script is run against an
application it doesn't know how to handle.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`command-chat.json`]: ../../../dictionaries/command/command-chat.json
