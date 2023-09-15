property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimSelectEditableLine()
  else
    performSelectEditableLine()
  end if
end run

on performVimSelectEditableLine()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    # - Move cursor to the beginning of line of editable text
    # - Start visual highlighting
    # - Highlight until the end of line of editable text
    keystroke "^vg_"
  end tell
end performVimSelectEditableLine

on performSelectEditableLine()
  tell application "System Events" to tell process activeProcess
    # NOTE: This method assumes no trailing white space at the end of the line
    # to work as intended.
    # - Move the insertion point to the beginning of the current line
    # - Move the insertion point to the end of the next word
    # - Move the insertion point to the beginning of the previous word
    # - Select the text between the insertion point and the end of the current
    #   line
    key code KeyCode's LeftArrow using command down
    key code KeyCode's RightArrow using option down
    key code KeyCode's LeftArrow using option down
    # Lists of key downs currently not working...
    # key code KeyCode's RightArrow using {command down, shift down}
    key down command
    key down shift
    key code KeyCode's RightArrow
    key up shift
    key up command
  end tell
end performSelectEditableLine
