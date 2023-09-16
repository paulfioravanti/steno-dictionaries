property KeyCode : script "steno-dictionaries/key-code"
property System : script "steno-dictionaries/system"

global activeProcess

on run
  set activeProcess to System's getActiveProcess()

  if activeProcess contains "vim" then
    performVimToggleNERDTree()
  else if activeProcess is "Preview" then
    performPreviewToggleMarkupToolbar()
  else
    System's displayError("No toolbar to toggle with", activeProcess)
  end if
end run

on performVimToggleNERDTree()
  tell application "System Events" to tell process activeProcess
    key code KeyCode's Escape
    keystroke ":NERDTreeToggle"
    key code KeyCode's Return
  end tell
end performVimToggleNERDTree

on performPreviewToggleMarkupToolbar()
  tell application "System Events" to tell process activeProcess
    # https://github.com/SKaplanOfficial/PyXA/issues/16
    # keystroke "a" using {shift down, command down}
    key down shift
    key down command
    keystroke "a"
    key up shift
    key up command
  end tell
end performPreviewToggleMarkupToolbar
