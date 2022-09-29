property System : script "steno-dictionaries/system"
property LeftArrowKeyCode : 123

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    performTerminalPreviousWord()
  else
    performPreviousWord()
  end if
end run

on performTerminalPreviousWord()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke "b"
  end tell
end performTerminalPreviousWord

on performPreviousWord()
  tell application "System Events" to tell process activeProcess
    key code LeftArrowKeyCode using option down
  end tell
end performPreviousWord
