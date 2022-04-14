on run
  set activeApp to getActiveApp()

  if activeApp is "Google Chrome" then
    performGoogleChromeQuit()
  else if activeApp is "iTerm2" then
    performiTerm2Quit()
  else
    performQuit()
  end if
end run

on performGoogleChromeQuit()
  tell application "System Events"
    # For Chrome, consider "quitting" to mean "quitting the current tab".
    # Use "Quit Hard" script to actually quit the application.
    keystroke "w" using {command down}
  end tell
end performGoogleChromeQuit

on performiTerm2Quit()
  set processName to getiTermProcessName()

  if processName contains "vim" then
    performQuitVim()
  else if processName contains "elm" then
    performQuitConsole(":exit")
  else if processName contains "node" then
    performQuitConsole(".exit")
  else if processName contains "python" then
    performQuitConsole("exit()")
  else if processName contains "grip" or processName contains "rails server" then
    performQuitInterrupt()
  else if processName contains "iex" or processName contains "mix" then
    performQuitInterrupt()
    performQuitInterrupt()
  else if processName contains "diff" or processName contains "less" then
    performQuitPager()
  else
    performQuitConsole("exit")
  end if
end performiTerm2Quit

on performQuitVim()
  tell application "System Events"
    # 53 = Escape
    key code 53
    keystroke ":quit"
    # 36 = Return
    key code 36
  end tell
end performQuitVim

on performQuitConsole(exitCommand)
  tell application "System Events"
    keystroke exitCommand
    # 36 = Return
    key code 36
  end tell
end performQuitElm

on performQuitInterrupt()
  tell application "System Events"
    keystroke "c" using {control down}
  end tell
end performQuitInterrupt

on performQuitPager()
  tell application "System Events"
    keystroke "q"
  end tell
end performQuitPager

on performQuit()
  tell application "System Events"
    keystroke "q" using {command down}
  end tell
end performQuit

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
