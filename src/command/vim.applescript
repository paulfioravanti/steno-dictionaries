on performToggleCase(activeProcess, normalModeKeyCode)
  tell application "System Events" to tell process activeProcess
    key code normalModeKeyCode
    keystroke "~"
  end tell
end performVimToggleCase
