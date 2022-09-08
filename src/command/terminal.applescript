property Apps : {¬
  "iTerm2",¬
  "Terminal"¬
}

property vimModeCompatibleProcesses : {¬
  "vim",¬
  "tmux",¬
  "less"¬
}

on getProcessName(activeApp)
  if activeApp is "iTerm2" then
    return getiTermProcessName()
  else
    return getMacTerminalProcessName()
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
end getMaciTermProcessName

on isVimModeCompatibleProcess(processName)
  repeat with vimModeCompatibleProcess in vimModeCompatibleProcesses
    if processName contains vimModeCompatibleProcess then
      return true
    end if
  end repeat

  return false
end isVimModeApp
