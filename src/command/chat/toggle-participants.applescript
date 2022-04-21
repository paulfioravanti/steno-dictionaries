property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleParticipants(activeApp)
  else if activeApp is "Google Chrome" then
    Util's performGoogleMeetAction("p", {command down, control down})
  else
    Util's displayError("No participants to toggle in", activeApp)
  end
end run

on performZoomToggleParticipants(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "u" using command down
  end tell
end performZoomToggleParticipants
