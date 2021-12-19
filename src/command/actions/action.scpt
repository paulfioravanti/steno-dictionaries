on run {commandToPerform}
  if {"Save", "Quit"} does not contain commandToPerform then
    display notification "Unknown Command"
    tell me to error "Unknown Command"
  end if

  tell application "System Events"
    set activeApp to name of first application process whose frontmost is true

    if activeApp is "iTerm2" then
      set processName to my getiTermProcessName()
      my performiTerm2Command(commandToPerform, processName)
    else
      if commandToPerform is "Save" then
        keystroke "s" using {command down}
      else if commandToPerform is "Quit" then
        keystroke "q" using {command down}
      end
    end if
  end tell
end run

on getiTermProcessName()
  tell application "iTerm2"
    -- REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current tab ¬
      of current window
  end tell
end getiTermProcessName

on performiTerm2Command(commandToPerform, processName)
  if commandToPerform is "Save" then
    -- NOTE: Needed to send message to System Events to use the keystroke
    -- and key APIs. See: https://superuser.com/a/1271416/144795
    tell application "System Events"
      if processName contains "vim" then
        keystroke ":w"
        -- 36 = Return
        key code 36
      else
        display notification "Nothing to save."
      end if
    end tell
  else if commandToPerform is "Quit" then
    my performiTerm2Quit(processName)
  end
end performiTerm2Command

on performiTerm2Quit(processName)
  tell application "System Events"
    if processName contains "vim" then
      keystroke ":q"
      -- 36 = Return
      key code 36
    else if processName contains "iex" then
      keystroke "c" using {control down}
      keystroke "c" using {control down}
    else if processName contains "irb" then
      keystroke "exit"
      -- 36 = Return
      key code 36
    else if processName contains "elm" then
      keystroke ":exit"
      -- 36 = Return
      key code 36
    else if processName contains "node" then
      keystroke ".exit"
      -- 36 = Return
      key code 36
    else if processName contains "python" then
      keystroke "exit()"
      -- 36 = Return
      key code 36
    else
      keystroke "q" using {command down}
    end if
  end tell
end performiTerm2Quit
