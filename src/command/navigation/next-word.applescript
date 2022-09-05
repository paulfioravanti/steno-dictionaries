property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

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
    # 53 = Escape
    key code 53
    keystroke "f"
  end tell
end performTerminalNextWord

on performNextWord(activeApp)
  tell application "System Events" to tell process activeApp
    # 124 = Right arrow
    key code 124 using {option down}
  end tell
end performNextWord
