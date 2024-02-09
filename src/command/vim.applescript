on performToggleCase(activeProcess)
  tell application "System Events" to tell process activeProcess
    keystroke "~"
  end tell
end performVimToggleCase
