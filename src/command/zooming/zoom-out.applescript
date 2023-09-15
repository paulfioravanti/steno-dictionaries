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

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by ZoomOutApps then
    performZoomOut()
  else if activeProcess is "TextEdit" then
    performZoomInTextEdit()
  else
    System's displayError("Zooming out not supported with", activeProcess)
  end if
end run

on performZoomOut()
  tell application "System Events" to tell process activeProcess
    keystroke "-" using command down
  end tell
end performZoomOut

on performZoomOutTextEdit()
  tell application "System Events" to tell process activeProcess
    # Lists of key downs currently not working...
    # keystroke "," using {shift down, command down}
    key down shift
    key down command
    keystroke ","
    key up command
    key up shift
  end tell
end performZoomOutTextEdit
