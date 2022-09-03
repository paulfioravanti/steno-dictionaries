property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "Google Chrome" then
    performGoogleChromePageDown(activeApp)
  else if activeApp is contained by Util's TerminalApps then
    terminalPageDown(activeApp)
  else
    performPageDown(activeApp)
  end if
end run

on performGoogleChromePageDown(activeApp)
  tell application "System Events" to tell process activeApp
    # Vimium-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    keystroke "d"
  end tell
end performGoogleChromePageDown

on terminalPageDown(activeApp)
  set processName to Util's getiTermProcessName()

  if Util's isVimModeCompatibleProcess(processName) then
    performVimPageDown(activeApp)
  else
    performTerminalPageDown(activeApp)
  end if
end terminalPageDown

on performVimPageDown(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "d" using {control down}
  end tell
end performVimTPageDown

on performTerminalPageDown(activeApp)
  tell application "System Events" to tell process activeApp
    # 121 = Page Down
    key code 121 using {command down}
  end tell
end performTerminalPageDown

on performPageDown(activeApp)
  tell application "System Events" to tell process activeApp
    # 121 = Page Down
    key code 121
  end tell
end performPageDown
