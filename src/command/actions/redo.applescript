property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalRedo()
  else
    performRedo()
  end if
end run

on terminalRedo()
  if Terminal's getProcessName(activeApp) contains "vim" then
    performVimRedo()
  else
    performRedo()
  end if
end terminalRedo

on performVimRedo()
  tell application "System Events" to tell process activeApp
    keystroke "r" using control down
  end tell
end performVimRedo

on performRedo()
  tell application "System Events" to tell process activeApp
    keystroke "z" using {command down, shift down}
  end tell
end performRedo
