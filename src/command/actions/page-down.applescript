on run
  set activeApp to getActiveApp()

  if activeApp is "Google Chrome" then
    performGoogleChromePageDown()
  else if activeApp is "iTerm2" then
    performiTerm2PageDown()
  else
    performPageDown()
  end if
end run

on performGoogleChromePageDown()
  tell application "System Events"
    # Vimium-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    keystroke "d"
  end tell
end performGoogleChromePageDown

on performiTerm2PageDown()
  set processName to getiTermProcessName()

  if processName contains "vim" or processName contains "tmux" then
    performVimTmuxPageDown()
  else
    performPageDown()
  end if
end performiTerm2PageDown

on performVimTmuxPageDown()
  tell application "System Events"
    keystroke "d" using {control down}
  end tell
end performVimTmuxPageDown

on performPageDown()
  tell application "System Events"
    # 121 = Page Down
    key code 121
  end tell
end performPageDown

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
