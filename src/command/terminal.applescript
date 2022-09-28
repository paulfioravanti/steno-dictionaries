property Apps : {¬
  "iTerm2",¬
  "Terminal"¬
}
property VimModeCompatibleProcesses : {¬
  "vim",¬
  "tmux",¬
  "less"¬
}

on getProcessName(activeApp)
  if activeApp is "iTerm2" then
    return getiTermProcessName()
  else if activeApp is "Terminal" then
    return getMacTerminalProcessName()
  else
    return activeApp
  end if
end getProcessName

on getiTermProcessName()
  tell application "iTerm2"
    # REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current window
  end tell
end getiTermProcessName

on getMacTerminalProcessName()
  tell application "Terminal"
    return custom title ¬
      of selected tab ¬
      of first window
  end tell
end getMacTerminalProcessName

on isVimModeCompatibleProcess(activeApp)
  set processName to getProcessName(activeApp)

  repeat with vimModeCompatibleProcess in VimModeCompatibleProcesses
    if processName contains vimModeCompatibleProcess then
      return true
    end if
  end repeat

  return false
end isVimModeCompatibleProcess
