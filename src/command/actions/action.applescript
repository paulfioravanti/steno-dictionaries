property validCommands : {¬
  "Find",¬
  "Save",¬
  "Search",¬
  "Split Horizontal",¬
  "Split Vertical",¬
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
  else if activeApp is "Slack" then
    if commandToPerform is "Search" then
      tell application "System Events"
        keystroke "g" using {command down}
      end tell
    end
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
      of current window
  end tell
end getiTermProcessName

on performiTerm2Command(commandToPerform)
  set processName to my getiTermProcessName()

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
  else if commandToPerform is "Find" then
    tell application "System Events"
      if processName contains "vim" then
        keystroke "/"
      else
        keystroke "f" using {command down}
      end if
    end tell
  else if commandToPerform is "Search" then
    tell application "System Events"
      if processName contains "vim" then
        -- Use Ctrl-P fuzzy find: https://github.com/ctrlpvim/ctrlp.vim
        keystroke "p" using {control down}
      else
        -- Find Globally
        keystroke "f" using {shift down, command down}
      end if
    end tell
  else if commandToPerform is "Split Horizontal" then
    tell application "System Events"
      if processName contains "vim" then
        keystroke ":split"
        -- 36 = Return
        key code 36
      else
        display notification "Nothing to split horizontally"
      end if
    end tell
  else if commandToPerform is "Split Vertical" then
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
    if commandToPerform is "Save" then
      keystroke "s" using {command down}
    else if commandToPerform is "Find" then
      keystroke "f" using {command down}
    else if commandToPerform is "Quit" then
      keystroke "q" using {command down}
    end
  end tell
end performStandardCommand
