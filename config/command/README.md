# Commands Config

This directory contains:

- Code that controls web or macOS-based applications via [bash][] or
  [AppleScript][]
- [Alfred][] [workflows][Alfred workflows] that allow the triggering of that
  code via complex keyboard shortcuts

These keyboard shortcuts are then mapped to steno outlines in dictionaries
found in the [`command`][] directory.

Where possible, I have added in both the Alfred workflow file
(`.alfredworkflow`), and the content of the scripts that the workflow uses.

## Alfred Workflow Installation

- Double click a `.alfredworkflow` file to import the workflow into Alfred.
- Double click the Hotkey item set its value to either the shortcut indicated
  in the workflow note, or one of your own choosing.

> Note that ["hotkeys are stripped out when you import...workflows, to ensure
> that these don't clash with your existing hotkeys."][Importing Workflows],
> so, you needing to re-input hotkey values may be annoying, but it is by
> design in Alfred.

The mapping from an outline in a [command dictionary][] all the way to
performing its functionality essentially goes:

- `<OUTLINE> -maps to-> <SHORTCUT> -executes-> <WORKFLOW> -runs-> <SCRIPT>`

If you already use the shortcut named in the Alfred workflow, feel free to
change it to a combination not currently in use, but remember to _also_ change
the relevant [command dictionary][] entry.

[Alfred]: https://www.alfredapp.com/
[Alfred workflows]: https://www.alfredapp.com/workflows/
[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[bash]: https://en.wikipedia.org/wiki/Bash_(Unix_shell)
[`command`]: ../../dictionaries/command
[command dictionary]: ../../dictionaries/command/
[Importing Workflows]: https://www.alfredapp.com/blog/tips-and-tricks/tutorial-importing-and-setting-up-alfred-workflows/
