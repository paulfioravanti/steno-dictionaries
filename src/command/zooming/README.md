# Zooming

Not specific to the [Zoom][] application, but, rather, the [AppleScript][] files
contained in this directory contain functionality that relates to making page
contents larger and smaller.

The scripts are referenced in the [`command-actions.json`][] dictionary.

Since different applications handle this functionality with different shortcut
key combinations, the keystrokes that the scripts attempt to run will differ
depending on what application currently has focus.

Very primitive error handling has been included if the script is run against an
application it doesn't know how to handle.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`command-actions.json`]: ../../../dictionaries/command/command-actions.json
[Zoom]: https://zoom.us/
