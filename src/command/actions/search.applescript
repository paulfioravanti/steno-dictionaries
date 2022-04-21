property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "iTerm2" then
    performiTerm2Search(activeApp)
  else if activeApp is "Google Chrome" then
    performGoogleChromeSearch(activeApp)
  else if activeApp is "Slack" then
    performSlackSearch(activeApp)
  else
    performAlfredSearch("Alfred 4")
  end
end run

on performiTerm2Search(activeApp)
  set processName to Util's getiTermProcessName()

  if processName contains "vim" then
    performVimSearch(activeApp)
  else
    performiTerm2GlobalSearch(activeApp)
  end if
end performiTerm2Search

on performVimSearch(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    # Search using Ack: https://github.com/mileszs/ack.vim
    keystroke ":Ack "
  end tell
end performVimSearch

on performiTerm2GlobalSearch(activeApp)
  tell application "System Events" to tell process activeApp
    # Find Globally
    keystroke "f" using {shift down, command down}
  end tell
end performiTerm2GlobalSearch

on performGoogleChromeSearch(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "f" using {option down, command down}
  end tell
end performGoogleChromeSearch

on performSlackSearch(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "g" using {command down}
  end tell
end performSlackSearch

on performAlfredSearch(activeApp)
  # Open Alfred as the search fallback: https://www.alfredapp.com/
  tell application "System Events" to tell process activeApp
    # 49 = Space
    key code 49 using {option down}
  end tell
end performAlfredSearch
