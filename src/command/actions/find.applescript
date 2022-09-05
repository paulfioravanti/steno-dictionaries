property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is contained by Util's TerminalApps then
    terminalFind(activeApp)
  else
    performFind(activeApp)
  end if
end run

on terminalFind(activeApp)
  set processName to Util's getTerminalProcessName(activeApp)

  if processName contains "vim" then
    performVimFind(activeApp)
  else
    performFind(activeApp)
  end if
end terminalFind

on performVimFind(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke "/"
  end tell
end performVimFind

on performFind(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "f" using {command down}
  end tell
end performFind
