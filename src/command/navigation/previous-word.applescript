property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

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
    # 53 = Escape
    key code 53
    keystroke "b"
  end tell
end performTerminalPreviousWord

on performPreviousWord(activeApp)
  tell application "System Events" to tell process activeApp
    # 123 = Left arrow
    key code 123 using {option down}
  end tell
end performPreviousWord
