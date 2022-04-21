property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "Google Chrome" then
    performGoogleChromePageDown(activeApp)
  else if activeApp is "iTerm2" then
    performiTerm2PageDown(activeApp)
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

on performiTerm2PageDown(activeApp)
  set processName to Util's getiTermProcessName()

  if processName contains "vim" or processName contains "tmux" then
    performVimTmuxPageDown(activeApp)
  else
    performPageDown(activeApp)
  end if
end performiTerm2PageDown

on performVimTmuxPageDown(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "d" using {control down}
  end tell
end performVimTmuxPageDown

on performPageDown(activeApp)
  tell application "System Events" to tell process activeApp
    # 121 = Page Down
    key code 121
  end tell
end performPageDown
