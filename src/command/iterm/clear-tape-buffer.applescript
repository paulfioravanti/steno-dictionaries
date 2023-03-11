property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  tell application "iTerm2"
    set tapeWindow to (window 1 whose name contains "Tapey Tape")
    # REF: https://iterm2.com/documentation-scripting.html#Windows:~:text=starting%20from%200.-,select,-Selects%20the%20tab
    select tapeWindow
  end tell

  tell application "System Events"
    tell process "iTerm2"
      set frontmost to true
      keystroke "k" using command down
    end tell

    keystroke "~" using command down
    if activeProcess is not "iTerm2" then
      System's focusApp(activeProcess)
    end if
  end tell
end run
