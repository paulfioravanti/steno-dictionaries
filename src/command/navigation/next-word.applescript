on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" or activeApp is "Terminal" then
    consoleNextWord()
  else
    nextWord()
  end if
end run

on consoleNextWord()
  tell application "System Events"
    # 53 = Escape
    key code 53
    keystroke "f"
  end tell
end consoleNextWord

on nextWord()
  tell application "System Events"
    # 124 = Right arrow
    key code 124 using {option down}
  end tell
end nextWord

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp
