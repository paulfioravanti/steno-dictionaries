property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"
property Web : script "steno-dictionaries/web"

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Web's Browsers then
    performVimStylePageUp()
  else if activeApp is contained by Terminal's Apps then
    terminalPageUp()
  else
    performPageUp()
  end if
end run

on performVimStylePageUp()
  tell application "System Events" to tell process activeApp
    # Vimium/Vimari-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    # https://github.com/televator-apps/vimari
    keystroke "u"
  end tell
end performVimStylePageUp

on terminalPageUp()
  if Terminal's isVimModeCompatibleProcess(activeApp) then
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
    key code System's PageUpKeyCode using {command down}
  end tell
end performTerminalPageUp

on performPageUp(activeApp)
  tell application "System Events" to tell process activeApp
    key code System's PageUpKeyCode
  end tell
end performPageUp
