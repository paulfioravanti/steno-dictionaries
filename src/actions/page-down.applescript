property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by Web's Browsers then
    performVimStylePageDown()
  else if activeProcess is contained by System's TerminalApps then
    terminalPageDown()
  else
    performPageDown()
  end if
end run

on performVimStylePageDown()
  tell application "System Events" to tell process activeProcess
    # Vimium/Vimari-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    # https://github.com/televator-apps/vimari
    keystroke "d"
  end tell
end performVimStylePageDown

on terminalPageDown()
  if System's isVimModeCompatibleProcess(activeProcess) then
    performVimPageDown()
  else
    performTerminalPageDown()
  end if
end terminalPageDown

on performVimPageDown()
  tell application "System Events" to tell process activeProcess
    keystroke "d" using control down
  end tell
end performVimPageDown

on performTerminalPageDown()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's PageDown using command down
  end tell
end performTerminalPageDown

on performPageDown()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's PageDown
  end tell
end performPageDown
