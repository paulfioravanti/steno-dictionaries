property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimRedo()
  else
    performRedo()
  end if
end run

on performVimRedo()
  tell application "System Events" to tell process activeProcess
    keystroke "r" using control down
  end tell
end performVimRedo

on performRedo()
  tell application "System Events" to tell process activeProcess
    keystroke "z" using {command down, shift down}
  end tell
end performRedo
