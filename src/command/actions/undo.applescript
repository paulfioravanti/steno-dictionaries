property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "iTerm2" then
    iTerm2Undo(activeApp)
  else
    performUndo(activeApp)
  end if
end run

on iTerm2Undo(activeApp)
  set processName to Util's getiTermProcessName()

  if processName contains "vim" then
    performVimUndo(activeApp)
  else
    performUndo(activeApp)
  end if
end iTerm2Undo

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
