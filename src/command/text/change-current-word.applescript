property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimChangeCurrentWord()
  else
    performChangeCurrentWord()
  end if
end run

on performVimChangeCurrentWord()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    # "change inner word"
    keystroke "ciw"
  end tell
end performVimChangeCurrentWord

on performChangeCurrentWord()
  tell application "System Events" to tell process activeProcess
    # - Move cursor to the end of current word
    # - Highlight word from end to beginning
    # - Delete word
    key code KeyCode's RightArrow using option down
    # Lists of key downs currently not working...
    # key code KeyCode's LeftArrow using {shift down, option down}
    key down shift
    key down option
    key code KeyCode's LeftArrow
    key up option
    key up shift

    key code KeyCode's DeleteKey
  end tell
end performChangeCurrentWord
