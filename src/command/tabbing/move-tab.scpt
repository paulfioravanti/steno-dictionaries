on run argv
  set direction to (item 1 of argv)
  if {"Previous", "Next"} does not contain direction then
    display notification "Unknown Tab Direction"
    tell me to error "Unknown Tab Direction"
  end if

  tell application "System Events"
    set activeApp to name of first application process whose frontmost is true

    if activeApp is "iTerm2" then
      if direction is "Previous" then
        set char to "["
      else if direction is "Next" then
        set char to "]"
      end if

      keystroke char using {shift down, option down, command down}
    else if activeApp is "Google Chrome" then
      -- NOTE: This solution requires the Vimium extension for Chrome
      -- https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
      if direction is "Previous" then
        set char to "<"
      else if direction is "Next" then
        set char to ">"
      end if

      keystroke char using {shift down}
      delay 0.1
      keystroke char using {shift down}
    else if activeApp is "Firefox" then
      if direction is "Previous" then
        -- 116 = PageUp
        set keycode to 116
      else if direction is "Next" then
        -- 121 = PageDown
        set keycode to 121
      end if

      key code keycode using {shift down, control down}
    else
      display notification ("Moving tabs on focused application not supported.")
      tell me to error "Moving tabs on focused application not supported."
    end if
  end tell
end run
