# VLC

## The Problem

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

## The Scripts

The scripts are referenced in the [`commands.md`][] dictionary.

There are already named keyboard shortcuts in the VLC application for Step
Forward and Step Backward, but I did not want to have to change focus to
the VLC application in order to run them, and then change focus back to the text
editor. Hence, there was the need for a script that sends the request to step
forward/back via Apple's System Events, so that I could keep focus on my text
editor.

[AppleScript]: https://en.wikipedia.org/wiki/AppleScript
[`commands.md`]: ../../../dictionaries/commands.md#vlc
[Keyboard shortcuts for YouTube]: https://support.google.com/youtube/answer/7631406?hl=en
[Platinum Steno]: https://www.youtube.com/channel/UC-bfgyMjBdFuzhuL4Ff6XqA
[VLC]: https://www.videolan.org/vlc/
