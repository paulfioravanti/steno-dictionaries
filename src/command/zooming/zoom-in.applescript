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

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by EqualsZoomInApps then
    performZoomIn("=")
  else if activeProcess is contained by PlusZoomInApps then
    performZoomIn("+")
  else if activeProcess is "TextEdit" then
    performZoomInTextEdit()
  else
    System's displayError("Zooming in not supported with", activeProcess)
  end if
end run

on performZoomIn(char)
  tell application "System Events" to tell process activeProcess
    keystroke char using command down
  end tell
end performZoomIn

on performZoomInTextEdit()
  tell application "System Events" to tell process activeProcess
    # Lists of key downs currently not working...
    # keystroke "." using {shift down, command down}
    key down shift
    key down command
    keystroke "."
    key up command
    key up shift
  end tell
end performZoomInTextEdit
