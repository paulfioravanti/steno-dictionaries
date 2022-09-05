property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

on run
  set activeApp to System's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleParticipants()
  else if activeApp is "Google Chrome" then
    Web's performActionInChromeTab(¬
      Web's GoogleMeetUrl,¬
      googleMeetToggleParticipants()¬
    )
  else
    System's displayError("No participants to toggle in", activeApp)
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
