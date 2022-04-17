on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    moveTabPreviousiTerm(activeApp)
  else if activeApp is "Google Chrome" then
    moveTabPreviousGoogleChrome(activeApp)
  else if activeApp is "Firefox" then
    moveTabPreviousFirefox(activeApp)
  else
    displayError(activeApp)
  end if
end run

on moveTabPreviousiTerm(activeApp)
  tell application "System Events" to tell activeApp
    keystroke "[" using {shift down, option down, command down}
  end tell
end moveTabPreviousiTerm

on moveTabPreviousGoogleChrome(activeApp)
  tell application "System Events" to tell activeApp
    # NOTE: This solution requires the Vimium extension for Chrome
    # https://github.com/philc/vimium
    keystroke "<" using {shift down}
    keystroke "<" using {shift down}
  end tell
end moveTabPreviousGoogleChrome

on moveTabPreviousFirefox(activeApp)
  tell application "System Events" to tell activeApp
    # 116 = PageUp
    key code 116 using {shift down, control down}
  end tell
end moveTabPreviousFirefox

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on displayError(activeApp)
  set errorMessage to "Moving tabs not supported with " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
