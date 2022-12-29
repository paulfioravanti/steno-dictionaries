property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

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
    key code System's PageUpKeyCode using shift down
  end tell
end performDiscordJumpToOldestUnreadMessageInChannel
