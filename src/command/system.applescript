on getActiveApp()
  tell application "System Events"
    return name ¬
      of first application process ¬
      whose frontmost ¬
      is true
  end tell
end getActiveApp

on displayError(message, activeApp)
  set errorMessage to message & " " & activeApp & "."
  display notification errorMessage with title "Error"
  tell me to error errorMessage
end displayError
