on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" or activeApp is "Terminal" then
    consolePreviousWord(activeApp)
  else
    previousWord()
  end if
end run

on consolePreviousWord(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke "b"
  end tell
end consolePreviousWord

on previousWord(activeApp)
  tell application "System Events" to tell process activeApp
    # 123 = Left arrow
    key code 123 using {option down}
  end tell
end previousWord

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp
