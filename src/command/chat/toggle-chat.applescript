property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

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
    keystroke "h" using {command down, shift down}
  end tell
end performZoomToggleChat

script googleMeetToggleChat
  tell application "System Events" to tell process "Google Chrome"
    keystroke "c" using {command down, control down}
  end tell
end script
