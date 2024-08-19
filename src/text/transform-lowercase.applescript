property PlainText : script "steno-dictionaries/plain-text"
property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimLowerCase(activeProcess)
  else if activeProcess is "Google Chrome" then
    PlainText's performTransformation(activeProcess, "Make Lowercase")
  else if activeProcess is contained by PlainText's TextTransformableApps then
    PlainText's performTransformation(activeProcess, "Make Lower Case")
  else
    System's displayError("Cannot transform lowercase text with", activeProcess)
  end if
end run

# Only works for visually selected text
on performVimLowerCase(activeProcess)
  tell application "System Events" to tell process activeProcess
    keystroke "u"
  end tell
end performVimLowerCase
