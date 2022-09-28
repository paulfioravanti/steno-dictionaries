property EscapeKeyCode : 53
property PageDownKeyCode : 121
property PageUpKeyCode : 116
property ReturnKeyCode : 36

on focusApp(applicationName)
  tell application "System Events" to tell process applicationName
    set frontmost to true
  end tell
end run

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
