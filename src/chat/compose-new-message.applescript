property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "Slack" then
    performSlackComposeNewMessage()
  else if activeProcess is "Discord" then
    # Discord's messaging is essentially covered by their # Quick Switcher
    performDiscordToggleQuickSwitcher()
  else
    System's displayError("No chat message to compose in", activeProcess)
  end
end run

on performSlackComposeNewMessage()
  tell application "System Events" to tell process "Slack"
    keystroke "n" using command down
  end tell
end performSlackComposeNewMessage

on performDiscordToggleQuickSwitcher()
  tell application "System Events" to tell process "Discord"
    keystroke "k" using command down
  end tell
end performDiscordToggleQuickSwitcher
