property System : script "steno-dictionaries/system"
property Terminal : script "steno-dictionaries/terminal"

property F5KeyCode : 96

on run
  set activeApp to System's getActiveApp()

  if activeApp is contained by Terminal's Apps then
    terminalRefresh(activeApp)
  else
    performRefresh(activeApp)
  end if
end run

on terminalRefresh(activeApp)
  set processName to Terminal's getProcessName(activeApp)

  if processName contains "vim" then
    performVimRefresh(activeApp)
  else
    display notification "Nothing to refresh." with title "Error"
  end if
end terminalRefresh

on performVimRefresh(activeApp)
  tell application "System Events" to tell process activeApp
    # Refresh the Ctrl-P cache as it sometimes does not pick up the
    # existence of new files: https://github.com/kien/ctrlp.vim
    key code F5KeyCode
  end tell
end performVimRefresh

on performRefresh(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "r" using {command down}
  end tell
end performRefresh
