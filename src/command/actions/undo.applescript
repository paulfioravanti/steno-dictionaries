property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalUndo(activeApp)
  else
    performUndo(activeApp)
  end if
end run

on terminalUndo(activeApp)
  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimUndo(activeApp)
  else
    performUndo(activeApp)
  end if
end terminalUndo

on performVimUndo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "u"
  end tell
end performVimUndo

on performUndo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "z" using {command down}
  end tell
end performUndo
