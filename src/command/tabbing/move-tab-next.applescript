property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  # NOTE: Moving tabs not supported on Mac Terminal
  if activeProcess is "iTerm2" then
    moveTabNextiTerm()
  else if activeProcess is "Google Chrome" then
    moveTabNextGoogleChrome()
  else if activeProcess is "Firefox" then
    moveTabNextFirefox()
  else
    System's displayError("Moving tabs not supported with", activeProcess)
  end if
end run

on moveTabNextiTerm()
  tell application "System Events" to tell process "iTerm2"
    keystroke "]" using {shift down, option down, command down}
  end tell
end moveTabNextiTerm

on moveTabNextGoogleChrome()
  tell application "System Events" to tell process "Google Chrome"
    # NOTE: This solution requires the Vimium extension for Chrome
    # https://github.com/philc/vimium
    keystroke ">" using shift down
    keystroke ">" using shift down
  end tell
end moveTabNextGoogleChrome

on moveTabNextFirefox()
  tell application "System Events" to tell process "Firefox"
    key code System's PageDownKeyCode using {shift down, control down}
  end tell
end moveTabNextFirefox
