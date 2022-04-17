on run
  set activeApp to getActiveApp()

  if activeApp is not equal to "iTerm2" then
    displayError(activeApp)
  end if

  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimVerticalSplit(activeApp)
  else if processName contains "tmux" then
    performTmuxVerticalSplit(activeApp)
  else
    performiTerm2VerticalSplit(activeApp)
  end
end run

on performVimVerticalSplit(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke ":vsplit"
    # 36 = Return
    key code 36
  end tell
end performVimVerticalSplit

on performTmuxVerticalSplit(activeApp)
  tell application "System Events" to tell process activeApp
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

on performiTerm2VerticalSplit(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "d" using {command down}
  end tell
end performiTerm2HorizontalSplit

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
