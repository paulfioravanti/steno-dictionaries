on run
  set activeApp to getActiveApp()

  if activeApp is "Google Chrome" then
    performGoogleChromeQuit(activeApp)
  else if activeApp is "iTerm2" then
    performiTerm2Quit(activeApp)
  else
    performQuit(activeApp)
  end if
end run

on performGoogleChromeQuit(activeApp)
  tell application "System Events" to tell process activeApp
    # For Chrome, consider "quitting" to mean "quitting the current tab".
    # Use "Quit Hard" script to actually quit the application.
    keystroke "w" using {command down}
  end tell
end performGoogleChromeQuit

on performiTerm2Quit(activeApp)
  set processName to getiTermProcessName()

  if processName contains "vim" then
    performQuitVim(activeApp)
  else if processName contains "elm" then
    performQuitConsole(activeApp, ":exit")
  else if processName contains "node" then
    performQuitConsole(activeApp, ".exit")
  else if processName contains "python" then
    performQuitConsole(activeApp, "exit()")
  else if processName contains "grip" or processName contains "rails server" then
    performQuitInterrupt(activeApp)
  else if processName contains "iex" or processName contains "mix" then
    performQuitInterrupt(activeApp)
    performQuitInterrupt(activeApp)
  else if processName contains "diff" or processName contains "less" then
    performQuitPager(activeApp)
  else
    performQuitConsole(activeApp, "exit")
  end if
end performiTerm2Quit

on performQuitVim(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke ":quit"
    # 36 = Return
    key code 36
  end tell
end performQuitVim

on performQuitConsole(activeApp, exitCommand)
  tell application "System Events" to tell process activeApp
    keystroke exitCommand
    # 36 = Return
    key code 36
  end tell
end performQuitElm

on performQuitInterrupt(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "c" using {control down}
  end tell
end performQuitInterrupt

on performQuitPager(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "q"
  end tell
end performQuitPager

on performQuit(activeApp)
  tell application "System Events" to tell process activeApp
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
