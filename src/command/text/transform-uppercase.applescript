property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    System's performVimToggleCase(activeProcess)
  else if activeProcess is "Google Chrome" then
    System's performTextTransformation(activeProcess, "Make Uppercase")
  else if activeProcess is contained by System's TextTransformableApps then
    System's performTextTransformation(activeProcess, "Make Upper Case")
  else
    System's displayError("Cannot transform uppercase text with", activeProcess)
  end if
end run
