property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    terminalNextWord()
  else
    performNextWord()
  end if
end run

on terminalNextWord()
  if System's getActiveTerminalProcess(activeProcess) contains "vim" then
    performVimNextWord()
  else
    performTerminalNextWord()
  end if
end terminalNextWord

on performVimNextWord()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke "w"
  end tell
end performVimNextWord

on performTerminalNextWord()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke "f"
  end tell
end performTerminalNextWord

on performNextWord()
  tell application "System Events" to tell process activeProcess
    key code System's RightArrowKeyCode using option down
  end tell
end performNextWord
