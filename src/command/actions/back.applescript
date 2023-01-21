property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimBackJumplist()
  else if activeProcess is contained by Web's Browsers then
    performBrowserBackHistory()
  else
    System's displayError("No meaning for going back with", activeProcess)
  end if
end run

on performVimBackJumplist()
  tell application "System Events" to tell process activeProcess
    keystroke "o" using control down
  end tell
end performVimBackJumplist

on performBrowserBackHistory()
  tell application "System Events" to tell process activeProcess
    keystroke "[" using command down
  end tell
end performBrowserBackHistory
