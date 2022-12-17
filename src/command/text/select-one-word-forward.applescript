property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  # NOTE: These two actions service slightly different purposes since Vim
  # visual selection and standard text highlighting work in different ways.
  # You would only call this script multiple times in a row outside of Vim.
  if activeProcess contains "vim" then
    performVimSelectOneWordForward()
  else
    performSelectOneWordForward()
  end if
end run

on performVimSelectOneWordForward()
  tell application "System Events" to tell process activeProcess
    key code System's EscapeKeyCode
    keystroke "bve"
  end tell
end performVimSelectOneWordForward

on performSelectOneWordForward()
  tell application "System Events" to tell process activeProcess
    key code System's RightArrowKeyCode using {shift down, option down}
  end tell
end performSelectOneWordForward
