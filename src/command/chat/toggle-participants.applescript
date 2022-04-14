on run
  set activeApp to getActiveApp()

  if activeApp is "zoom.us" then
    performZoomToggleParticipants()
  else if activeApp is "Google Chrome" then
    performGoogleMeetToggleParticipants()
  else
    displayError(activeApp)
  end
end run


on performZoomToggleParticipants()
  tell application "System Events"
    keystroke "u" using command down
  end tell
end performZoomToggleParticipants

on performGoogleMeetToggleParticipants()
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
            keystroke "p" using {command down, control down}
          end tell
          return
        end
        set tabIndex to tabIndex + 1
      end repeat
      set windowIndex to windowIndex + 1
    end repeat
  end tell
end performGoogleMeetToggleParticipants

on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on displayError(activeApp)
  set errorMessage to "No participants to toggle in " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
