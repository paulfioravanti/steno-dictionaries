property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "Slack" then
    performSlackToggleHuddleStartStop()
  else if activeProcess is "Discord" then
    performDiscordStartCall()
  else
    System's displayError("No call to start/toggle in", activeProcess)
  end
end run

on performSlackToggleHuddleStartStop()
  tell application "System Events" to tell process "Slack"
    keystroke "h" using {command down, shift down}
  end tell
end performSlackToggleHuddleStartStop

on performDiscordStartCall()
  tell application "System Events" to tell process "Discord"
    key code KeyCode's SingleQuote using control down
  end tell
end performDiscordStartCall
