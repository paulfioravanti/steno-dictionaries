property TextTransformableApps : {¬
  "1Password 7",¬
  "Google Chrome",¬
  "Pages",¬
  "Safari",¬
  "TextEdit"¬
}

on performTransformation(activeProcess, menuItemName)
  tell application "System Events" to tell process activeProcess
    click menu item menuItemName ¬
      of menu "Transformations" ¬
      of menu item "Transformations" ¬
      of menu "Edit" ¬
      of menu bar 1
  end tell
end performTransformation
