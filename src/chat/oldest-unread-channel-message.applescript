property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "Slack" then
    performSlackJumpToOldestUnreadMessageInChannel()
  else if activeProcess is "Discord" then
    performDiscordJumpToOldestUnreadMessageInChannel()
  else
    System's displayError("No oldest unread message to jump to in", activeProcess)
  end
end run

on performSlackJumpToOldestUnreadMessageInChannel()
  tell application "System Events" to tell process "Slack"
    keystroke "j" using command down
  end tell
end performSlackJumpToOldestUnreadMessageInChannel

on performDiscordJumpToOldestUnreadMessageInChannel()
  tell application "System Events" to tell process "Discord"
    key code KeyCode's PageUp using shift down
  end tell
end performDiscordJumpToOldestUnreadMessageInChannel
