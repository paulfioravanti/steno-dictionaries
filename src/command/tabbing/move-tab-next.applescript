on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    moveTabNextiTerm(activeApp)
  else if activeApp is "Google Chrome" then
    moveTabNextGoogleChrome(activeApp)
  else if activeApp is "Firefox" then
    moveTabNextFirefox(activeApp)
  else
    displayError(activeApp)
  end if
end run

on moveTabNextiTerm(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "]" using {shift down, option down, command down}
  end tell
end moveTabNextTerm

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
