on run argv
  set direction to (item 1 of argv)
  if {"In", "Out"} does not contain direction then
    display notification "Unknown Zoom Direction"
    tell me to error "Unknown Zoom Direction"
  end if

  tell application "System Events"
    set activeApp to name of first application process whose frontmost is true

    if {"Google Chrome", "Firefox", "Safari", "iTerm2", "Slack", "Dash"} contains activeApp then
      if direction is "In" then
        -- 24 = [+=]
        key code 24 using {shift down, command down}
      else if direction is "Out" then
        -- 27 = [_-]
        key code 27 using {command down}
      end if
    else if {"Postman", "Insomnia"} contains activeApp then
      if direction is "In" then
        -- 24 = [+=]
        key code 24 using {command down}
      else if direction is "Out" then
        -- 27 = [_-]
        key code 27 using {command down}
      end if
    else if activeApp is "TextEdit" then
      if direction is "In" then
        -- 47 = [>.]
        key code 47 using {shift down, command down}
      else if direction is "Out" then
        -- 43 = [<,]
        key code 27 using {shift down, command down}
      end if
    else
      display notification ("Zooming on focused application not supported.")
      tell me to error "Zooming on focused application not supported."
    end if
  end tell
end run
