property System : script "steno-dictionaries/system"
property Web : script "steno-dictionaries/web"

on run
  System's focusApp("Google Chrome")
  Web's useWebApp("https://search.google.com/search-console/links?resource_id=sc-domain%3Apaulfioravanti.com")
end run
