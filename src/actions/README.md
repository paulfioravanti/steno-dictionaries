# Actions

The [AppleScript][] files contained in this directory contains functionality
that relates to certain "actions" that can be performed against multiple types
of applications.

These actions, like "quitting" or "saving", are usually handled by modifier key
combinations, like ⌘Q or ⌘S, which is generally okay. But, if I wanted to have
a "quit" chord that would cover applications that have a ⌘Q shortcut _and_
programs like vim, where the command to quit is typing `:q<return>`, then just
mapping a chord to a modifier key combination is not enough, and you need to
have something that can differentiate the different ways to quit.

The scripts in this directory are my attempt at that differentiation.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
