#!/bin/bash

# Originally from https://github.com/didoesdigital/save-typey-type-for-stenographers-progress

# Update these two paths to suit you:
FOLDER="$HOME/Dropbox/steno/steno-progress/"
FILE="$HOME/Dropbox/steno/steno-progress/$(date -j "+%Y-%m-%d-%s").txt"

pbpaste > "$FILE" && EXIT_STATUS=$?

if [[ $EXIT_STATUS != 0 ]]; then
  osascript -e "display notification \"Failed to save progress\""
else
  osascript -e "display notification \"Saved Typey Type progress\""
  cd "$FOLDER" || exit
  git add .
  git commit -m "AUTO: Save Typey Type progress to $FOLDER"
  cd - || exit
fi
