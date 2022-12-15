# Commands

This directory contains code that controls web or macOS-based applications.

They are written in:

- [bash][]
- [AppleScript][]

Call outs to the code scripts are contained in steno outlines in dictionaries
found in the [`command.md`][] directory.

See the `README` files in the subdirectories for specific details of each type
of script.

## Use of AppleScript

AppleScript is _slow_, so I've used it only where it would actually result in
a speed improvement, like saving multiple strokes when saving or quitting vim.

I learned the hard way that it is better to use native keyboard shortcuts, and
not AppleScript, where a synchronous action is performed that requires
_instant feedback_, like with pane navigation in vim.

For example, in vim, use of `{:KEY_COMBO:CONTROL_L(J)}` to navigate down is
_significantly_ faster than calling an AppleScript and performing
`keystroke "j" using {control down}`.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[bash]: https://en.wikipedia.org/wiki/Bash_(Unix_shell)
[`command.md`]: ../../dictionaries/command.md
