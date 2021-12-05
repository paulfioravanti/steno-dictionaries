# Application Custom Commands

The [Alfred][] workflow file contained in this directory contains shortcuts
that point to [AppleScript][] files that "activate" specific macOS applications.

I have decided not to specifically include the AppleScript files, as they are
mostly all the same, and very short. Depending on the application, though, there
were some minor differences.

For 1Password and Dash, in order to get the application to both "activate"
(open) _and_ bring the application window into focus, the AppleScript needed to
be written in the following way:

```applescript
tell application "<application name>"
  reopen
  activate
end tell
```

For Plover itself, because no steno strokes are going to be listened for if it
is not activated already, a stroke can only be used to bring it, and all its
other windows, to the front:

```applescript
tell application "System Events" to tell process "Plover"
  set frontmost to true
end tell
```

The scripts for all the other applications are simply:

```applescript
activate application "<application name>"
```

So, feel free to write these scripts up yourself if you use command handling
software that is not [Alfred][].

[Alfred]: https://www.alfredapp.com/
[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
