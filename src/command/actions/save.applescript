on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    performiTerm2Save()
  else
    performSave()
  end if
end run

on performiTerm2Save()
  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimSave()
  else
    display notification "Nothing to save." with title "Error"
  end if
end performiTerm2Command

on performVimSave()
  tell application "System Events"
    # 53 = Escape
    key code 53
    keystroke ":write"
    # 36 = Return
    key code 36
  end tell
end performVimSave

on performSave()
  tell application "System Events"
    keystroke "s" using {command down}
  end tell
end performSave

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
