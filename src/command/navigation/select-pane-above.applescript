on run
  set activeApp to getActiveApp()

  if activeApp is not equal to "iTerm2" then
    displayError(activeApp)
  end if

  set processName to getiTermProcessName()

  if processName contains "vim" or processName contains "tmux" then
    performVimTmuxSelectPaneAbove()
  else
    performiTerm2SelectPaneAbove()
  end
end run

on performVimTmuxSelectPaneAbove()
  tell application "System Events"
    keystroke "k" using {control down}
  end tell
end performVimTmuxSelectPaneAbove

on performiTerm2SelectPaneAbove()
  tell application "System Events"
    # 126 = Up arrow
    key code 126 using {option down, command down}
  end tell
end performiTerm2SelectPaneAbove

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

on displayError(activeApp)
  set errorMessage to "Navigating splits not supported with " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
