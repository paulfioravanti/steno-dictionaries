property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is contained by System's TerminalApps then
    terminalRefresh()
  else
    performRefresh()
  end if
end run

on terminalRefresh()
  if System's getActiveTerminalProcess(activeProcess) contains "vim" then
    performVimRefresh()
  else
    System's displayError("Nothing to refresh with", activeProcess)
  end if
end terminalRefresh

on performVimRefresh()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    # Refresh the Ctrl-P cache as it sometimes does not pick up the
    # existence of new files: https://github.com/kien/ctrlp.vim
    keystroke ":CtrlPClearCache"
    key code KeyCode's Return
    # Also refresh Ultisnips snippets
    keystroke ":call UltiSnips#RefreshSnippets()"
    key code KeyCode's Return
  end tell
end performVimRefresh

on performRefresh()
  tell application "System Events" to tell process activeProcess
    keystroke "r" using command down
  end tell
end performRefresh
