# Tabbing

The [AppleScript][] files contained in this directory contain functionality that
relates to moving a tab in an application window up or down the list of tabs
currently open in the window.

The scripts are referenced in the [`commands.md`][] dictionary.

Since different applications handle this functionality with different shortcut
key combinations, the keystrokes that the scripts attempt to run will differ
depending on what application currently has focus.

Very primitive error handling has been included if the script is run against an
application it doesn't know how to handle.

Note that the handling for Chrome requires the [Vimium][] extension, as Chrome
currently has no native functionality that covers moving tabs.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`commands.md`]: ../../dictionaries/commands.md#switching
[Vimium]: https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
