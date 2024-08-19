property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    terminalQuitHard()
  else if activeProcess is "1Password" then
    perform1PasswordQuitHard()
  else
    # Convert a "Quit Hard" into a standard "Quit" for applications that do
    # not have specific "Quit Hard" handling.
    performQuit()
  end if
end run

on terminalQuitHard()
  set activeTerminalProcess to System's getActiveTerminalProcess(activeProcess)

  if activeTerminalProcess contains "vim" then
    performVimQuitHard()
  else if activeTerminalProcess contains "tmux" then
    performTmuxQuitHard()
  else
    performQuit()
  end if
end terminalQuitHard

on performVimQuitHard()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke ":quit!"
    key code KeyCode's Return
  end tell
end performVimQuitHard

on performTmuxQuitHard()
  tell application "System Events" to tell process activeProcess
    # Use tmux safe kill to shut down all sessions
    # https://github.com/jlipps/tmux-safekill
    keystroke "a" using control down
    keystroke "c" using shift down
  end tell
end performTmuxQuitHard

on perform1PasswordQuitHard()
  tell application "System Events" to tell process "1Password"
    # https://github.com/SKaplanOfficial/PyXA/issues/16
    # keystroke "q" using {control down, option down, command down}
    key down control
    key down option
    key down command
    keystroke "q"
    key up command
    key up option
    key up control
  end tell
end perform1PasswordQuitHard

on performQuit()
  tell application "System Events" to tell process activeProcess
    keystroke "q" using command down
  end tell
end performQuit
