property System : script "steno-dictionaries/system"
property ZoomOutApps : {¬
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

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by ZoomOutApps then
    performZoomOut()
  else if activeApp is "TextEdit" then
    performZoomInTextEdit()
  else
    System's displayError("Zooming out not supported with", activeApp)
  end if
end run

on performZoomOut()
  tell application "System Events" to tell process activeApp
    keystroke "-" using command down
  end tell
end performZoomOut

on performZoomOutTextEdit()
  tell application "System Events" to tell process activeApp
    keystroke "," using {shift down, command down}
  end tell
end performZoomOutTextEdit
