property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "Google Chrome" then
    performGoogleChromePageUp(activeApp)
  else if activeApp is "iTerm2" then
    performiTerm2PageUp(activeApp)
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

on performiTerm2PageUp(activeApp)
  set processName to Util's getiTermProcessName()

  if processName contains "vim" or processName contains "tmux" then
    performVimTmuxPageUp(activeApp)
  else
    performPageUp(activeApp)
  end if
end performiTerm2PageUp

on performVimTmuxPageUp(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "u" using {control down}
  end tell
end performVimTmuxPageUp

on performPageUp(activeApp)
  tell application "System Events" to tell process activeApp
    # 116 = Page Up
    key code 116
  end tell
end performPageUp
