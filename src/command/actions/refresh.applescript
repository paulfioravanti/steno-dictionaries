on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    performiTerm2Refresh(activeApp)
  else
    performRefresh(activeApp)
  end if
end run

on performiTerm2Refresh(activeApp)
  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimRefresh(activeApp)
  else
    display notification "Nothing to refresh." with title "Error"
  end if
end performiTerm2Refresh

on performVimRefresh(activeApp)
  tell application "System Events" to tell process activeApp
    # Refresh the Ctrl-P cache as it sometimes does not pick up the
    # existence of new files: https://github.com/kien/ctrlp.vim
    # 96 = F5
    key code 96
  end tell
end performVimRefresh

on performRefresh(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "r" using {command down}
  end tell
end performRefresh

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
