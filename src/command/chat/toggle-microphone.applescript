property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleMicrophone(activeApp)
  else if activeApp is "Slack" then
    performSlackToggleMicrophone(activeApp)
  else if activeApp is "Google Chrome" then
    Util's performGoogleMeetAction("d", {command down})
  else if activeApp is "Discord" then
    performDiscordToggleMicrophone(activeApp)
  else
    Util's displayError("No microphone to toggle in", activeApp)
  end
end run

on performZoomToggleMicrophone(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "a" using {command down, shift down}
  end tell
end performZoomToggleMicrophone

on performSlackToggleMicrophone(activeApp)
  tell application "System Events" to tell process activeApp
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

on performDiscordToggleMicrophone(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "m" using {command down, shift down}
  end tell
end performDiscordToggleMicrophone
