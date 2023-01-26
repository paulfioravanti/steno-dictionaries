property KeyCode : script "steno-dictionaries/key-code"
property PlainText : script "steno-dictionaries/plain-text"
property System : script "steno-dictionaries/system"
property Vim : script "steno-dictionaries/vim"

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    Vim's performToggleCase(activeProcess, KeyCode's Escape)
  else if activeProcess is "Google Chrome" then
    PlainText's performTransformation(activeProcess, "Make Lowercase")
  else if activeProcess is contained by PlainText's TextTransformableApps then
    PlainText's performTransformation(activeProcess, "Make Lower Case")
  else
    System's displayError("Cannot transform lowercase text with", activeProcess)
  end if
end run
