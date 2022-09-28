property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalUndo()
  else
    performUndo()
  end if
end run

on terminalUndo()
  if Terminal's getProcessName(activeApp) contains "vim" then
    performVimUndo()
  else
    performUndo()
  end if
end terminalUndo

on performVimUndo()
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke "u"
  end tell
end performVimUndo

on performUndo()
  tell application "System Events" to tell process activeApp
    keystroke "z" using command down
  end tell
end performUndo
