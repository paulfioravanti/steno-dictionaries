on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    performiTerm2Find(activeApp)
  else
    performFind(activeApp)
  end if
end run

on performiTerm2Find(activeApp)
  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimFind(activeApp)
  else
    performFind(activeApp)
  end if
end performiTerm2Find

on performVimFind(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke "/"
  end tell
end performVimFind

on performFind(activeApp)
  tell application "System Events" to tell process activeApp
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
