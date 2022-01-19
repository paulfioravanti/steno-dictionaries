property zoomDirections : {"In", "Out"}
property apiClients : {"Postman", "Insomnia"}
property standardZoomingApps : {¬
  "Dash",¬
  "Firefox",¬
  "Google Chrome",¬
  "iTerm2",¬
  "Safari",¬
  "Skitch",¬
  "Slack"¬
}

on run {direction}
  if direction is not contained by zoomDirections then
    display notification "Unknown Zoom Direction" with title "Error"
    tell me to error "Unknown Zoom Direction"
  end if

  tell application "System Events"
    set activeApp to name of first application process whose frontmost is true

    if activeApp is contained by standardZoomingApps then
      set char to my determineDirectionKey(direction, "+", "-")
      keystroke char using {command down}
    else if activeApp is contained by apiClients then
      set char to my determineDirectionKey(direction, "=", "-")
      keystroke char using {command down}
    else if activeApp is "TextEdit" then
      set char to my determineDirectionKey(direction, ".", ",")
      keystroke char using {shift down, command down}
    else
      display notification "Zooming on focused application not supported." with title "Error"
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
