property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

on run {appUrl}
  System's focusApp("Google Chrome")
  Web's useWebApp(appUrl)
end run
