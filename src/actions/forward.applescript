property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimForwardJumplist()
  else if activeProcess is contained by Web's Browsers then
    performBrowserForwardHistory()
  else
    System's displayError("No meaning for going forward with", activeProcess)
  end if
end run

on performVimForwardJumplist()
  tell application "System Events" to tell process activeProcess
    keystroke "i" using control down
  end tell
end performVimForwardJumplist

on performBrowserForwardHistory()
  tell application "System Events" to tell process activeProcess
    keystroke "]" using command down
  end tell
end performBrowserForwardHistory
