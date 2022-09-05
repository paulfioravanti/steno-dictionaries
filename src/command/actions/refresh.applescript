property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is contained by Util's TerminalApps then
    terminalRefresh(activeApp)
  else
    performRefresh(activeApp)
  end if
end run

on terminalRefresh(activeApp)
  set processName to Util's getTerminalProcessName(activeApp)

  if processName contains "vim" then
    performVimRefresh(activeApp)
  else
    display notification "Nothing to refresh." with title "Error"
  end if
end terminalRefresh

on performVimRefresh(activeApp)
  tell application "System Events" to tell process activeApp
    # Refresh the Ctrl-P cache as it sometimes does not pick up the
    # existence of new files: https://github.com/kien/ctrlp.vim
    # 96 = F5
    key code 96
  end tell
end performVimRefresh

on performRefresh(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "r" using {command down}
  end tell
end performRefresh
