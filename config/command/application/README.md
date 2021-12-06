# Application Custom Commands

The [AppleScript][] files contained in this directory contain functionality that
relate to "activating" (opening) macOS applications and/or bringing their main
window into focus.

These scripts are referenced in the [`command-applications.json`][] dictionary.

Depending on the application, the way it needed to be activated or brought into
focus differed.

For Plover itself, because no steno strokes are going to be listened for if it
is not activated already, a stroke can only be used to bring it, and all its
other windows, to the front. Hence, the `focus-application.scpt` script is used
for it.

1Password and Dash required both activation _and_ focus, so the
`activate-and-focus-application.scpt` script is used for them.

The rest of the applications are able to use the very straightforward
`activate-application.scpt` script.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`command-applications.json`]: ../../../dictionaries/command/command-applications.json
