property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is contained by Util's WebBrowsers then
    performQuitTab(activeApp)
  else if activeApp is contained by Util's TerminalApps then
    terminalQuit(activeApp)
  else
    performQuit(activeApp)
  end if
end run

on performQuitTab(activeApp)
  tell application "System Events" to tell process activeApp
    # For web browsers, consider "quitting" to mean "quitting the current tab".
    # Use "Quit Hard" script to actually quit the application.
    keystroke "w" using {command down}
  end tell
end performQuitTab

on terminalQuit(activeApp)
  set processName to Util's getTerminalProcessName(activeApp)

  if processName contains "vim" then
    performQuitVim(activeApp)
  else if processName contains "elm" then
    performQuitConsole(activeApp, ":exit")
  else if processName contains "node" then
    performQuitConsole(activeApp, ".exit")
  else if processName contains "python" then
    performQuitConsole(activeApp, "exit()")
  else if processName contains "grip" or processName contains "rails server" then
    performQuitInterrupt(activeApp)
  else if processName contains "iex" or processName contains "mix" then
    performQuitInterrupt(activeApp)
    performQuitInterrupt(activeApp)
  else if processName contains "diff" or processName contains "less" then
    performQuitPager(activeApp)
  else
    performQuitConsole(activeApp, "exit")
  end if
end terminalQuit

on performQuitVim(activeApp)
  tell application "System Events" to tell process activeApp
    # 53 = Escape
    key code 53
    keystroke ":quit"
    # 36 = Return
    key code 36
  end tell
end performQuitVim

on performQuitConsole(activeApp, exitCommand)
  tell application "System Events" to tell process activeApp
    keystroke exitCommand
    # 36 = Return
    key code 36
  end tell
end performQuitConsole

on performQuitInterrupt(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "c" using {control down}
  end tell
end performQuitInterrupt

on performQuitPager(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "q"
  end tell
end performQuitPager

on performQuit(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "q" using {command down}
  end tell
end performQuit
