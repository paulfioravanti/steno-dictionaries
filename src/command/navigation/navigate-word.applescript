property wordDirections : {"Previous", "Next"}

on run {direction}
  if direction is not contained by wordDirections then
    display notification "Unknown Word Direction" with title "Error"
    tell me to error "Unknown Word Direction"
  end if

  tell application "System Events"
    set activeApp to name of first application process whose frontmost is true

    if activeApp is "iTerm2" or activeApp is "Terminal" then
      # 53 = Escape
      key code 53
      if direction is "Previous" then
        keystroke "b"
      else
        keystroke "f"
      end if
    else
      if direction is "Previous" then
        # 123 = Left arrow
        key code 123 using {option down}
      else
        # 124 = Right arrow
        key code 124 using {option down}
      end if
    end if
  end tell
end run
