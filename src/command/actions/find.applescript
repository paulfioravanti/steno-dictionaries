property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimFind()
  else
    performFind()
  end if
end run

on performVimFind()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke "/"
  end tell
end performVimFind

on performFind()
  tell application "System Events" to tell process activeProcess
    keystroke "f" using command down
  end tell
end performFind
