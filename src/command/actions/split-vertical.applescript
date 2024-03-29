property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  # NOTE: Vertical splitting not supported in Mac Terminal
  if activeProcess is not equal to "iTerm2" then
    System's displayError("Vertical splitting not supported with", activeProcess)
  end if

  set activeTerminalProcess to System's getActiveiTermProcess()

  if activeTerminalProcess contains "vim" then
    performVimVerticalSplit()
  else if activeTerminalProcess contains "tmux" then
    performTmuxVerticalSplit()
  else
    performiTerm2VerticalSplit()
  end
end run

on performVimVerticalSplit()
  tell application "System Events" to tell process "iTerm2"
    key code KeyCode's Escape
    keystroke ":vsplit"
    key code KeyCode's Return
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
    keystroke "a" using control down
    key code KeyCode's Pipe using shift down
  end tell
end performTmuxVerticalSplit

on performiTerm2VerticalSplit()
  tell application "System Events" to tell process "iTerm2"
    keystroke "d" using command down
  end tell
end performiTerm2VerticalSplit
