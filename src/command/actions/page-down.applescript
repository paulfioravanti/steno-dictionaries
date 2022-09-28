property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"
property Web : script "steno-dictionaries/web"

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Web's Browsers then
    performVimStylePageDown(activeApp)
  else if activeApp is contained by Terminal's Apps then
    terminalPageDown(activeApp)
  else
    performPageDown(activeApp)
  end if
end run

on performVimStylePageDown(activeApp)
  tell application "System Events" to tell process activeApp
    # Vimium/Vimari-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    # https://github.com/televator-apps/vimari
    keystroke "d"
  end tell
end performVimStylePageDown

on terminalPageDown(activeApp)
  set processName to Terminal's getProcessName(activeApp)

  if Terminal's isVimModeCompatibleProcess(processName) then
    performVimPageDown(activeApp)
  else
    performTerminalPageDown(activeApp)
  end if
end terminalPageDown

on performVimPageDown(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "d" using {control down}
  end tell
end performVimTPageDown

on performTerminalPageDown(activeApp)
  tell application "System Events" to tell process activeApp
    key code System's PageDownKeyCode using {command down}
  end tell
end performTerminalPageDown

on performPageDown(activeApp)
  tell application "System Events" to tell process activeApp
    key code System's PageDownKeyCode
  end tell
end performPageDown
