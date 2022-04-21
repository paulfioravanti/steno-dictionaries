property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "iTerm2" then
    performiTerm2Save(activeApp)
  else
    performSave(activeApp)
  end if
end run

on performiTerm2Save(activeApp)
  set processName to Util's getiTermProcessName()

  if processName contains "vim" then
    performVimSave(activeApp)
  else
    display notification "Nothing to save." with title "Error"
  end if
end performiTerm2Command

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
