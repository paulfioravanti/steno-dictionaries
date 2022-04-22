property Util : script "steno-dictionaries/util"

on run {appUrl}
  Util's performActionInChromeTab(appUrl, bringAppToForefront())
  # Open web app in new browser tab if not already open
  open location appUrl
end run

on bringAppToForefront()
  script performBringAppToForefront
    tell application "System Events" to tell process "Google Chrome"
      # AXRaise: raise window and bring it as far forward as its allowed.
      # REF: https://lists.apple.com/archives/accessibility-dev/2004/May/msg00035.html
      # REF: https://apple.stackexchange.com/a/39216/27577
      perform action "AXRaise" of window 1
    end tell
  end script
  return performBringAppToForefront
end bringAppToForefront
