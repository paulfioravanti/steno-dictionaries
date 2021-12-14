on run argv
  set direction to (item 1 of argv)
  if {"In", "Out"} does not contain direction then
    display notification "Unknown Zoom Direction"
    tell me to error "Unknown Zoom Direction"
  end if

  set standardZoomingApps to {¬
    "Dash",¬
    "Firefox",¬
    "Google Chrome",¬
    "iTerm2",¬
    "Safari",¬
    "Skitch",¬
    "Slack"¬
  }

  tell application "System Events"
    set activeApp to name of first application process whose frontmost is true

    if standardZoomingApps contains activeApp then
      set char to my determineDirectionKey(direction, "+", "-")
      keystroke char using {command down}
    else if {"Postman", "Insomnia"} contains activeApp then
      set char to my determineDirectionKey(direction, "=", "-")
      keystroke char using {command down}
    else if activeApp is "TextEdit" then
      set char to my determineDirectionKey(direction, ".", ",")
      keystroke char using {shift down, command down}
    else
      display notification "Zooming on focused application not supported."
      tell me to error "Zooming on focused application not supported."
    end if
  end tell
end run

on determineDirectionKey(direction, inKey, outKey)
  if direction is "In" then
    return inKey
  else if direction is "Out" then
    return outKey
  end if
end determineDirectionKey
