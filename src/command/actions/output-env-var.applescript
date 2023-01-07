on run {envVarName}
  set envVarValue to do shell script "echo $" & envVarName

  tell application "System Events"
    keystroke envVarValue
  end tell
end run
