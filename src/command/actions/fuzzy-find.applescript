property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

global activeApp

on run
  set activeApp to System's getActiveApp()

  if activeApp is not contained by Terminal's Apps then
    System's displayError("Fuzzy find not supported with", activeApp)
  end if

  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimFuzzyFind()
  else
    performCommandLineFuzzyFind()
  end
end run

on performVimFuzzyFind()
  tell application "System Events" to tell process activeApp
    key code System's EscapeKeyCode
    # Currently using Ctrl-P for fuzzy finding in Vim.
    # https://github.com/kien/ctrlp.vim
    keystroke "p" using control down
  end tell
end performVimFuzzyFind

on performCommandLineFuzzyFind()
  tell application "System Events" to tell process activeApp
    # Currently using fzf for fuzzy finding on the command line.
    # https://github.com/junegunn/fzf
    keystroke "$(fzf)"
  end tell
end performCommandLineFuzzyFind
