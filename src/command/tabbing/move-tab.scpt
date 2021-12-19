on run argv
  set direction to (item 1 of argv)
  if {"Previous", "Next"} does not contain direction then
    display notification "Unknown Tab Direction"
    tell me to error "Unknown Tab Direction"
  end if

  tell application "System Events"
    set activeApp to name of first application process whose frontmost is true

    if activeApp is "iTerm2" then
      set char to determineDirectionKey(direction, "[", "]")
      keystroke char using {shift down, option down, command down}
    else if activeApp is "Google Chrome" then
      -- NOTE: This solution requires the Vimium extension for Chrome
      -- https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
      set char to determineDirectionKey(direction, "<", ">")
      keystroke char using {shift down}
      keystroke char using {shift down}
    else if activeApp is "Firefox" then
      -- 116 = PageUp, 121 = PageDown
      set keyCode to determineDirectionKey(direction, 116, 121)
      key code keycode using {shift down, control down}
    else
      display notification "Moving tabs on focused application not supported."
      tell me to error "Moving tabs on focused application not supported."
    end if
  end tell
end run

on determineDirectionKey(direction, previousKey, nextKey)
  if direction is "Previous" then
    return previousKey
  else if direction is "Next" then
    return nextKey
  end if
end determineDirectionKey
