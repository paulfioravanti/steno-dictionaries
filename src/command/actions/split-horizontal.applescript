property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is not contained by Util's TerminalApps then
    Util's displayError("Splitting horizontally not supported with", activeApp)
  end if

  set processName to Util's getTerminalProcessName(activeApp)

  if processName contains "vim" then
    performVimHorizontalSplit(activeApp)
  else if processName contains "tmux" then
    performTmuxHorizontalSplit(activeApp)
  else if activeApp is "iTerm2" then
    performiTerm2HorizontalSplit()
  else
    performTerminalHorizontalSplit()
  end
end run

on performVimHorizontalSplit(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke ":split"
    # 36 = Return
    key code 36
  end tell
end performVimHorizontalSplit

on performTmuxHorizontalSplit(activeApp)
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
    keystroke "a" using {control down}
    # 27 = -
    key code 27
  end tell
end performTmuxHorizontalSplit

on performiTerm2HorizontalSplit()
  tell application "System Events" to tell process "iTerm2"
    keystroke "d" using {shift down, command down}
  end tell
end performiTerm2HorizontalSplit

on performTerminalHorizontalSplit()
  tell application "System Events" to tell process "Terminal"
    keystroke "d" using {command down}
  end tell
end performTerminalHorizontalSplit
