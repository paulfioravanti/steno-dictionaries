on run argv
  tell application "System Events" to tell process (item 1 of argv)
    set frontmost to true
  end tell
end run
