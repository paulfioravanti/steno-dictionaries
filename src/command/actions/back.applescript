property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    terminalBack()
  else if activeProcess is contained by Web's Browsers then
    performBrowserBackHistory()
  else
    System's displayError("No meaning for going back with", activeProcess)
  end if
end run

on terminalBack()
  set activeTerminalProcess to System's getActiveTerminalProcess(activeProcess)

  if activeTerminalProcess contains "vim" then
    performVimBackJumplist()
  else
    performChangeToPreviousDirectory()
  end if
end terminalBack

on performVimBackJumplist()
  tell application "System Events" to tell process activeProcess
    keystroke "o" using control down
  end tell
end performVimBackJumplist

on performChangeToPreviousDirectory()
  tell application "System Events" to tell process activeProcess
    keystroke "cd -"
    key code KeyCode's Return
  end tell
end performChangeToPreviousDirectory

on performBrowserBackHistory()
  tell application "System Events" to tell process activeProcess
    keystroke "[" using command down
  end tell
end performBrowserBackHistory
