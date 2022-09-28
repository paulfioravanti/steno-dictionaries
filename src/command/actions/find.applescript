property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalFind(activeApp)
  else
    performFind(activeApp)
  end if
end run

on terminalFind(activeApp)
  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimFind(activeApp)
  else
    performFind(activeApp)
  end if
end terminalFind

on performVimFind(activeApp)
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke "/"
  end tell
end performVimFind

on performFind(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "f" using {command down}
  end tell
end performFind
