property System : script "steno-dictionaries/system"
property TapeWindowName : "Tapey Tape"

on run
  set activeProcess to System's getActiveAppProcess()
  System's focusApp("iTerm2")
  clearTapeBuffer()
  System's focusApp(activeProcess)
end run

on clearTapeBuffer()
  tell application "System Events" to tell process "iTerm2"
    set tapeWindow to (first window whose name is TapeWindowName)
    perform action "AXRaise" of tapeWindow
    # Clear buffer and clear scrollback buffer
    keystroke "k" using command down
    # https://github.com/SKaplanOfficial/PyXA/issues/16
    # keystroke "k" using {command down, shift down}
    key down command
    key down shift
    keystroke "k"
    key up shift
    key up command
    # NOTE: Command-Tilde hotkey to switch iTerm windows is used over code like:
    # ```
    # set nonTapeWindow to (first window whose name is not TapeWindowName)
    # perform action "AXRaise" of nonTapeWindow
    # ```
    # because when iTerm is focused, the tape window doesn't output an extra new
    # line after it gets cleared as opposed to the above code, which does.
    # Unfortunately, clearing the tape buffer from any other application results
    # in that extra new line *most* of the time :(
    # keystroke "~" using {command down, shift down}
    key down command
    key down shift
    keystroke "~"
    key up shift
    key up command
  end tell
end clearTapeBuffer
