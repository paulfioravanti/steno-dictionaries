# Typey Type Custom Commands

The files and [Alfred][] workflow files contained in this directory were
initially taken from [Save Typey Type Progress][], and I have only made some
minor changes.

The outline I used for this is not defined in my own dictionary, but taken from
[Di's Steno Dictionaries][], specifically from the [`computer-powerups.json`][]
dictionary:

- `"TAO*EUPZ": "{#Control_L(Alt_L(Super_L(Shift_L(t))))}"`

If you do not use the `computer-powerups.json` dictionary in your own set, then
you either can do so, or copy/paste the entry above into your own dictionaries.

## Alfred Workflow Installation

- Double click `Save Typey Type Progress.alfredworkflow` to import the workflow
  into Alfred
- Double click the Hotkey item set its value to
  <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⇧</kbd><kbd>⌘</kbd><kbd>T</kbd>

> Note that ["hotkeys are stripped out when you import...workflows, to ensure
> that these don't clash with your existing hotkeys."][Importing Workflows],
> so you needing to re-input hotkey values is by design in Alfred.

The mapping from the outline in `custom-commands.json` all the way to VLC
essentially goes:

- `TAO*EUPZ -> ⌃⌥⇧⌘T -> Run script to save Typey Type progress`

If you already use <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⇧</kbd><kbd>⌘</kbd><kbd>T</kbd>
for shortcuts on your computer, feel free to change them to a combination not
currently in use, but remember to _also_ add a relevant JSON dictionary entry in
`custom-commands.json`.

## Bash Files

In the event that you do not use Alfred, then the file containing the
bash `(.sh)` code used in the workflow Run Script items are included for use
in your command handling software of choice (eg [Automator][] etc).

[Automator]: https://support.apple.com/en-au/guide/automator/welcome/mac
[bash]: https://en.wikipedia.org/wiki/Bash_(Unix_shell)
[`computer-powerups.json`]: https://github.com/didoesdigital/steno-dictionaries/blob/master/dictionaries/computer-powerups.json
[Di's Steno Dictionaries]: https://github.com/didoesdigital/steno-dictionaries
[Importing Workflows]: https://www.alfredapp.com/blog/tips-and-tricks/tutorial-importing-and-setting-up-alfred-workflows/
[Save Typey Type Progress]: https://github.com/didoesdigital/save-typey-type-for-stenographers-progress
