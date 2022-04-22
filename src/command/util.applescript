on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on getiTermProcessName()
  tell application "iTerm2"
    # REF: https://iterm2.com/documentation-scripting.html
    return name ¬
      of current session ¬
      of current window
  end tell
end getiTermProcessName

# REF: https://www.alfredforum.com/topic/272-open-url-feature-being-aware-of-already-opened-tabs/
# (contains implementation for Safari if desired)
on performActionInChromeTab(appUrl, action)
  # NOTE: If `appUrl` is open in any of the browser tabs, that tab will
  # become the active tab in order to both to run the action, and confirm
  # that it actually worked as expected.
  set windowIndex to 1
  tell application "Google Chrome"
    repeat with currentWindow in windows
      set tabIndex to 1
      repeat with currentTab in tabs of currentWindow
        if appUrl is in url of currentTab then
          tell window windowIndex
            set active tab index to tabIndex
            set index to 1
          end tell
          run action()
          return true
        end
        set tabIndex to tabIndex + 1
      end repeat
      set windowIndex to windowIndex + 1
    end repeat
  end tell
  return false
end performActionInChromeTab

on displayError(message, activeApp)
  set errorMessage to message & " " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
