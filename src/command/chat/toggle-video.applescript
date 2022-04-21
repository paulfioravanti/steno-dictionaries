property Util : script "steno-dictionaries/util"
property appUrl : "https://meet.google.com/"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleVideo(activeApp)
  else if activeApp is "Slack" then
    performSlackToggleVideo(activeApp)
  else if activeApp is "Google Chrome" then
    Util's performGoogleMeetAction(appUrl, "e", {command down})
  else
    Util's displayError("No video to toggle in", activeApp)
  end
end run

on performZoomToggleVideo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "v" using {command down, shift down}
  end tell
end performZoomToggleVideo

on performSlackToggleVideo(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "v"
  end tell
end performSlackToggleVideo
