# REF: https://forum.videolan.org/viewtopic.php?t=138311
on run {direction}
  if direction is "Forward" then
    tell application "VLC" to step forward 1
  else if direction is "Backward" then
    tell application "VLC" to step backward 1
  else
    display notification "Unknown Step Direction"
    tell me to error "Unknown Step Direction"
  end if
end run
