property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

on run
  set activeApp to System's getActiveApp()

  # NOTE: Vertical splitting not supported in Mac Terminal
  if activeApp is not equal to "iTerm2" then
    System's displayError("Vertical splitting not supported with", activeApp)
  end if

  set processName to Terminal's getiTermProcessName()

  if processName contains "vim" then
    performVimVerticalSplit()
  else if processName contains "tmux" then
    performTmuxVerticalSplit()
  else
    performiTerm2VerticalSplit()
  end
end run

on performVimVerticalSplit()
  tell application "System Events" to tell process "iTerm2"
    # 53 = Escape
    key code 53
    keystroke ":vsplit"
    # 36 = Return
    key code 36
  end tell
end performVimVerticalSplit

on performTmuxVerticalSplit()
  tell application "System Events" to tell process "iTerm2"
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

on performiTerm2VerticalSplit()
  tell application "System Events" to tell process "iTerm2"
    keystroke "d" using {command down}
  end tell
end performiTerm2VerticalSplit
