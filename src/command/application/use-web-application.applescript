# REF: https://www.alfredforum.com/topic/272-open-url-feature-being-aware-of-already-opened-tabs/
# (contains implementation for Safari if desired)
on run {appName}
  set windowIndex to 1
  tell application "Google Chrome"
    repeat with currentWindow in windows
      set tabIndex to 1
      repeat with currentTab in tabs of currentWindow
        if appName is in url of currentTab then
          activate
          tell window windowIndex
            set active tab index to tabIndex
            set index to 1
          end tell
          tell application "System Events" to tell process "Google Chrome"
            # AXRaise: raise window and bring it as far forward as its allowed.
            # REF: https://lists.apple.com/archives/accessibility-dev/2004/May/msg00035.html
            # REF: https://apple.stackexchange.com/a/39216/27577
            perform action "AXRaise" of window 1
          end tell
          return
        end
        set tabIndex to tabIndex + 1
      end repeat
      set windowIndex to windowIndex + 1
    end repeat
  end tell

  # Open web app in new browser tab if not already open
  open location appName
end run
