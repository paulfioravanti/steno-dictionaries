on run
  set activeApp to getActiveApp()

  if activeApp is not equal to "iTerm2" then
    displayError()
  end if

  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimVerticalSplit()
  else if processName contains "tmux" then
    performTmuxVerticalSplit()
  else
    displayError(activeApp)
  end
end run

on performVimVerticalSplit()
  tell application "System Events"
    # 53 = Escape
    key code 53
    keystroke ":vsplit"
    # 36 = Return
    key code 36
  end tell
end performVimVerticalSplit

on performTmuxVerticalSplit()
  tell application "System Events"
    # NOTE: These keystrokes are dependent on the following tmux
    # config settings in tmux.conf:
    #
    # unbind-key C-b
    # set-option -g prefix C-a
    # bind-key C-a send-prefix
    # bind-key | split-window -h
    #
    # REF: https://github.com/paulfioravanti/dotfiles/blob/master/tmux.conf
    keystroke "a" using {control down}
    # 42 = |
    key code 42 using {shift down}
  end tell
end performTmuxVerticalSplit

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
  set errorMessage to "Splitting vertically not supported with " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
