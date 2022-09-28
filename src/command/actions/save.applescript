property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalSave()
  else
    performSave()
  end if
end run

on terminalSave()
  if Terminal's getProcessName(activeApp) contains "vim" then
    performVimSave()
  else
    display notification "Nothing to save." with title "Error"
  end if
end terminalSave

on performVimSave()
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke ":write"
    key code System's ReturnKeyCode
  end tell
end performVimSave

on performSave()
  tell application "System Events" to tell process activeApp
    keystroke "s" using command down
  end tell
end performSave
