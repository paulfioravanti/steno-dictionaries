property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

property LeftArrowKeyCode : 123

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    performTerminalPreviousWord(activeApp)
  else
    performPreviousWord()
  end if
end run

on performTerminalPreviousWord(activeApp)
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke "b"
  end tell
end performTerminalPreviousWord

on performPreviousWord(activeApp)
  tell application "System Events" to tell process activeApp
    key code LeftArrowKeyCode using {option down}
  end tell
end performPreviousWord
