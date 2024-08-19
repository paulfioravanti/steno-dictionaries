property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimSelectAll()
  else
    performSelectAll()
  end if
end run

on performVimSelectAll()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    # - Move cursor to top of the file
    # - Start visual highlighting
    # - Highlight until the end of the file
    keystroke "ggVG"
  end tell
end performVimSelectAll

on performSelectAll()
  tell application "System Events" to tell process activeProcess
    keystroke "a" using command down
  end tell
end performSelectAll
