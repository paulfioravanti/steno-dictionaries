property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"
property LeftArrowKeyCode : 123

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    performTerminalPreviousWord()
  else
    performPreviousWord()
  end if
end run

on performTerminalPreviousWord()
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke "b"
  end tell
end performTerminalPreviousWord

on performPreviousWord()
  tell application "System Events" to tell process activeApp
    key code LeftArrowKeyCode using option down
  end tell
end performPreviousWord
