# Application Custom Commands

The [AppleScript][] file contained in this directory contains functionality that
relates to "activating" (opening) macOS applications and/or bringing their main
window into focus in order to **use** them (hence the script name).

These scripts are referenced in the [`command-applications.json`][] dictionary.

Depending on the application, the way it needed to be activated or brought into
focus differed.

For Plover itself, because no steno strokes are going to be listened for if it
is not activated already, a stroke can only be used to bring it, and all its
other windows, to the front.

1Password, Activity Monitor, Dash, and Keybase required both activation _and_
focus.

The rest of the applications are able to just be activated in a straightforward
way.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`command-applications.json`]: ../../../dictionaries/command/command-applications.json
