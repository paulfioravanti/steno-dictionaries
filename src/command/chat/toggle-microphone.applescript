on run
  set activeApp to getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleMicrophone()
  else if activeApp is "Slack" then
    performSlackToggleMicrophone()
  else if activeApp is "Google Chrome" then
    performGoogleMeetToggleMicrophone()
  else if activeApp is "Discord" then
    performDiscordToggleMicrophone()
  else
    displayError(activeApp)
  end
end run

on performZoomToggleMicrophone()
  tell application "System Events"
    keystroke "a" using {command down, shift down}
  end tell
end performZoomToggleMicrophone

on performSlackToggleMicrophone()
  tell application "System Events"
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

on performGoogleMeetToggleMicrophone()
  # NOTE: If Google Meet is open in any of the browser tabs, that tab will
  # become the active tab, both to run the short cut, and in order to confirm
  # that it actually worked as expected.
  # Much of the scaffold code here came from use-web-application.applescript.
  set windowIndex to 1
  tell application "Google Chrome"
    repeat with currentWindow in windows
      set tabIndex to 1
      repeat with currentTab in tabs of currentWindow
        if "https://meet.google.com/" is in url of currentTab then
          tell window windowIndex
            set active tab index to tabIndex
            set index to 1
          end tell
          tell application "System Events" to tell process "Google Chrome"
            keystroke "d" using command down
          end tell
          return
        end
        set tabIndex to tabIndex + 1
      end repeat
      set windowIndex to windowIndex + 1
    end repeat
  end tell
end performGoogleMeetToggleMicrophone

on performDiscordToggleMicrophone()
  tell application "System Events"
    keystroke "m" using {command down, shift down}
  end tell
end performDiscordToggleMicrophone

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on displayError(activeApp)
  set errorMessage to "No microphone to toggle in " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
