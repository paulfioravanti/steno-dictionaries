property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

property RightArrowKeyCode : 124

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    performTerminalNextWord(activeApp)
  else
    performNextWord(activeApp)
  end if
end run

on performTerminalNextWord(activeApp)
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke "f"
  end tell
end performTerminalNextWord

on performNextWord(activeApp)
  tell application "System Events" to tell process activeApp
    key code RightArrowKeyCode using {option down}
  end tell
end performNextWord
