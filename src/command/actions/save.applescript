property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    terminalSave()
  else
    performSave()
  end if
end run

on terminalSave()
  if System's getActiveTerminalProcess(activeProcess) contains "vim" then
    performVimSave()
  else
    display notification "Nothing to save." with title "Error"
  end if
end terminalSave

on performVimSave()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke ":write"
    key code KeyCode's Return
  end tell
end performVimSave

on performSave()
  tell application "System Events" to tell process activeProcess
    keystroke "s" using command down
  end tell
end performSave
