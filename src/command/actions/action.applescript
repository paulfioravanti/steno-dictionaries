property validCommands : {¬
  "Find",¬
  "Fuzzy Find",¬
  "Page Down",¬
  "Page Up",¬
  "Refresh",¬
  "Save",¬
  "Search",¬
  "Split Horizontal",¬
  "Split Vertical",¬
  "Quit",¬
  "Quit Hard"¬
}

on run {commandToPerform}
  if commandToPerform is not contained by validCommands then
    display notification "Unknown Command" with title "Error"
    tell me to error "Unknown Command"
  end if

  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    performiTerm2Command(commandToPerform)
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
      performStandardCommand(commandToPerform)
    end
  else if commandToPerform is "Page Down" then
    if activeApp is "Google Chrome" then
      tell application "System Events"
        # Vimium-specific. Enables use of smooth scrolling
        keystroke "d"
      end tell
    else
      performStandardCommand(commandToPerform)
    end
  else if commandToPerform is "Page Up" then
    if activeApp is "Google Chrome" then
      tell application "System Events"
        # Vimium-specific. Enables use of smooth scrolling
        keystroke "u"
      end tell
    else
      performStandardCommand(commandToPerform)
    end
  else if commandToPerform is "Quit" then
    if activeApp is "Google Chrome" then
      tell application "System Events"
        # For Chrome, consider "quitting" to mean "quitting the current tab".
        # "Quit Hard" to actually quit the application
        keystroke "w" using {command down}
      end tell
    else
      performStandardCommand(commandToPerform)
    end
  else if commandToPerform is "Quit Hard" then
    if activeApp is "1Password 7" then
      tell application "System Events"
        keystroke "q" using {control down, option down, command down}
      end tell
    else
      # Convert a "Quit Hard" into a standard "Quit" for applications that do
      # not have specific "Quit Hard" handling.
      performStandardCommand("Quit")
    end
  else
    performStandardCommand(commandToPerform)
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
  set processName to getiTermProcessName()

  if commandToPerform is "Find" then
    tell application "System Events"
      if processName contains "vim" then
        # 53 = Escape
        key code 53
        keystroke "/"
      else
        keystroke "f" using {command down}
      end if
    end tell
  else if commandToPerform is "Fuzzy Find" then
    tell application "System Events"
      if processName contains "vim" then
        # 53 = Escape
        key code 53
        # Currently using Ctrl-P for fuzzy finding in Vim.
        # https://github.com/kien/ctrlp.vim
        keystroke "p" using {control down}
      else
        # Currently using fzf for fuzzy finding on the command line.
        # https://github.com/junegunn/fzf
        keystroke "$(fzf)"
      end if
    end tell
  else if commandToPerform is "Page Down" then
    tell application "System Events"
      if processName contains "vim" or processName contains "tmux" then
        keystroke "d" using {control down}
      else
        performStandardCommand(commandToPerform)
      end if
    end tell
  else if commandToPerform is "Page Up" then
    tell application "System Events"
      if processName contains "vim" or processName contains "tmux" then
        keystroke "u" using {control down}
      else
        performStandardCommand(commandToPerform)
      end if
    end tell
  else if commandToPerform is "Refresh" then
    tell application "System Events"
      if processName contains "vim" then
        # Refresh the Ctrl-P cache as it sometimes does not pick up the
        # existence of new files.
        # 96 = F5
        key code 96
      else
        display notification "Nothing to refresh." with title "Error"
      end if
    end tell
  else if commandToPerform is "Save" then
    # NOTE: Needed to send message to System Events to use the keystroke
    # and key APIs. See: https://superuser.com/a/1271416/144795
    tell application "System Events"
      if processName contains "vim" then
        # 53 = Escape
        key code 53
        keystroke ":write"
        # 36 = Return
        key code 36
      else
        display notification "Nothing to save." with title "Error"
      end if
    end tell
  else if commandToPerform is "Search" then
    tell application "System Events"
      if processName contains "vim" then
        # 53 = Escape
        key code 53
        # Search using Ack: https://github.com/mileszs/ack.vim
        keystroke ":Ack "
      else
        # Find Globally
        keystroke "f" using {shift down, command down}
      end if
    end tell
  else if commandToPerform is "Split Horizontal" then
    tell application "System Events"
      if processName contains "vim" then
        # 53 = Escape
        key code 53
        keystroke ":split"
        # 36 = Return
        key code 36
      else
        display notification "Nothing to split horizontally" with title "Error"
      end if
    end
  else if commandToPerform is "Split Vertical" then
    tell application "System Events"
      if processName contains "vim" then
        # 53 = Escape
        key code 53
        keystroke ":vsplit"
        # 36 = Return
        key code 36
      else
        display notification "Nothing to split vertically" with title "Error"
      end if
    end tell
  else if commandToPerform is "Quit" then
    performiTerm2Quit(processName)
  else if commandToPerform is "Quit Hard" then
    tell application "System Events"
      if processName contains "vim" then
        # 53 = Escape
        key code 53
        keystroke ":quit!"
        # 36 = Return
        key code 36
      else if processName contains "tmux" then
        # Use tmux safe kill to shut down all sessions
        # https://github.com/jlipps/tmux-safekill
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
    # REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current window
  end tell
end getiTermProcessName

on performiTerm2Quit(processName)
  tell application "System Events"
    if processName contains "vim" then
      # 53 = Escape
      key code 53
      keystroke ":quit"
      # 36 = Return
      key code 36
    else if processName contains "iex" then
      keystroke "c" using {control down}
      keystroke "c" using {control down}
    else if processName contains "elm" then
      keystroke ":exit"
      # 36 = Return
      key code 36
    else if processName contains "grip" or processName contains "bin/rails server" then
      keystroke "c" using {control down}
    else if processName contains "node" then
      keystroke ".exit"
      # 36 = Return
      key code 36
    else if processName contains "python" then
      keystroke "exit()"
      # 36 = Return
      key code 36
    else if processName contains "diff" or processName contains "less" then
      keystroke "q"
    else
      keystroke "exit"
      # 36 = Return
      key code 36
    end if
  end tell
end performiTerm2Quit

on performStandardCommand(commandToPerform)
  tell application "System Events"
    if commandToPerform is "Find" then
      keystroke "f" using {command down}
    else if commandToPerform is "Page Down" then
      # 121 = Page Down
      key code 121
    else if commandToPerform is "Page Up" then
      # 116 = Page Up
      key code 116
    else if commandToPerform is "Refresh" then
      keystroke "r" using {command down}
    else if commandToPerform is "Save" then
      keystroke "s" using {command down}
    else if commandToPerform is "Quit" then
      keystroke "q" using {command down}
    end
  end tell
end performStandardCommand
