property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"
property HyphenKeyCode : 27

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is not contained by Terminal's Apps then
    System's displayError("Horizontal splitting not supported with", activeApp)
  end if

  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimHorizontalSplit()
  else if processName contains "tmux" then
    performTmuxHorizontalSplit()
  else if activeApp is "iTerm2" then
    performiTerm2HorizontalSplit()
  else
    performTerminalHorizontalSplit()
  end
end run

on performVimHorizontalSplit()
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke ":split"
    key code System's ReturnKeyCode
  end tell
end performVimHorizontalSplit

on performTmuxHorizontalSplit()
  tell application "System Events" to tell process activeApp
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
