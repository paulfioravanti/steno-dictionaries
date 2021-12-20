on run {applicationName, action}
  if {"Activate", "Focus", "Reopen"} does not contain action then
    display notification "Unknown application action"
    tell me to error "Unknown application action"
  end if

  if action is "Activate"
    activate application applicationName
  else if action is "Focus"
    tell application "System Events" to tell process applicationName
      set frontmost to true
    end tell
  else if action is "Reopen"
    tell application applicationName
      reopen
      activate
    end tell
  end if
end run
