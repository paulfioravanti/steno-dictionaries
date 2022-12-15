property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimChangeWord()
  else
    performChangeWord()
  end if
end run

on performVimChangeWord()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke "ciw"
  end tell
end performVimChangeWord

on performChangeWord()
  tell application "System Events" to tell process activeProcess
    key code System's RightArrowKeyCode using option down
    key code System's LeftArrowKeyCode using {shift down, option down}
    key code System's DeleteKeyCode
  end tell
end performChangeWord
