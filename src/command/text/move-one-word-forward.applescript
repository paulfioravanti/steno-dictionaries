property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    terminalMoveOneWordForward()
  else
    performMoveOneWordForward()
  end if
end run

on terminalMoveOneWordForward()
  if System's getActiveTerminalProcess(activeProcess) contains "vim" then
    performVimMoveOneWordForward()
  else
    performTerminalMoveOneWordForward()
  end if
end terminalMoveOneWordForward

on performVimMoveOneWordForward()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke "w"
  end tell
end performVimMoveOneWordForward

on performTerminalMoveOneWordForward()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke "f"
  end tell
end performTerminalMoveOneWordForward

on performMoveOneWordForward()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's RightArrow using option down
  end tell
end performMoveOneWordForward
