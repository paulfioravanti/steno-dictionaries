property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalFind()
  else
    performFind()
  end if
end run

on terminalFind()
  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimFind()
  else
    performFind()
  end if
end terminalFind

on performVimFind()
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke "/"
  end tell
end performVimFind

on performFind()
  tell application "System Events" to tell process activeApp
    keystroke "f" using command down
  end tell
end performFind
