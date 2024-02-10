property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimSwapCase(activeProcess)
  else
    System's displayError("Cannot swap case text with", activeProcess)
  end if
end run

# Only works for visually selected text and single character in Normal mode.
on performVimSwapCase(activeProcess)
  tell application "System Events" to tell process activeProcess
    keystroke "~"
  end tell
end performVimSwapCase
