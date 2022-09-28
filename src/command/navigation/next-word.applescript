property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"
property RightArrowKeyCode : 124

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    performTerminalNextWord()
  else
    performNextWord()
  end if
end run

on performTerminalNextWord()
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke "f"
  end tell
end performTerminalNextWord

on performNextWord()
  tell application "System Events" to tell process activeApp
    key code RightArrowKeyCode using option down
  end tell
end performNextWord
