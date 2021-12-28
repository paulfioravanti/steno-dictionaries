property applicationsToFocus : {"Plover", "Finder"}
property applicationsToReopen : {¬
  "1Password 7",¬
  "Activity Monitor",¬
  "Dash",¬
  "Keybase",¬
  "Wally",¬
  "WaveLink",¬
  "WhatsApp"¬
}

on run {applicationName}
  if applicationName is contained by applicationsToFocus
    tell application "System Events" to tell process applicationName
      set frontmost to true
    end tell
  else if applicationName is contained by applicationsToReopen
    tell application applicationName
      reopen
      activate
    end tell
  else
    activate application applicationName
  end if
end run
