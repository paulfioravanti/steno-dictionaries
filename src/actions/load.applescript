property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "GZDoom" then
    gzDoomLoad()
  else
    System's displayError("No load action defined for", activeProcess)
  end if
end run

on gzDoomLoad()
  set windowName to System's getActiveProcessWindowName(activeProcess)
  if windowName contains "The Ultimate DOOM" then
    performDoomLoad()
  else
    System's displayError("No load action defined for", windowName)
  end if
end gzDoomLoad

on performDoomLoad()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's F9
  end tell
end performDoomLoad
