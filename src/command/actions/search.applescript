property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  # NOTE: "Search global"-style functionality not supported in Mac Terminal.
  if activeProcess is "iTerm2" then
    iTerm2Search()
  else if activeProcess is "Google Chrome" then
    performGoogleChromeSearch()
  else if activeProcess is "Slack" then
    performSlackSearch()
  else
    performAlfredSearch()
  end
end run

on iTerm2Search()
  if System's getActiveiTermProcess() contains "vim" then
    performVimSearch()
  else
    performiTerm2GlobalSearch()
  end if
end iTerm2Search

on performVimSearch()
  tell application "System Events" to tell process "iTerm2"
    key code KeyCode's Escape
    # Search using Ack: https://github.com/mileszs/ack.vim
    keystroke ":Ack "
  end tell
end performVimSearch

on performiTerm2GlobalSearch()
  tell application "System Events" to tell process "iTerm2"
    # Find Globally
    keystroke "f" using {shift down, command down}
  end tell
end performiTerm2GlobalSearch

on performGoogleChromeSearch()
  tell application "System Events" to tell process "Google Chrome"
    keystroke "f" using {option down, command down}
  end tell
end performGoogleChromeSearch

on performSlackSearch()
  tell application "System Events" to tell process "Slack"
    keystroke "g" using command down
  end tell
end performSlackSearch

on performAlfredSearch()
  # Open Alfred as the search fallback: https://www.alfredapp.com/
  tell application "System Events" to tell process "Alfred 4"
    key code KeyCode's Space using option down
  end tell
end performAlfredSearch
