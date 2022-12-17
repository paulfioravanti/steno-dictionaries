property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimSelectWord()
  else
    performSelectWord()
  end if
end run

on performVimSelectWord()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke "viw"
  end tell
end performVimSelectWord

on performSelectWord()
  tell application "System Events" to tell process activeProcess
    key code System's RightArrowKeyCode using option down
    key code System's LeftArrowKeyCode using {shift down, option down}
  end tell
end performSelectWord
