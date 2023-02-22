#!/bin/bash

declare -r LOG_FILE="$HOME/Library/Application Support/plover/tapey_tape.txt"
declare -r SHELL_COMMAND_PATTERN="{:COMMAND:SHELL:bash -ci 'osascript \\\$STENO_DICTIONARIES/([a-z/]+)/([a-z\-]+\.scpt)(.*)'}(.*)\$"
declare -r SHELL_COMMAND_REPLACEMENT="{:COMMAND: \2\3}\4"

main() {
  tail --lines=500 -f "$LOG_FILE" |
    sed -E "s#$SHELL_COMMAND_PATTERN#$SHELL_COMMAND_REPLACEMENT#"
}

main "$@"
