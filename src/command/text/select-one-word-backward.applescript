property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  # NOTE: These two actions service slightly different purposes since Vim
  # visual selection and standard text highlighting work in different ways.
  # You would only call this script multiple times in a row outside of Vim.
  if activeProcess contains "vim" then
    performVimSelectOneWordBackward()
  else
    performSelectOneWordBackward()
  end if
end run

on performVimSelectOneWordBackward()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke "evb"
  end tell
end performVimSelectOneWordBackward

on performSelectOneWordBackward()
  tell application "System Events" to tell process activeProcess
    # Lists of key downs currently not working...
    # key code KeyCode's LeftArrow using {shift down, option down}
    key down shift
    key down option
    key code KeyCode's LeftArrow
    key up option
    key up shift
  end tell
end performSelectOneWordBackward
