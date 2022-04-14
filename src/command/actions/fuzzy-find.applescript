on run
  set activeApp to getActiveApp()

  if activeApp is not equal to "iTerm2" then
    displayError(activeApp)
  end if

  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimFuzzyFind()
  else
    performCommandLineFuzzyFind()
  end
end run

on performVimFuzzyFind()
  tell application "System Events"
    # 53 = Escape
    key code 53
    # Currently using Ctrl-P for fuzzy finding in Vim.
    # https://github.com/kien/ctrlp.vim
    keystroke "p" using {control down}
  end tell
end performVimFuzzyFind

on performCommandLineFuzzyFind()
  tell application "System Events"
    # Currently using fzf for fuzzy finding on the command line.
    # https://github.com/junegunn/fzf
    keystroke "$(fzf)"
  end tell
end performCommandLineFuzzyFind

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
    # REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current window
  end tell
end getiTermProcessName

on displayError(activeApp)
  set errorMessage to "Fuzzy find not supported with " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
