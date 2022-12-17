property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    performTerminalMoveOneWordBack()
  else
    performMoveOneWordBack()
  end if
end run

on performTerminalMoveOneWordBack()
  tell application "System Events" to tell process activeProcess
    # NOTE: This works for Vim as well
    key code System's EscapeKeyCode
    keystroke "b"
  end tell
end performTerminalMoveOneWordBack

on performMoveOneWordBack()
  tell application "System Events" to tell process activeProcess
    key code System's LeftArrowKeyCode using option down
  end tell
end performMoveOneWordBack
