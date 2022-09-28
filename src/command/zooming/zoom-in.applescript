property System : script "steno-dictionaries/system"
property EqualsZoomInApps : {¬
  "Postman",¬
  "Insomnia"¬
}
property PlusZoomInApps : {¬
  "Dash",¬
  "Firefox",¬
  "Google Chrome",¬
  "iTerm2",¬
  "Safari",¬
  "Skitch",¬
  "Slack"¬
}

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by EqualsZoomInApps then
    performZoomIn("=")
  else if activeApp is contained by PlusZoomInApps then
    performZoomIn("+")
  else if activeApp is "TextEdit" then
    performZoomInTextEdit()
  else
    System's displayError("Zooming in not supported with", activeApp)
  end if
end run

on performZoomIn(char)
  tell application "System Events" to tell process activeApp
    keystroke char using command down
  end tell
end performZoomIn

on performZoomInTextEdit()
  tell application "System Events" to tell process activeApp
    keystroke "." using {shift down, command down}
  end tell
end performZoomInTextEdit
