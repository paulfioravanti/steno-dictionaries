property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveAppProcess()

  if activeProcess is "Google Chrome" then
    # NOTE: Requires video speed controller chrome extension
    performChromeIncreasePlaybackSpeed()
  else if activeProcess is "VLC" then
    performVLCIncreasePlaybackSpeed()
  else if activeProcess is "Quicktime Player" then
    performQuicktimeIncreasePlaybackSpeed()
  else
    System's displayError("No playback speed to increase with", activeProcess)
  end
end run

on performChromeIncreasePlaybackSpeed()
  tell application "System Events" to tell process "Google Chrome"
    keystroke "d" using shift down
  end tell
end performChromeIncreasePlaybackSpeed

on performVLCIncreasePlaybackSpeed()
  tell application "System Events" to tell process "VLC"
    keystroke "=" using command down
  end tell
end performVLCIncreasePlaybackSpeed

on performQuicktimeIncreasePlaybackSpeed()
  tell application "System Events" to tell process "VLC"
    key code System's RightArrowKeyCode using command down
  end tell
end performQuicktimeIncreasePlaybackSpeed
