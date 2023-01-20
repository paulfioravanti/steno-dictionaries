property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  # NOTE: For Firefox, pinning a tab requires:
  # - right clicking the current tab
  # - selecting the "Pin Tab" menu option
  # I can't seem to figure out a way to right click a tab with AppleScript.
  if activeProcess is "Google Chrome" then
    pinTabGoogleChrome()
  else if activeProcess is "Safari" then
    pinTabSafari()
  else
    System's displayError("Pinning tabs not supported with", activeProcess)
  end if
end run

on pinTabGoogleChrome()
  tell application "System Events" to tell process "Google Chrome"
    click menu item "Pin Tab" of menu "Tab" of menu bar 1
  end tell
end pinTabGoogleChrome

on pinTabSafari()
  tell application "System Events" to tell process "Safari"
    click menu item "Pin Tab" of menu "Window" of menu bar 1
  end tell
end pinTabSafari
