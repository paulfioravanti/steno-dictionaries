property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

property PipeKeyCode : 42

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
    key code System's EscapeKeyCode
    keystroke ":vsplit"
    key code System's ReturnKeyCode
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
    key code PipeKeyCode using {shift down}
  end tell
end performTmuxVerticalSplit

on performiTerm2VerticalSplit()
  tell application "System Events" to tell process "iTerm2"
    keystroke "d" using {command down}
  end tell
end performiTerm2VerticalSplit
