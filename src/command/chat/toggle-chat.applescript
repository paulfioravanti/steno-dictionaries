property Util : script "steno-dictionaries/util"

on run
  set activeApp to Util's getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleChat(activeApp)
  else if activeApp is "Google Chrome" then
    performGoogleMeetToggleChat()
  else
    Util's displayError("No chat to toggle in", activeApp)
  end
end run

on performZoomToggleChat(activeApp)
  tell application "System Events" to tell process activeApp
    keystroke "h" using {command down, shift down}
  end tell
end performZoomToggleChat

on performGoogleMeetToggleChat()
  # NOTE: If Google Meet is open in any of the browser tabs, that tab will
  # become the active tab, both to run the short cut, and in order to confirm
  # that it actually worked as expected.
  # Much of the scaffold code here came from use-web-application.applescript.
  set windowIndex to 1
  tell application "Google Chrome"
    repeat with currentWindow in windows
      set tabIndex to 1
      repeat with currentTab in tabs of currentWindow
        if "https://meet.google.com/" is in url of currentTab then
          tell window windowIndex
            set active tab index to tabIndex
            set index to 1
          end tell
          tell application "System Events" to tell process "Google Chrome"
            keystroke "c" using {command down, control down}
          end tell
          return
        end
        set tabIndex to tabIndex + 1
      end repeat
      set windowIndex to windowIndex + 1
    end repeat
  end tell
end performGoogleMeetToggleChat
