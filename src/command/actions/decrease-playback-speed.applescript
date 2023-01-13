property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "Google Chrome" then
    # NOTE: Requires video speed controller chrome extension
    performChromeDecreasePlaybackSpeed()
  else if activeProcess is "VLC" then
    performVLCDecreasePlaybackSpeed()
  else
    # NOTE: No Quicktime equivalent shortcut for decrease speed.
    System's displayError("No playback speed to decrease with", activeProcess)
  end
end run

on performChromeDecreasePlaybackSpeed()
  tell application "System Events" to tell process "Google Chrome"
    keystroke "s" using shift down
  end tell
end performChromeDecreasePlaybackSpeed

on performVLCDecreasePlaybackSpeed()
  tell application "System Events" to tell process "VLC"
    keystroke "-" using command down
  end tell
end performVLCDecreasePlaybackSpeed
