property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    terminalSave()
  else if activeProcess is "GZDoom" then
    gzDoomSave()
  else
    performSave()
  end if
end run

on terminalSave()
  if System's getActiveTerminalProcess(activeProcess) contains "vim" then
    performVimSave()
  else
    System's displayError("Nothing to save with", activeProcess)
  end if
end terminalSave

on gzDoomSave()
  set windowName to System's getActiveProcessWindowName(activeProcess)
  if windowName contains "The Ultimate DOOM" then
    performDoomSave()
  else
    System's displayError("No save action defined for", windowName)
  end if
end gzDoomSave

on performVimSave()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke ":write"
    key code KeyCode's Return
  end tell
end performVimSave

on performDoomSave()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's F6
  end tell
end performDoomSave

on performSave()
  tell application "System Events" to tell process activeProcess
    keystroke "s" using command down
  end tell
end performSave
