on run
  set activeApp to getActiveApp()

  if activeApp is not equal to "iTerm2" then
    displayError(activeApp)
  end if

  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimHorizontalSplit()
  else if processName contains "tmux" then
    performTmuxHorizontalSplit()
  else
    performiTerm2HorizontalSplit()
  end
end run

on performVimHorizontalSplit()
  tell application "System Events"
    # 53 = Escape
    key code 53
    keystroke ":split"
    # 36 = Return
    key code 36
  end tell
end performVimHorizontalSplit

on performTmuxHorizontalSplit()
  tell application "System Events"
    # NOTE: These keystrokes are dependent on the following tmux
    # config settings in tmux.conf:
    #
    # unbind-key C-b
    # set-option -g prefix C-a
    # bind-key C-a send-prefix
    # bind-key - split-window -v
    #
    # REF: https://github.com/paulfioravanti/dotfiles/blob/master/tmux.conf
    keystroke "a" using {control down}
    # 27 = -
    key code 27
  end tell
end performTmuxHorizontalSplit

on performiTerm2HorizontalSplit()
  tell application "System Events"
    keystroke "d" using {shift down, command down}
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
  set errorMessage to "Splitting horizontally not supported with " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
