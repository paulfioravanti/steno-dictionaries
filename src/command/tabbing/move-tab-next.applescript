property KeyCode : script "steno-dictionaries/key-code"
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
    # https://github.com/SKaplanOfficial/PyXA/issues/16
    # keystroke "]" using {shift down, option down, command down}
    key down shift
    key down option
    key down command
    keystroke "]"
    key up command
    key up option
    key up shift
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
    # https://github.com/SKaplanOfficial/PyXA/issues/16
    # key code KeyCode's PageDown using {shift down, control down}
    key down shift
    key down control
    key code KeyCode's PageDown
    key up control
    key up shift
  end tell
end moveTabNextFirefox
