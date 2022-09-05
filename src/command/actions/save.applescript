property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is contained by Util's TerminalApps then
    terminalSave(activeApp)
  else
    performSave(activeApp)
  end if
end run

on terminalSave(activeApp)
  set processName to Util's getTerminalProcessName(activeApp)

  if processName contains "vim" then
    performVimSave(activeApp)
  else
    display notification "Nothing to save." with title "Error"
  end if
end terminalSave

on performVimSave(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke ":write"
    # 36 = Return
    key code 36
  end tell
end performVimSave

on performSave(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "s" using {command down}
  end tell
end performSave
