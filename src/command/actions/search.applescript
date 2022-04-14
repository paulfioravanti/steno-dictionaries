on run
  set activeApp to getActiveApp()

  if activeApp is "iTerm2" then
    performiTerm2Search()
  else if activeApp is "Google Chrome" then
    performGoogleChromeSearch()
  else if activeApp is "Slack" then
    performSlackSearch()
  else
    performAlfredSearch()
  end
end run

on performiTerm2Search()
  set processName to getiTermProcessName()

  if processName contains "vim" then
    performVimSearch()
  else
    performiTerm2GlobalSearch()
  end if
end performiTerm2Search

on performVimSearch()
  tell application "System Events"
    # 53 = Escape
    key code 53
    # Search using Ack: https://github.com/mileszs/ack.vim
    keystroke ":Ack "
  end tell
end performVimSearch

on performiTerm2GlobalSearch()
  tell application "System Events"
    # Find Globally
    keystroke "f" using {shift down, command down}
  end tell
end performiTerm2GlobalSearch

on performGoogleChromeSearch()
  tell application "System Events"
    keystroke "f" using {option down, command down}
  end tell
end performGoogleChromeSearch

on performSlackSearch()
  tell application "System Events"
    keystroke "g" using {command down}
  end tell
end performSlackSearch

on performAlfredSearch()
  # Open Alfred as the search fallback: https://www.alfredapp.com/
  tell application "System Events"
    # 49 = Space
    key code 49 using {option down}
  end tell
end performAlfredSearch

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
