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
    # https://github.com/SKaplanOfficial/PyXA/issues/16
    # keystroke "z" using {command down, shift down}
    key down command
    key down shift
    keystroke "z"
    key up shift
    key up command
  end tell
end performRedo
