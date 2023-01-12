property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by Web's Browsers then
    performQuitTab()
  else if activeProcess is contained by System's TerminalApps then
    terminalQuit()
  else
    performQuit()
  end if
end run

on performQuitTab()
  tell application "System Events" to tell process activeProcess
    # For web browsers, consider "quitting" to mean "quitting the current tab".
    # Use "Quit Hard" script to actually quit the application.
    keystroke "w" using command down
  end tell
end performQuitTab

on terminalQuit()
  set activeTerminalProcess to System's getActiveTerminalProcess(activeProcess)

  if activeTerminalProcess contains "vim" then
    performQuitVim()
  else if activeTerminalProcess contains "elm" then
    performQuitConsole(":exit")
  else if activeTerminalProcess contains "node" then
    performQuitConsole(".exit")
  else if activeTerminalProcess contains "python" then
    performQuitConsole("exit()")
  else if activeTerminalProcess contains "grip" or activeTerminalProcess contains "rails server" then
    performQuitInterrupt()
  else if activeTerminalProcess contains "iex" or activeTerminalProcess contains "mix" then
    performQuitInterrupt()
    performQuitInterrupt()
  else if activeTerminalProcess contains "diff" then
    performQuitPager()
  else if activeTerminalProcess contains "less" then
    performQuitInterrupt()
    performQuitPager()
  else
    performQuitConsole("exit")
  end if
end terminalQuit

on performQuitVim()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke ":quit"
    key code System's ReturnKeyCode
  end tell
end performQuitVim

on performQuitConsole(exitCommand)
  tell application "System Events" to tell process activeProcess
    keystroke exitCommand
    key code System's ReturnKeyCode
  end tell
end performQuitConsole

on performQuitInterrupt()
  tell application "System Events" to tell process activeProcess
    keystroke "c" using control down
  end tell
end performQuitInterrupt

on performQuitPager()
  tell application "System Events" to tell process activeProcess
    keystroke "q"
  end tell
end performQuitPager

on performQuit()
  tell application "System Events" to tell process activeProcess
    keystroke "q" using command down
  end tell
end performQuit
