# Tabbing

The [AppleScript][] file contained in this directory contains functionality that
relates to moving a tab in an application window up or down the list of tabs
currently open in the window.

The script is referenced in the [`command-tabbing.json`][] dictionary.

Since different applications handle this functionality with different shortcut
key combinations, the keystrokes that the script attempts to run will differ
depending on what application currently has focus.

Very primitive error handling has been included if the script is run against an
application it doesn't know how to handle.

Note that the handling for Chrome requires the [Vimium][] extension has Chrome
currently has no native functionality that covers moving tabs.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`command-tabbing.json`]: ../../../dictionaries/command/command-tabbing.json
[Vimium]: https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
