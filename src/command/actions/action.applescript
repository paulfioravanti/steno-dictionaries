property validCommands : {¬
  "Find",¬
  "Save",¬
  "Search",¬
  "Split Horizontal",¬
  "Split Vertical",¬
  "Quit",¬
  "Quit Hard"¬
}

on run {commandToPerform}
  if commandToPerform is not contained by validCommands then
    display notification "Unknown Command"
    tell me to error "Unknown Command"
  end if

  set activeApp to my getActiveApp()

  if activeApp is "iTerm2" then
    my performiTerm2Command(commandToPerform)
  else if commandToPerform is "Search" then
    if activeApp is "Google Chrome" then
      tell application "System Events"
        keystroke "f" using {option down, command down}
      end tell
    else if activeApp is "Slack" then
      tell application "System Events"
        keystroke "g" using {command down}
      end tell
    else
      my performStandardCommand(commandToPerform)
    end
  else if commandToPerform is "Quit Hard" then
    if activeApp is "1Password 7" then
      tell application "System Events"
        keystroke "q" using {control down, option down, command down}
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

on performiTerm2Command(commandToPerform)
  set processName to my getiTermProcessName()

  if commandToPerform is "Save" then
    -- NOTE: Needed to send message to System Events to use the keystroke
    -- and key APIs. See: https://superuser.com/a/1271416/144795
    tell application "System Events"
      if processName contains "vim" then
        keystroke ":write"
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
        -- Silver Searcher (Ag): https://github.com/rking/ag.vim
        keystroke ":Ag "
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
    end
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
  else if commandToPerform is "Quit Hard" then
    tell application "System Events"
      if processName contains "vim" then
        keystroke ":quit!"
        -- 36 = Return
        key code 36
      else if processName contains "tmux" then
        -- Use tmux safe kill to shut down all sessions
        -- https://github.com/jlipps/tmux-safekill
        keystroke "a" using {control down}
        keystroke "c" using {shift down}
      else
        keystroke "q" using {command down}
      end if
    end tell
  end
end performiTerm2Command

on getiTermProcessName()
  tell application "iTerm2"
    -- REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current window
  end tell
end getiTermProcessName

on performiTerm2Quit(processName)
  tell application "System Events"
    if processName contains "vim" then
      keystroke ":quit"
      -- 36 = Return
      key code 36
    else if processName contains "iex" then
      keystroke "c" using {control down}
      keystroke "c" using {control down}
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
    else if processName contains "diff" or processName contains "less" then
      keystroke "q"
    else
      keystroke "exit"
      -- 36 = Return
      key code 36
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
