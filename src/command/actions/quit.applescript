property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"
property Web : script "steno-dictionaries/web"

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Web's Browsers then
    performQuitTab()
  else if activeApp is contained by Terminal's Apps then
    terminalQuit()
  else
    performQuit()
  end if
end run

on performQuitTab()
  tell application "System Events" to tell process activeApp
    # For web browsers, consider "quitting" to mean "quitting the current tab".
    # Use "Quit Hard" script to actually quit the application.
    keystroke "w" using command down
  end tell
end performQuitTab

on terminalQuit()
  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performQuitVim()
  else if processName contains "elm" then
    performQuitConsole(":exit")
  else if processName contains "node" then
    performQuitConsole(".exit")
  else if processName contains "python" then
    performQuitConsole("exit()")
  else if processName contains "grip" or processName contains "rails server" then
    performQuitInterrupt()
  else if processName contains "iex" or processName contains "mix" then
    performQuitInterrupt()
    performQuitInterrupt()
  else if processName contains "diff" or processName contains "less" then
    performQuitPager()
  else
    performQuitConsole("exit")
  end if
end terminalQuit

on performQuitVim()
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke ":quit"
    key code System's ReturnKeyCode
  end tell
end performQuitVim

on performQuitConsole(exitCommand)
  tell application "System Events" to tell process activeApp
    keystroke exitCommand
    key code System's ReturnKeyCode
  end tell
end performQuitConsole

on performQuitInterrupt()
  tell application "System Events" to tell process activeApp
    keystroke "c" using control down
  end tell
end performQuitInterrupt

on performQuitPager()
  tell application "System Events" to tell process activeApp
    keystroke "q"
  end tell
end performQuitPager

on performQuit()
  tell application "System Events" to tell process activeApp
    keystroke "q" using command down
  end tell
end performQuit
