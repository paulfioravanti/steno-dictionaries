property Util : script "steno-dictionaries/util"

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
  set activeApp to Util's getActiveApp()

  if activeApp is contained by zoomOutApps then
    performZoomOut(activeApp)
  else if activeApp is "TextEdit" then
    performZoomInTextEdit(activeApp)
  else
    Util's displayError("Zooming out not supported with", activeApp)
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
