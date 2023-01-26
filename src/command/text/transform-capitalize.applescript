property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimCapitalize()
  else if activeProcess is contained by System's TextTransformableApps then
    System's performTextTransformation(activeProcess, "Capitalize")
  else
    System's displayError("Cannot transform lowercase text with", activeProcess)
  end if
end run

on performVimCapitalize()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    # REF: https://vim.fandom.com/wiki/Capitalize_words_and_regions_easily
    keystroke "guiw~h"
  end tell
end performVimCapitalize
