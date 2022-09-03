property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "Google Chrome" then
    performGoogleChromePageUp(activeApp)
  else if activeApp is contained by Util's TerminalApps then
    terminalPageUp(activeApp)
  else
    performPageUp(activeApp)
  end if
end run

on performGoogleChromePageUp(activeApp)
  tell application "System Events" to tell process activeApp
    # Vimium-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    keystroke "u"
  end tell
end performGoogleChromePageUp

on terminalPageUp(activeApp)
  set processName to Util's getiTermProcessName()

  if Util's isVimModeCompatibleProcess(processName) then
    performVimPageUp(activeApp)
  else
    performTerminalPageUp(activeApp)
  end if
end terminalPageUp

on performVimPageUp(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "u" using {control down}
  end tell
end performVimPageUp

on performTerminalPageUp(activeApp)
  tell application "System Events" to tell process activeApp
    # 116 = Page Up
    key code 116 using {command down}
  end tell
end performTerminalPageUp

on performPageUp(activeApp)
  tell application "System Events" to tell process activeApp
    # 116 = Page Up
    key code 116
  end tell
end performPageUp
