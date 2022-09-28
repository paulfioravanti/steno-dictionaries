property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalQuitHard(activeApp)
  else if activeApp is "1Password 7" then
    perform1PasswordQuitHard()
  else
    # Convert a "Quit Hard" into a standard "Quit" for applications that do
    # not have specific "Quit Hard" handling.
    performQuit(activeApp)
  end if
end run

on terminalQuitHard(activeApp)
  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimQuitHard(activeApp)
  else if processName contains "tmux" then
    performTmuxQuitHard(activeApp)
  else
    performQuit(activeApp)
  end if
end terminalQuitHard

on performVimQuitHard(activeApp)
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    keystroke ":quit!"
    key code System's ReturnKeyCode
  end tell
end performVimQuitHard

on performTmuxQuitHard(activeApp)
  tell application "System Events" to tell process activeApp
    # Use tmux safe kill to shut down all sessions
    # https://github.com/jlipps/tmux-safekill
    keystroke "a" using {control down}
    keystroke "c" using {shift down}
  end tell
end performTmuxQuitHard

on perform1PasswordQuitHard()
  tell application "System Events" to tell process "1Password 7"
    keystroke "q" using {control down, option down, command down}
  end tell
end perform1PasswordQuitHard

on performQuit(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "q" using {command down}
  end tell
end performQuit
