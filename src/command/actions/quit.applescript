property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

property DiffProcess : "diff"
property ElixirIexProcess : "iex (beam.smp)"
property ElixirMixProcess : "mix (beam.smp)"
property ElmProcess : "(elm)"
property GripProcess : "grip (Python)"
property LessProcess : "less"
property NodeRepl : "node (node)"
property NodeProcess : "(node)"
property PythonRepl : "python (python)"
property RailsProcess : "bin/rails"
property RubyProcess : "(ruby)"
property VimProcess : "(vim)"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by Web's Browsers or activeProcess is "Dash" then
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

  if activeTerminalProcess contains VimProcess then
    performQuitVim()
  else if activeTerminalProcess is NodeRepl then
    performQuitConsole(".exit")
  else if activeTerminalProcess contains ElmProcess then
    performQuitConsole(":exit")
  else if activeTerminalProcess contains NodeProcess then
    performQuitInterrupt()
  else if activeTerminalProcess is PythonRepl then
    performQuitConsole("exit()")
  else if activeTerminalProcess is GripProcess or activeTerminalProcess contains RailsProcess then
    performQuitInterrupt()
  else if activeTerminalProcess is ElixirMixProcess or activeTerminalProcess is ElixirIexProcess then
    performQuitInterrupt()
    performQuitInterrupt()
  else if activeTerminalProcess contains DiffProcess then
    performQuitPager()
  else if activeTerminalProcess contains LessProcess then
    performQuitInterrupt()
    performQuitPager()
  else
    performQuitConsole("exit")
  end if
end terminalQuit

on performQuitVim()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke ":quit"
    key code KeyCode's Return
  end tell
end performQuitVim

on performQuitConsole(exitCommand)
  tell application "System Events" to tell process activeProcess
    keystroke exitCommand
    key code KeyCode's Return
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
