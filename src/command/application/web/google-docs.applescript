property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

on run
  System's focusApp("Google Chrome")
  Web's useWebApp("https://docs.google.com")
end run
