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
    key code System's EscapeKeyCode
    keystroke "ciw"
  end tell
end performVimChangeCurrentWord

on performChangeCurrentWord()
  tell application "System Events" to tell process activeProcess
    key code System's RightArrowKeyCode using option down
    key code System's LeftArrowKeyCode using {shift down, option down}
    key code System's DeleteKeyCode
  end tell
end performChangeCurrentWord
