property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is contained by Util's TerminalApps then
    terminalUndo(activeApp)
  else
    performUndo(activeApp)
  end if
end run

on terminalUndo(activeApp)
  set processName to Util's getTerminalProcessName(activeApp)

  if processName contains "vim" then
    performVimUndo(activeApp)
  else
    performUndo(activeApp)
  end if
end terminalUndo

on performVimUndo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "u"
  end tell
end performVimUndo

on performUndo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "z" using {command down}
  end tell
end performUndo
