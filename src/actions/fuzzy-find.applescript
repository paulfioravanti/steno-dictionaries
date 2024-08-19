property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is not contained by System's TerminalApps then
    System's displayError("Fuzzy find not supported with", activeProcess)
  end if

  if System's getActiveTerminalProcess(activeProcess) contains "vim" then
    performVimFuzzyFind()
  else
    performCommandLineFuzzyFind()
  end
end run

on performVimFuzzyFind()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    # Currently using Ctrl-P for fuzzy finding in Vim.
    # https://github.com/kien/ctrlp.vim
    keystroke "p" using control down
  end tell
end performVimFuzzyFind

on performCommandLineFuzzyFind()
  tell application "System Events" to tell process activeProcess
    # Currently using fzf for fuzzy finding on the command line.
    # https://github.com/junegunn/fzf
    keystroke "$(fzf)"
  end tell
end performCommandLineFuzzyFind
