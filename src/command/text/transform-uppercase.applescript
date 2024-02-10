property PlainText : script "steno-dictionaries/plain-text"
property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimUpperCase(activeProcess)
  else if activeProcess is "Google Chrome" then
    PlainText's performTransformation(activeProcess, "Make Uppercase")
  else if activeProcess is contained by PlainText's TextTransformableApps then
    PlainText's performTransformation(activeProcess, "Make Upper Case")
  else
    System's displayError("Cannot transform uppercase text with", activeProcess)
  end if
end run

# Only works for visually selected text
on performVimUpperCase(activeProcess)
  tell application "System Events" to tell process activeProcess
    keystroke "U"
  end tell
end performVimUpperCase
