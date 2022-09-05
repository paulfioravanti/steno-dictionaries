property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleParticipants()
  else if activeApp is "Google Chrome" then
    Util's performActionInChromeTab(¬
      Util's GoogleMeetUrl,¬
      googleMeetToggleParticipants()¬
    )
  else
    Util's displayError("No participants to toggle in", activeApp)
  end
end run

on performZoomToggleParticipants()
  tell application "System Events" to tell process "zoom.us"
    keystroke "u" using command down
  end tell
end performZoomToggleParticipants

on googleMeetToggleParticipants()
  script performGoogleMeetToggleParticipants
    tell application "System Events" to tell process "Google Chrome"
      keystroke "p" using {command down, control down}
    end tell
  end script
  return performGoogleMeetToggleParticipants
end googleMeetToggleParticipants
