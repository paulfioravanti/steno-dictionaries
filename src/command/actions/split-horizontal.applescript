property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is not equal to "iTerm2" then
    Util's displayError("Splitting horizontally not supported with", activeApp)
  end if

  set processName to Util's getiTermProcessName()

  if processName contains "vim" then
    performVimHorizontalSplit(activeApp)
  else if processName contains "tmux" then
    performTmuxHorizontalSplit(activeApp)
  else
    performiTerm2HorizontalSplit(activeApp)
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

on performiTerm2HorizontalSplit(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "d" using {shift down, command down}
  end tell
end performiTerm2HorizontalSplit
