property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "Slack" then
    performSlackBrowseChannels()
  else if activeProcess is "Discord" then
    # Discord's channel and chat browsing are essentially covered by their
    # Quick Switcher
    performDiscordToggleQuickSwitcher()
  else
    System's displayError("No channels to browse in", activeProcess)
  end
end run

on performSlackBrowseChannels()
  tell application "System Events" to tell process "Slack"
    keystroke "l" using {command down, shift down}
  end tell
end performSlackBrowseChannels

on performDiscordToggleQuickSwitcher()
  tell application "System Events" to tell process "Discord"
    keystroke "k" using command down
  end tell
end performDiscordToggleQuickSwitcher
