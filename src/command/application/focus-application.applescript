on run {applicationName}
  tell application "System Events" to tell process applicationName
    set frontmost to true
  end tell
end run
