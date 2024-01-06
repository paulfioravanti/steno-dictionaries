# Application Custom Commands

The [AppleScript][] files contained in this directory contain functionality
that relates to:

- "Activating" (opening) macOS applications and/or bringing their main
  window into focus in order to use them.
- Opening a web-based application (with Google Chrome) using its URL.

These scripts are referenced in the [`commands.md`][] dictionary.

Depending on the macOS application, the way it needed to be activated or brought
into focus differed.

For Plover itself, because no steno strokes are going to be listened for if it
is not activated already, a stroke can only be used to bring it, and all its
other windows, to the front.

1Password, Activity Monitor, Dash, and Keybase required both activation _and_
focus.

The rest of the applications are able to just be activated in a straightforward
way.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`commands.md`]: ../../../dictionaries/commands.md
