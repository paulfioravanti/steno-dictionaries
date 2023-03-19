#!/bin/bash

readonly PLOVER_DIRECTORY="$HOME/Library/ApplicationSupport/plover"
readonly TAPE_FILE="$PLOVER_DIRECTORY/tapey_tape.txt"
readonly TAPE_ARCHIVE_DIRECTORY="$PLOVER_DIRECTORY/tapey_tape"
readonly TAPE_ARCHIVE="$TAPE_ARCHIVE_DIRECTORY/$(date -j "+%Y-%m-%d-%s").txt"
readonly CLEAR_TAPE_BUFFER="$STENO_DICTIONARIES/src/command/iterm/clear-tape-buffer.scpt"

mkdir "$TAPE_ARCHIVE_DIRECTORY"
cat "$TAPE_FILE" > "$TAPE_ARCHIVE" && EXIT_STATUS=$?

if [[ $EXIT_STATUS != 0 ]]; then
  osascript -e "display notification \"Failed to save tape archive\""
  exit
fi

truncate -s 0 "$TAPE_FILE" && EXIT_STATUS=$?

if [[ $EXIT_STATUS != 0 ]]; then
  osascript -e "display notification \"Failed to truncate tape file\""
  exit
fi

osascript "$CLEAR_TAPE_BUFFER"
osascript -e "display notification \"Tape archived and reset\""
