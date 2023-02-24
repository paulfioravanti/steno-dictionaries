#!/bin/bash

readonly LOG_FILE="$HOME/Library/Application Support/plover/tapey_tape.txt"
readonly SHELL_COMMAND_PATTERN="{:COMMAND:SHELL:bash -ci 'osascript \\\$STENO_DICTIONARIES/([a-z/]+)/([a-z\-]+\.scpt)(.*)'}(.*)\$"
readonly SHELL_COMMAND_REPLACEMENT="{:COMMAND: \2\3}\4"

main() {
  local filter=false

  parse_args "$@"

  if [[ "$filter" = true ]]; then
    run_filtered_tape_feed
  else
    run_tape_feed
  fi
}

parse_args() {
  local OPTIND opt
  while getopts ":f-:" opt; do
    case $opt in
      f) filter=true;;
      -)
        case $OPTARG in
          filter) filter=true;;
          *)
            echo "Unknown option --$OPTARG"
            exit 1
            ;;
        esac
        ;;
      \?)
        echo "Unknown option -$OPTARG"
        exit 1
        ;;
    esac
  done
  shift $((OPTIND - 1))
}

run_filtered_tape_feed() {
  tail --lines=500 -f "$LOG_FILE" |
    sed -E "s#$SHELL_COMMAND_PATTERN#$SHELL_COMMAND_REPLACEMENT#"
}

run_tape_feed() {
  less +F "$LOG_FILE"
}

main "$@"
