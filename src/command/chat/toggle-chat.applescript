property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

script googleMeetToggleChat
  tell application "System Events" to tell process "Google Chrome"
    # Lists of key downs currently not working...
    # keystroke "c" using {command down, control down}
    key down command
    key down control
    keystroke "c"
    key up control
    key up command
  end tell
end script

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "zoom.us" then
    performZoomToggleChat()
  else if activeProcess is "Google Chrome" then
    Web's performActionInChromeTab(Web's GoogleMeetUrl, googleMeetToggleChat)
  else
    System's displayError("No chat to toggle in", activeProcess)
  end
end run

on performZoomToggleChat()
  tell application "System Events" to tell process "zoom.us"
    # Lists of key downs currently not working...
    # keystroke "h" using {command down, shift down}
    key down command
    key down shift
    keystroke "h"
    key up shift
    key up command
  end tell
end performZoomToggleChat
