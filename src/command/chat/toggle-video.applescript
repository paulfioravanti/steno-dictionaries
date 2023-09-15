property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

script googleMeetToggleVideo
  tell application "System Events" to tell process "Google Chrome"
    keystroke "e" using command down
  end tell
end script

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
    # Lists of key downs currently not working...
    # keystroke "v" using {command down, shift down}
    key down command
    key down shift
    keystroke "v"
    key up shift
    key up command
  end tell
end performZoomToggleVideo

on performSlackToggleVideo()
  tell application "System Events" to tell process "Slack"
    keystroke "v"
  end tell
end performSlackToggleVideo
