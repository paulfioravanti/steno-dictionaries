on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    moveTabNextiTerm()
  else if activeApp is "Google Chrome" then
    moveTabNextGoogleChrome()
  else if activeApp is "Firefox" then
    moveTabNextFirefox()
  else
    displayError(activeApp)
  end if
end run

on moveTabNextiTerm()
  tell application "System Events"
    keystroke "]" using {shift down, option down, command down}
  end tell
end moveTabNextTerm

on moveTabNextGoogleChrome()
  tell application "System Events"
    # NOTE: This solution requires the Vimium extension for Chrome
    # https://github.com/philc/vimium
    keystroke ">" using {shift down}
    keystroke ">" using {shift down}
  end tell
end moveTabNextGoogleChrome

on moveTabNextFirefox()
  tell application "System Events"
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
