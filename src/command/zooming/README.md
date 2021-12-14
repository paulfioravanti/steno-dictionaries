# Zooming

Not specific to the [Zoom][] application, but, rather, the [AppleScript][] file
contained in this directory contains functionality that relates to making page
contents larger and smaller.

The script is referenced in the [`command-other.json`][] dictionary.

Since different applications handle this functionality with different shortcut
key combinations, the keystrokes that the script attempts to run will differ
depending on what application currently has focus.

Very primitive error handling has been included if the script is run against an
application it doesn't know how to handle.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`command-other.json`]: ../../../dictionaries/command/command-other.json
[Zoom]: https://zoom.us/
