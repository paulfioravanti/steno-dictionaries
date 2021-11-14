# VLC Custom Commands

## Why these commands exist

While doing dictation exercises on the [Platinum Steno][] YouTube channel, I
found that there were times when I was too slow, and the dictation got too far
ahead. This meant having to:

- take my hands off the steno keyboard
- use a mouse to focus on the browser window where the video is playing
- drag the video progress bar back a bit and/or use the "j"/"l"
  [keyboard shortcuts][Keyboard shortcuts for YouTube]

I thought that maybe there would be a way using AppleScript to do something
like: select Google Chrome, find the window and tab where YouTube media was
playing, target that tab and send the YouTube shortcut key to seek backwards
about 10 seconds in the player, all without bringing the YouTube browser tab
into focus.

Although I came across some solutions online that were similar to what I wanted,
there did not seem to be a solution that fit my need.

So, I have now given up using YouTube directly for Platinum Steno dictation, and
have instead decided to use [VLC][]'s "Open Network URL" feature to have it open
up the YouTube video stream. This makes moving back and forth through the
video significantly easier as I can just create shortcuts that target VLC's
"Step Backward" and "Step Forward" commands.

The outlines I used for this are as follows:

- `SHR*R`: "**VL**C **R**ewind". Maps to VLC's "Step Backward" command
- `SHR*F`: "**VL**C **F**ast Forward". Maps to VLC's "Step Forward" command.
  Honestly, this is just here to be the mirror of the above `SHR*R` command.

## Alfred Workflow Installation

- Double click `Step Backward/Forward.alfredworkflow` to import the workflow
  into Alfred
- Double click the first Hotkey item for "Step Backward" and set its value to
  <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⇧</kbd><kbd>⌘</kbd><kbd>←</kbd>
- Double click the second Hotkey for "Step Forward" and set its value to
  <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⇧</kbd><kbd>⌘</kbd><kbd>→</kbd>

> Note that ["hotkeys are stripped out when you import...workflows, to ensure
> that these don't clash with your existing hotkeys."][Importing Workflows],
> so you needing to re-input hotkey values is by design in Alfred.

The mapping from the outline in `custom-commands.json` all the way to VLC
essentially goes:

- `SHR*R -> ⌃⌥⇧⌘← -> VLC Step Backward`
- `SHR*F -> ⌃⌥⇧⌘→ -> VLC Step Forward`

If you already use <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⇧</kbd><kbd>⌘</kbd><kbd>←</kbd>
or <kbd>⌃</kbd><kbd>⌥</kbd><kbd>⇧</kbd><kbd>⌘</kbd><kbd>→</kbd> for shortcuts on
your computer, feel free to change them to a combination not currently in use,
but remember to _also_ change the relevant JSON value entry in
`custom-commands.json`.

## AppleScript Files

In the event that you do not use Alfred, then the files containing the
AppleScript `(.scpt)` used in the workflow Run Script items are included for use
in your command handling software of choice (eg [Automator][] etc).

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[Automator]: https://support.apple.com/en-au/guide/automator/welcome/mac
[Importing Workflows]: https://www.alfredapp.com/blog/tips-and-tricks/tutorial-importing-and-setting-up-alfred-workflows/
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[Keyboard shortcuts for YouTube]: https://support.google.com/youtube/answer/7631406?hl=en
[VLC]: https://www.videolan.org/vlc/
