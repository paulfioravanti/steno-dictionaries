property System : script "steno-dictionaries/system"
property RightArrowKeyCode : 124

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    performTerminalNextWord()
  else
    performNextWord()
  end if
end run

on performTerminalNextWord()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke "f"
  end tell
end performTerminalNextWord

on performNextWord()
  tell application "System Events" to tell process activeProcess
    key code RightArrowKeyCode using option down
  end tell
end performNextWord
