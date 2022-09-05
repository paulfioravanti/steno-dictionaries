property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalSave(activeApp)
  else
    performSave(activeApp)
  end if
end run

on terminalSave(activeApp)
  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimSave(activeApp)
  else
    display notification "Nothing to save." with title "Error"
  end if
end terminalSave

on performVimSave(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke ":write"
    # 36 = Return
    key code 36
  end tell
end performVimSave

on performSave(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "s" using {command down}
  end tell
end performSave
