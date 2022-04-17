property zoomOutApps : {¬
  "Dash",¬
  "Firefox",¬
  "Google Chrome",¬
  "Insomnia",¬
  "iTerm2",¬
  "Postman",¬
  "Safari",¬
  "Skitch",¬
  "Slack"¬
}

on run
  set activeApp to getActiveApp()

  if activeApp is contained by zoomOutApps then
    performZoomOut(activeApp)
  else if activeApp is "TextEdit" then
    performZoomInTextEdit(activeApp)
  else
    displayError(activeApp)
  end if
end run

on performZoomOut(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "-" using {command down}
  end tell
end performZoomOut

on performZoomOutTextEdit(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "," using {shift down, command down}
  end tell
end performZoomOutTextEdit

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on displayError(activeApp)
  set errorMessage to "Zooming out not supported with " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
