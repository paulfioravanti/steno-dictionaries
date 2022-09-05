property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalRedo(activeApp)
  else
    performRedo(activeApp)
  end if
end run

on terminalRedo(activeApp)
  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimRedo(activeApp)
  else
    performRedo(activeApp)
  end if
end terminalRedo

on performVimRedo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "r" using {control down}
  end tell
end performVimRedo

on performRedo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "z" using {command down, shift down}
  end tell
end performRedo
