property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "GZDoom" then
    performDoomTypistClear()
  else if activeProcess is contained by System's TerminalApps then
    terminalClear()
  else
    System's displayError("Nothing to clear in", activeProcess)
  end if
end run

on performDoomTypistClear()
  tell application "System Events" to tell process activeProcess
    # Erase whole answer during combat mode
    # REF: https://github.com/mmaulwurff/typist.pk3#combat-mode-red
    key code KeyCode's DeleteKey using control down
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
    key code KeyCode's Escape
    keystroke ":" using shift down
    keystroke "nohlsearch"
    key code KeyCode's Return
    keystroke ":" using shift down
    keystroke "call clearmatches()"
    key code KeyCode's Return
  end tell
end performVimClear

on performTerminalClear()
  tell application "System Events" to tell process activeProcess
    keystroke "l" using control down
  end tell
end performTerminalClear
