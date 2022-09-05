property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is contained by Util's TerminalApps then
    terminalRedo(activeApp)
  else
    performRedo(activeApp)
  end if
end run

on terminalRedo(activeApp)
  set processName to Util's getiTermProcessName()

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
