property System : script "steno-dictionaries/system"
property F5KeyCode : 96

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    terminalRefresh()
  else
    performRefresh()
  end if
end run

on terminalRefresh()
  if System's getActiveTerminalProcess(activeProcess) contains "vim" then
    performVimRefresh()
  else
    display notification "Nothing to refresh." with title "Error"
  end if
end terminalRefresh

on performVimRefresh()
  tell application "System Events" to tell process activeProcess
    # Refresh the Ctrl-P cache as it sometimes does not pick up the
    # existence of new files: https://github.com/kien/ctrlp.vim
    key code F5KeyCode
  end tell
end performVimRefresh

on performRefresh()
  tell application "System Events" to tell process activeProcess
    keystroke "r" using command down
  end tell
end performRefresh
