tell application "System Events"
  set activeApp to name of first application process whose frontmost is true

  if activeApp is "iTerm2" then
    tell application "iTerm2"
      -- set title to name of current session of current tab of current window
      -- if title contains "vim" then
        -- display notification title
      tell current session of current tab of current window
        -- NOTE: Needed to send message to System Events to use the keystroke
        -- and key APIs. See: https://superuser.com/a/1271416/144795
        tell application "System Events"
          keystroke ":"
          keystroke "w"
        -- 36 = Return
          key code 36
      -- else
      --   display notification "something else"
      -- end if
        end tell
      end tell
    end tell
  else
    display notification "Some other app is active."
  end if
end tell
