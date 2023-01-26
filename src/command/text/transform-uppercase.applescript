property KeyCode : script "steno-dictionaries/key-code"
property PlainText : script "steno-dictionaries/plain-text"
property System : script "steno-dictionaries/system"

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    System's performVimToggleCase(activeProcess, KeyCode's Escape)
  else if activeProcess is "Google Chrome" then
    PlainText's performTransformation(activeProcess, "Make Uppercase")
  else if activeProcess is contained by PlainText's TextTransformableApps then
    PlainText's performTransformation(activeProcess, "Make Upper Case")
  else
    System's displayError("Cannot transform uppercase text with", activeProcess)
  end if
end run
