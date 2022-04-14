on run
  set activeApp to getActiveApp()

  if activeApp is "Google Chrome" then
    performGoogleChromePageUp()
  else if activeApp is "iTerm2" then
    performiTerm2PageUp()
  else
    performPageUp()
  end if
end run

on performGoogleChromePageUp()
  tell application "System Events"
    # Vimium-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    keystroke "u"
  end tell
end performGoogleChromePageUp

on performiTerm2PageUp()
  set processName to getiTermProcessName()

  if processName contains "vim" or processName contains "tmux" then
    performVimTmuxPageUp()
  else
    performPageUp()
  end if
end performiTerm2PageUp

on performVimTmuxPageUp()
  tell application "System Events"
    keystroke "u" using {control down}
  end tell
end performVimTmuxPageUp

on performPageUp()
  tell application "System Events"
    # 116 = Page Up
    key code 116
  end tell
end performPageUp

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
