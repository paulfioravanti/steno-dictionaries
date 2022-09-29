property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by Web's Browsers then
    performVimStylePageUp()
  else if activeProcess is contained by System's TerminalApps then
    terminalPageUp()
  else
    performPageUp()
  end if
end run

on performVimStylePageUp()
  tell application "System Events" to tell process activeProcess
    # Vimium/Vimari-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    # https://github.com/televator-apps/vimari
    keystroke "u"
  end tell
end performVimStylePageUp

on terminalPageUp()
  if System's isVimModeCompatibleProcess(activeProcess) then
    performVimPageUp()
  else
    performTerminalPageUp()
  end if
end terminalPageUp

on performVimPageUp()
  tell application "System Events" to tell process activeProcess
    keystroke "u" using control down
  end tell
end performVimPageUp

on performTerminalPageUp()
  tell application "System Events" to tell process activeProcess
    key code System's PageUpKeyCode using command down
  end tell
end performTerminalPageUp

on performPageUp()
  tell application "System Events" to tell process activeProcess
    key code System's PageUpKeyCode
  end tell
end performPageUp
