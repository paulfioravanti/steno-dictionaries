on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    performiTerm2Find()
  else
    performFind()
  end if
end run

on performiTerm2Find()
  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimFind()
  else
    performFind()
  end if
end performiTerm2Find

on performVimFind()
  tell application "System Events"
    # 53 = Escape
    key code 53
    keystroke "/"
  end tell
end performVimFind

on performFind()
  tell application "System Events"
    keystroke "f" using {command down}
  end tell
end performFind

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on getiTermProcessName()
  tell application "iTerm2"
    # REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current window
  end tell
end getiTermProcessName
