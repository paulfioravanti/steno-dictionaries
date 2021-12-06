on run argv
  set menuItem to "Step " & (item 1 of argv)

  tell application "System Events" to tell process "VLC"
    click menu item menuItem ¬
    of menu 1 ¬
    of menu bar item "Playback" ¬
    of menu bar 1
  end tell
end run
