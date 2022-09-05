property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleChat(activeApp)
  else if activeApp is "Google Chrome" then
    Util's performActionInChromeTab(¬
      Util's GoogleMeetUrl,¬
      googleMeetToggleChat(activeApp)¬
    )
  else
    Util's displayError("No chat to toggle in", activeApp)
  end
end run

on performZoomToggleChat(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "h" using {command down, shift down}
  end tell
end performZoomToggleChat

on googleMeetToggleChat(activeApp)
  script performGoogleMeetToggleChat
    tell application "System Events" to tell process activeApp
      keystroke "c" using {command down, control down}
    end tell
  end script
  return performGoogleMeetToggleChat
end googleMeetToggleChat
