property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "iTerm2" or activeApp is "Terminal" then
    consoleNextWord(activeApp)
  else
    nextWord(activeApp)
  end if
end run

on consoleNextWord(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke "f"
  end tell
end consoleNextWord

on nextWord(activeApp)
  tell application "System Events" to tell process activeApp
    # 124 = Right arrow
    key code 124 using {option down}
  end tell
end nextWord
