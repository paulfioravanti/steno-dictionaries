property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimUndo()
  else
    performUndo()
  end if
end run

on performVimUndo()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke "u"
  end tell
end performVimUndo

on performUndo()
  tell application "System Events" to tell process activeProcess
    keystroke "z" using command down
  end tell
end performUndo
