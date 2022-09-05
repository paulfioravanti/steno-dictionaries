property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

on run
  set activeApp to System's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleMicrophone()
  else if activeApp is "Slack" then
    performSlackToggleMicrophone()
  else if activeApp is "Google Chrome" then
    Web's performActionInChromeTab(¬
      Web's GoogleMeetUrl,¬
      googleMeetToggleMicrophone()¬
    )
  else if activeApp is "Discord" then
    performDiscordToggleMicrophone()
  else
    System's displayError("No microphone to toggle in", activeApp)
  end
end run

on performZoomToggleMicrophone()
  tell application "System Events" to tell process "zoom.us"
    keystroke "a" using {command down, shift down}
  end tell
end performZoomToggleMicrophone

on performSlackToggleMicrophone()
  tell application "System Events" to tell process "Slack"
    # NOTE: For some reason, Slack has different hotkeys for toggling mute
    # from within a call and within a huddle.
    # REF: https://slack.com/intl/en-au/help/articles/201374536-Slack-keyboard-shortcuts
    # Since the toggle mute on a huddle hotkey clashes with Divvy, don't use
    # it.
    keystroke "m"
    # 49 = Space
    # key code 49 using {command down, shift down}
  end tell
end performSlackToggleMicrophone

on googleMeetToggleMicrophone()
  script performGoogleMeetToggleMicrophone
    tell application "System Events" to tell process "Google Chrome"
      keystroke "d" using {command down}
    end tell
  end script
  return performGoogleMeetToggleMicrophone
end googleMeetToggleMicrophone

on performDiscordToggleMicrophone()
  tell application "System Events" to tell process "Discord"
    keystroke "m" using {command down, shift down}
  end tell
end performDiscordToggleMicrophone
