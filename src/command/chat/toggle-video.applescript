property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "zoom.us" then
    performZoomToggleVideo()
  else if activeProcess is "Slack" then
    performSlackToggleVideo()
  else if activeProcess is "Google Chrome" then
    Web's performActionInChromeTab(Web's GoogleMeetUrl, googleMeetToggleVideo)
  else
    System's displayError("No video to toggle in", activeProcess)
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

script googleMeetToggleVideo
  tell application "System Events" to tell process "Google Chrome"
    keystroke "e" using command down
  end tell
end script
