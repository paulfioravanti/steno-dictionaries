property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  # NOTE: Vertical splitting not supported in Mac Terminal
  if activeApp is not equal to "iTerm2" then
    Util's displayError("Splitting vertically not supported with", activeApp)
  end if

  set processName to Util's getiTermProcessName()

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
end performiTerm2VerticalSplit
