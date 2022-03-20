property validCommands : {¬
  "Toggle Chat",¬
  "Toggle Microphone",¬
  "Toggle Participants",¬
  "Toggle Video"¬
}

on run {commandToPerform}
  if commandToPerform is not contained by validCommands then
    display notification "Unknown Chat Command" with title "Error"
    tell me to error "Unknown Chat Command"
  end if

  set activeApp to getActiveApp()

  if activeApp is "zoom.us" then
    my performZoomCommand(commandToPerform)
  else if activeApp is "Slack" then
    performSlackCommand(commandToPerform)
  else if activeApp is "Google Chrome" then
    performGoogleMeetCommand(commandToPerform)
  else if activeApp is "Discord" then
    performDiscordCommand(commandToPerform)
  else
    display notification "Supported chat app not in focus" with title "Error"
  end
end run

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on performZoomCommand(commandToPerform)
  tell application "System Events"
    if commandToPerform is "Toggle Chat" then
      keystroke "h" using {command down, shift down}
    else if commandToPerform is "Toggle Microphone" then
      keystroke "a" using {command down, shift down}
    else if commandToPerform is "Toggle Participants" then
      keystroke "u" using command down
    else if commandToPerform is "Toggle Video" then
      keystroke "v" using {command down, shift down}
    end if
  end tell
end performZoomCommand

on performGoogleMeetCommand(commandToPerform)
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
            if commandToPerform is "Toggle Chat" then
              keystroke "c" using {command down, control down}
            else if commandToPerform is "Toggle Microphone" then
              keystroke "d" using command down
            else if commandToPerform is "Toggle Participants" then
              keystroke "p" using {command down, control down}
            else if commandToPerform is "Toggle Video" then
              keystroke "e" using command down
            end
          end tell
          return
        end
        set tabIndex to tabIndex + 1
      end repeat
      set windowIndex to windowIndex + 1
    end repeat
  end tell
end performGoogleMeetCommand

on performSlackCommand(commandToPerform)
  tell application "System Events"
    if commandToPerform is "Toggle Microphone" then
      # NOTE: For some reason, Slack has different hotkeys for toggling mute
      # from within a call and within a huddle.
      # REF: https://slack.com/intl/en-au/help/articles/201374536-Slack-keyboard-shortcuts
      # So, we'll just toggle both.
      keystroke "m"
      # 49 = Space
      key code 49 using {command down, shift down}
    else if commandToPerform is "Toggle Video" then
      keystroke "v"
    else
      display notification "Command not supported in Slack" with title "Error"
    end if
  end tell
end performSlackCommand

on performDiscordCommand(commandToPerform)
  tell application "System Events"
    if commandToPerform is "Toggle Microphone" then
      keystroke "m" using {command down, shift down}
    else
      display notification "Command not supported in Discord" with title "Error"
    end if
  end tell
end performDiscordCommand
