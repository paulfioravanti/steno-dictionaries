property System : script "steno-dictionaries/system"
property HyphenKeyCode : 27

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is not contained by System's TerminalApps then
    System's displayError("Horizontal splitting not supported with", activeProcess)
  end if

  set activeTerminalProcess to System's getActiveTerminalProcess(activeProcess)

  if activeTerminalProcess contains "vim" then
    performVimHorizontalSplit()
  else if activeTerminalProcess contains "tmux" then
    performTmuxHorizontalSplit()
  else if activeProcess is "iTerm2" then
    performiTerm2HorizontalSplit()
  else
    performTerminalHorizontalSplit()
  end
end run

on performVimHorizontalSplit()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke ":split"
    key code System's ReturnKeyCode
  end tell
end performVimHorizontalSplit

on performTmuxHorizontalSplit()
  tell application "System Events" to tell process activeProcess
    # NOTE: These keystrokes are dependent on the following tmux
    # config settings in tmux.conf:
    #
    # unbind-key C-b
    # set-option -g prefix C-a
    # bind-key C-a send-prefix
    # bind-key - split-window -v
    #
    # REF: https://github.com/paulfioravanti/dotfiles/blob/master/tmux.conf
    keystroke "a" using control down
    key code HyphenKeyCode
  end tell
end performTmuxHorizontalSplit

on performiTerm2HorizontalSplit()
  tell application "System Events" to tell process "iTerm2"
    keystroke "d" using {shift down, command down}
  end tell
end performiTerm2HorizontalSplit

on performTerminalHorizontalSplit()
  tell application "System Events" to tell process "Terminal"
    keystroke "d" using command down
  end tell
end performTerminalHorizontalSplit
