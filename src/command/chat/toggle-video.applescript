property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleVideo(activeApp)
  else if activeApp is "Slack" then
    performSlackToggleVideo(activeApp)
  else if activeApp is "Google Chrome" then
    Util's performActionInChromeTab(¬
      Util's GoogleMeetUrl,¬
      googleMeetToggleVideo(activeApp)¬
    )
  else
    Util's displayError("No video to toggle in", activeApp)
  end
end run

on performZoomToggleVideo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "v" using {command down, shift down}
  end tell
end performZoomToggleVideo

on googleMeetToggleVideo(activeApp)
  script performGoogleMeetToggleVideo
    tell application "System Events" to tell process activeApp
      keystroke "e" using {command down}
    end tell
  end script
  return performGoogleMeetToggleVideo
end googleMeetToggleVideo

on performSlackToggleVideo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "v"
  end tell
end performSlackToggleVideo
