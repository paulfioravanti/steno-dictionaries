property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleChat()
  else if activeApp is "Google Chrome" then
    Util's performActionInChromeTab(¬
      Util's GoogleMeetUrl,¬
      googleMeetToggleChat()¬
    )
  else
    Util's displayError("No chat to toggle in", activeApp)
  end
end run

on performZoomToggleChat()
  tell application "System Events" to tell process "zoom.us"
    keystroke "h" using {command down, shift down}
  end tell
end performZoomToggleChat

on googleMeetToggleChat()
  script performGoogleMeetToggleChat
    tell application "System Events" to tell process "Google Chrome"
      keystroke "c" using {command down, control down}
    end tell
  end script
  return performGoogleMeetToggleChat
end googleMeetToggleChat
