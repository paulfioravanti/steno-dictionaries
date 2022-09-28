property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"
property Web : script "steno-dictionaries/web"

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Web's Browsers then
    performVimStylePageDown()
  else if activeApp is contained by Terminal's Apps then
    terminalPageDown()
  else
    performPageDown()
  end if
end run

on performVimStylePageDown()
  tell application "System Events" to tell process activeApp
    # Vimium/Vimari-specific. Enables use of smooth scrolling.
    # https://github.com/philc/vimium
    # https://github.com/televator-apps/vimari
    keystroke "d"
  end tell
end performVimStylePageDown

on terminalPageDown()
  if Terminal's isVimModeCompatibleProcess(activeApp) then
    performVimPageDown()
  else
    performTerminalPageDown()
  end if
end terminalPageDown

on performVimPageDown()
  tell application "System Events" to tell process activeApp
    keystroke "d" using control down
  end tell
end performVimTPageDown

on performTerminalPageDown()
  tell application "System Events" to tell process activeApp
    key code System's PageDownKeyCode using command down
  end tell
end performTerminalPageDown

on performPageDown()
  tell application "System Events" to tell process activeApp
    key code System's PageDownKeyCode
  end tell
end performPageDown
