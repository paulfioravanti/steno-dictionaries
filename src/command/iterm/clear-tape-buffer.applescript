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
    set nonTapeWindow to (first window whose name is not TapeWindowName)
    perform action "AXRaise" of tapeWindow
    # Clear buffer
    keystroke "k" using command down
    perform action "AXRaise" of nonTapeWindow
  end tell
end clearTapeBuffer
