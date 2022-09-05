property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is contained by Util's WebBrowsers then
    performVimStylePageUp(activeApp)
  else if activeApp is contained by Util's TerminalApps then
    terminalPageUp(activeApp)
  else
    performPageUp(activeApp)
  end if
end run

on performVimStylePageUp(activeApp)
  tell application "System Events" to tell process activeApp
    # Vimium/Vimari-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    # https://github.com/televator-apps/vimari
    keystroke "u"
  end tell
end performVimStylePageUp

on terminalPageUp(activeApp)
  set processName to Util's getTerminalProcessName(activeApp)

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
