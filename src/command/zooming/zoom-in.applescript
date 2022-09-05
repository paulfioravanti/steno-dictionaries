property System : script "steno-dictionaries/system"

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
  set activeApp to System's getActiveApp()

  if activeApp is contained by equalsZoomInApps then
    performZoomIn(activeApp, "=")
  else if activeApp is contained by plusZoomInApps then
    performZoomIn(activeApp, "+")
  else if activeApp is "TextEdit" then
    performZoomInTextEdit(activeApp)
  else
    System's displayError("Zooming in not supported with", activeApp)
  end if
end run

on performZoomIn(activeApp, char)
  tell application "System Events" to tell process activeApp
    keystroke char using {command down}
  end tell
end performZoomIn

on performZoomInTextEdit(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "." using {shift down, command down}
  end tell
end performZoomInTextEdit
