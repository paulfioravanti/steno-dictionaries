property validCommands : {¬
  "⌃↑",¬
  "⌃↓",¬
  "⌃→",¬
  "⌃←",¬
  "Save",¬
  "Horizontal Split",¬
  "Vertical Split",¬
  "Quit"¬
}

on run {commandToPerform}
  if validCommands does not contain commandToPerform then
    display notification "Unknown Command"
    tell me to error "Unknown Command"
  end if

  set activeApp to my getActiveApp()

  if activeApp is "iTerm2" then
    my performiTerm2Command(commandToPerform)
  else
    my performStandardCommand(commandToPerform)
  end if
end run

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on getiTermProcessName()
  tell application "iTerm2"
    -- REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current tab ¬
      of current window
  end tell
end getiTermProcessName

on performiTerm2Command(commandToPerform)
  set processName to my getiTermProcessName()

  if commandToPerform is "⌃↑" then
    tell application "System Events"
      if processName contains "vim" then
        -- nnoremap <C-k> <C-w>k
        keystroke "k" using {control down}
      else
        -- 126 = Up arrow
        key code 126 using {control down}
      end if
    end tell
  else if commandToPerform is "⌃↓" then
    tell application "System Events"
      if processName contains "vim" then
        -- nnoremap <C-j> <C-j>k
        keystroke "j" using {control down}
      else
        -- 125 = Down arrow
        key code 125 using {control down}
      end if
    end tell
  else if commandToPerform is "⌃→" then
    tell application "System Events"
      if processName contains "vim" then
        -- nnoremap <C-l> <C-l>k
        keystroke "l" using {control down}
      else
        -- 124 = Right arrow
        key code 124 using {control down}
      end if
    end tell
  else if commandToPerform is "⌃←" then
    tell application "System Events"
      if processName contains "vim" then
        -- nnoremap <C-h> <C-h>k
        keystroke "h" using {control down}
      else
        -- 123 = Left arrow
        key code 123 using {control down}
      end if
    end tell
  else if commandToPerform is "Save" then
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
  else if commandToPerform is "Horizontal Split" then
    tell application "System Events"
      if processName contains "vim" then
        keystroke ":split"
        -- 36 = Return
        key code 36
      else
        display notification "Nothing to split horizontally"
      end if
    end tell
  else if commandToPerform is "Vertical Split" then
    tell application "System Events"
      if processName contains "vim" then
        keystroke ":vsplit"
        -- 36 = Return
        key code 36
      else
        display notification "Nothing to split vertically"
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

on performStandardCommand(commandToPerform)
  tell application "System Events"
    if commandToPerform is "⌃↑" then
      -- 126 = Up arrow
      key code 126 using {control down}
    else if commandToPerform is "⌃↓" then
      -- 125 = Down arrow
      key code 125 using {control down}
    else if commandToPerform is "⌃→" then
      -- 124 = Right arrow
      key code 124 using {control down}
    else if commandToPerform is "⌃←" then
      -- 123 = Right arrow
      key code 123 using {control down}
    else if commandToPerform is "Save" then
      keystroke "s" using {command down}
    else if commandToPerform is "Quit" then
      keystroke "q" using {command down}
    end
  end tell
end performStandardCommand
