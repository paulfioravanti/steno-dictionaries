property TerminalApps : {¬
  "iTerm2",¬
  "Terminal"¬
}
property VimModeCompatibleProcesses : {¬
  "vim",¬
  "tmux",¬
  "less"¬
}

on activateApps(processNames)
  repeat with processName in processNames
    activate application processName
  end repeat
end activateApps

on displayError(message, processName)
  set errorMessage to message & " " & processName & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError

on focusApp(processName)
  tell application "System Events" to tell process processName
    set frontmost to true
  end tell
end focusApp

on getActiveAppProcess()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveAppProcess

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

on getActiveProcess()
  set activeAppProcess to getActiveAppProcess()
  set activeTerminalProcess to getActiveTerminalProcess(activeAppProcess)

  if activeTerminalProcess is null then
    return activeAppProcess
  else
    return activeTerminalProcess
  end if
end getActiveProcess

on getActiveTerminalProcess(activeProcess)
  if activeProcess is "iTerm2" then
    return getActiveiTermProcess()
  else if activeProcess is "Terminal" then
    return getActiveMacTerminalProcess()
  else
    return null
  end if
end getActiveTerminalProcess

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

on getActiveProcessWindowName(activeProcess)
  tell application "System Events" to tell process activeProcess
    return name of front window
  end tell
end getActiveProcessWindowName

on reopenApp(processName)
  tell application processName
    reopen
    activate
  end tell
end reopenApp
