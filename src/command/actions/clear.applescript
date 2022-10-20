property System : script "steno-dictionaries/system"
property DeleteKeyCode : 51

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "GZDoom" then
    performDoomTypistClear()
  else if activeProcess is contained by System's TerminalApps then
    terminalClear()
  else
    display notification "Nothing to clear." with title "Error"
  end if
end run

on performDoomTypistClear()
  tell application "System Events" to tell process activeProcess
    key code DeleteKeyCode using control down
  end tell
end performDoomTypistClear

on terminalClear()
  if System's getActiveTerminalProcess(activeProcess) contains "vim" then
    performVimClear()
  else
    performTerminalClear()
  end if
end terminalClear

on performVimClear()
  # NOTE: This is essentially clearing find matches.
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke ":" using shift down
    keystroke "nohlsearch"
    key code System's ReturnKeyCode
    keystroke ":" using shift down
    keystroke "call clearmatches()"
    key code System's ReturnKeyCode
  end tell
end performVimClear

on performTerminalClear()
  tell application "System Events" to tell process activeProcess
    keystroke "l" using control down
  end tell
end performTerminalClear
