on run argv
  set direction to (item 1 of argv)

  if direction is "Forward" then
    -- 124 = RightArrow
    set keycode to 124
  else if direction is "Backward" then
    -- 123 = LeftArrow
    set keycode to 123
  else
    display notification "Unknown Step Direction"
    tell me to error "Unknown Step Direction"
  end if

  tell application "System Events" to tell process "VLC"
    key code keycode using {option down, command down}
  end tell
end run
