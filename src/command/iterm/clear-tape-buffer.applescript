property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()
  System's focusApp("iTerm2")

  tell application "System Events" to tell process "iTerm2"
    set tapeWindow to (window 1 whose name is "Tapey Tape")
    set nonTapeWindow to (window 1 whose name is not "Tapey Tape")

    perform action "AXRaise" of tapeWindow
    # Clear buffer
    keystroke "k" using command down
    perform action "AXRaise" of nonTapeWindow
  end tell

  if activeProcess is not "iTerm2" then
    System's focusApp(activeProcess)
  end if
end run
