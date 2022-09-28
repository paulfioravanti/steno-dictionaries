property System : script "steno-dictionaries/system"

on run
  set activeApp to System's getActiveApp()

  # NOTE: Moving tabs not supported on Mac Terminal
  if activeApp is "iTerm2" then
    moveTabPreviousiTerm()
  else if activeApp is "Google Chrome" then
    moveTabPreviousGoogleChrome()
  else if activeApp is "Firefox" then
    moveTabPreviousFirefox()
  else
    System's displayError("Moving tabs not supported with", activeApp)
  end if
end run

on moveTabPreviousiTerm()
  tell application "System Events" to tell process "iTerm2"
    keystroke "[" using {shift down, option down, command down}
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
    key code System's PageUpKeyCode using {shift down, control down}
  end tell
end moveTabPreviousFirefox
