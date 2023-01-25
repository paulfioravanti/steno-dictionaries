property DeleteKeyCode : 51
property EscapeKeyCode : 53
property LeftArrowKeyCode : 123
property PageDownKeyCode : 121
property PageUpKeyCode : 116
property ReturnKeyCode : 36
property RightArrowKeyCode : 124

property TerminalApps : {¬
  "iTerm2",¬
  "Terminal"¬
}
property TextTransformableApps : {¬
  "1Password 7",¬
  "Google Chrome",¬
  "Pages",¬
  "Safari",¬
  "TextEdit"¬
}
property VimModeCompatibleProcesses : {¬
  "vim",¬
  "tmux",¬
  "less"¬
}

on focusApp(processName)
  tell application "System Events" to tell process processName
    set frontmost to true
  end tell
end focusApp

on getActiveProcess()
  set activeAppProcess to getActiveAppProcess()
  set activeTerminalProcess to getActiveTerminalProcess(activeAppProcess)

  if activeTerminalProcess is null then
    return activeAppProcess
  else
    return activeTerminalProcess
  end if
end getActiveProcess

on getActiveAppProcess()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveAppProcess

on getActiveTerminalProcess(activeProcess)
  if activeProcess is "iTerm2" then
    return getActiveiTermProcess()
  else if activeProcess is "Terminal" then
    return getActiveMacTerminalProcess()
  else
    return null
  end if
end getActiveTerminalProcess

on getActiveiTermProcess()
  tell application "iTerm2"
    # REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current window
  end tell
end getActiveiTermProcess

on getActiveMacTerminalProcess()
  tell application "Terminal"
    return custom title ¬
      of selected tab ¬
      of first window
  end tell
end getActiveMacTerminalProcess

on isVimModeCompatibleProcess(activeProcess)
  set activeTerminalProcess to getActiveTerminalProcess(activeProcess)

  if activeTerminalProcess is null then
    return false
  end if

  repeat with vimModeCompatibleProcess in VimModeCompatibleProcesses
    if activeTerminalProcess contains vimModeCompatibleProcess then
      return true
    end if
  end repeat

  return false
end isVimModeCompatibleProcess

on performTextTransformation(activeProcess, menuItemName)
  tell application "System Events" to tell process activeProcess
    click menu item menuItemName ¬
      of menu "Transformations" ¬
      of menu item "Transformations" ¬
      of menu "Edit" ¬
      of menu bar 1
  end tell
end performTextTransformation

on performVimToggleCase(activeProcess)
  tell application "System Events" to tell process activeProcess
    key code my EscapeKeyCode
    keystroke "~"
  end tell
end performVimToggleCase

on displayError(message, activeProcess)
  set errorMessage to message & " " & activeProcess & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
