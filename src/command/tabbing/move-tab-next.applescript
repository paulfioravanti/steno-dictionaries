property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  # NOTE: Moving tabs not supported on Mac Terminal
  if activeApp is "iTerm2" then
    moveTabNextiTerm(activeApp)
  else if activeApp is "Google Chrome" then
    moveTabNextGoogleChrome(activeApp)
  else if activeApp is "Firefox" then
    moveTabNextFirefox(activeApp)
  else
    Util's displayError("Moving tabs not supported with", activeApp)
  end if
end run

on moveTabNextiTerm(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "]" using {shift down, option down, command down}
  end tell
end moveTabNextiTerm

on moveTabNextGoogleChrome(activeApp)
  tell application "System Events" to tell process activeApp
    # NOTE: This solution requires the Vimium extension for Chrome
    # https://github.com/philc/vimium
    keystroke ">" using {shift down}
    keystroke ">" using {shift down}
  end tell
end moveTabNextGoogleChrome

on moveTabNextFirefox(activeApp)
  tell application "System Events" to tell process activeApp
    # 121 = PageDown
    key code 121 using {shift down, control down}
  end tell
end moveTabNextFirefox
