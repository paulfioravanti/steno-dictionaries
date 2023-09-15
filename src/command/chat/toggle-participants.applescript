property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

script googleMeetToggleParticipants
  tell application "System Events" to tell process "Google Chrome"
    # Lists of key downs currently not working...
    # keystroke "p" using {command down, control down}
    key down command
    key down control
    keystroke "p"
    key up control
    key up command
  end tell
end script

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "zoom.us" then
    performZoomToggleParticipants()
  else if activeProcess is "Discord" then
    performDiscordToggleParticipants()
  else if activeProcess is "Google Chrome" then
    Web's performActionInChromeTab(¬
      Web's GoogleMeetUrl,¬
      googleMeetToggleParticipants¬
    )
  else
    System's displayError("No participants to toggle in", activeProcess)
  end
end run

on performZoomToggleParticipants()
  tell application "System Events" to tell process "zoom.us"
    keystroke "u" using command down
  end tell
end performZoomToggleParticipants

on performDiscordToggleParticipants()
  tell application "System Events" to tell process "Discord"
    keystroke "u" using command down
  end tell
end performDiscordToggleParticipants
