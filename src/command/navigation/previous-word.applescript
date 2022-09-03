property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is contained by Util's TerminalApps then
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
