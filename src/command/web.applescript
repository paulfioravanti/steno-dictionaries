property Browsers : {¬
  "Google Chrome",¬
  "Firefox",¬
  "Safari"¬
}
property GoogleMeetUrl : "https://meet.google.com/"

script bringChromeToForefront
  tell application "System Events" to tell process "Google Chrome"
    # AXRaise: raise window and bring it as far forward as its allowed.
    # REF: https://lists.apple.com/archives/accessibility-dev/2004/May/msg00035.html
    # REF: https://apple.stackexchange.com/a/39216/27577
    perform action "AXRaise" of window 1
  end tell
end script

on useWebApp(appUrl)
  # Open web app in new browser tab if not already open
  performActionInChromeTab(appUrl, bringChromeToForefront) ¬
    or open location appUrl
end useWebApp

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
            # Bring window to the foreground
            set index to 1
            set active tab index to tabIndex
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
