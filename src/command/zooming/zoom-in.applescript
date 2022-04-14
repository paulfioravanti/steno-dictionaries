property equalsZoomInApps : {¬
  "Postman",¬
  "Insomnia"¬
}
property plusZoomInApps : {¬
  "Dash",¬
  "Firefox",¬
  "Google Chrome",¬
  "iTerm2",¬
  "Safari",¬
  "Skitch",¬
  "Slack"¬
}

on run
  set activeApp to getActiveApp()

  if activeApp is contained by equalsZoomInApps then
    performZoomIn("=")
  else if activeApp is contained by plusZoomInApps then
    performZoomIn("+")
  else if activeApp is "TextEdit" then
    performZoomInTextEdit()
  else
    displayError(activeApp)
  end if
end run

on performZoomIn(char)
  tell application "System Events"
    keystroke char using {command down}
  end tell
end performZoomIn

on performZoomInTextEdit()
  tell application "System Events"
    keystroke "." using {shift down, command down}
  end tell
end performZoomInTextEdit

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on displayError(activeApp)
  set errorMessage to "Zooming in not supported with " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
