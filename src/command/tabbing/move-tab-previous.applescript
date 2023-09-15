property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  # NOTE: Moving tabs not supported on Mac Terminal
  if activeProcess is "iTerm2" then
    moveTabPreviousiTerm()
  else if activeProcess is "Google Chrome" then
    moveTabPreviousGoogleChrome()
  else if activeProcess is "Firefox" then
    moveTabPreviousFirefox()
  else
    System's displayError("Moving tabs not supported with", activeProcess)
  end if
end run

on moveTabPreviousiTerm()
  tell application "System Events" to tell process "iTerm2"
    # Lists of key downs currently not working...
    # keystroke "[" using {shift down, option down, command down}
    key down shift
    key down option
    key down command
    keystroke "["
    key up command
    key up option
    key up shift
  end tell
end moveTabPreviousiTerm

on moveTabPreviousGoogleChrome()
  tell application "System Events" to tell process "Google Chrome"
    # NOTE: This solution requires the Vimium extension for Chrome
    # https://github.com/philc/vimium
    keystroke "<" using shift down
    keystroke "<" using shift down
  end tell
end moveTabPreviousGoogleChrome

on moveTabPreviousFirefox()
  tell application "System Events" to tell process "Firefox"
    # Lists of key downs currently not working...
    # key code KeyCode's PageUp using {shift down, control down}
    key down shift
    key down control
    key code KeyCode's PageUp
    key up control
    key up shift
  end tell
end moveTabPreviousFirefox
