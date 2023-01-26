property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimChangeCurrentWord()
  else
    performChangeCurrentWord()
  end if
end run

on performVimChangeCurrentWord()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke "ciw"
  end tell
end performVimChangeCurrentWord

on performChangeCurrentWord()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's RightArrow using option down
    key code KeyCode's LeftArrow using {shift down, option down}
    key code KeyCode's DeleteKey
  end tell
end performChangeCurrentWord
