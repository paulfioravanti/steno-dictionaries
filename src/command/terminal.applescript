property Apps : {¬
  "iTerm2",¬
  "Terminal"¬
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
  return processName contains "vim" ¬
    or processName contains "tmux"
end isVimModeApp
