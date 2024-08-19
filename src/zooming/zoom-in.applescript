property System : script "steno-dictionaries/system"
property Zooming : script "steno-dictionaries/zooming"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by Zooming's EqualsZoomInApps then
    performZoomIn("=")
  else if activeProcess is contained by Zooming's PlusZoomInApps then
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
    # https://github.com/SKaplanOfficial/PyXA/issues/16
    # keystroke "." using {shift down, command down}
    key down shift
    key down command
    keystroke "."
    key up command
    key up shift
  end tell
end performZoomInTextEdit
