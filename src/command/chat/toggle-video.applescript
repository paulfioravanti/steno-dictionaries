property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleVideo()
  else if activeApp is "Slack" then
    performSlackToggleVideo()
  else if activeApp is "Google Chrome" then
    Util's performActionInChromeTab(¬
      Util's GoogleMeetUrl,¬
      googleMeetToggleVideo()¬
    )
  else
    Util's displayError("No video to toggle in", activeApp)
  end
end run

on performZoomToggleVideo()
  tell application "System Events" to tell process "zoom.us"
    keystroke "v" using {command down, shift down}
  end tell
end performZoomToggleVideo

on performSlackToggleVideo()
  tell application "System Events" to tell process "Slack"
    keystroke "v"
  end tell
end performSlackToggleVideo

on googleMeetToggleVideo()
  script performGoogleMeetToggleVideo
    tell application "System Events" to tell process "Google Chrome"
      keystroke "e" using {command down}
    end tell
  end script
  return performGoogleMeetToggleVideo
end googleMeetToggleVideo
