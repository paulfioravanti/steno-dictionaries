property Util : script "steno-dictionaries/util"
property appUrl : "https://meet.google.com/"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleChat(activeApp)
  else if activeApp is "Google Chrome" then
    Util's performGoogleMeetAction(appUrl, "c", {command down, control down})
  else
    Util's displayError("No chat to toggle in", activeApp)
  end
end run

on performZoomToggleChat(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "h" using {command down, shift down}
  end tell
end performZoomToggleChat
