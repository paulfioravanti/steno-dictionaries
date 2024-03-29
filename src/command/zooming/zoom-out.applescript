property System : script "steno-dictionaries/system"
property Zooming : script "steno-dictionaries/zooming"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by Zooming's ZoomOutApps then
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
    # https://github.com/SKaplanOfficial/PyXA/issues/16
    # keystroke "," using {shift down, command down}
    key down shift
    key down command
    keystroke ","
    key up command
    key up shift
  end tell
end performZoomOutTextEdit
