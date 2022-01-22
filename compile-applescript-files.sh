#!/bin/bash

find . -name "*.applescript" |
while read -r FILENAME
do
  COMPILED_FILENAME="$(echo "$FILENAME" | cut -d'.' -f1,2).scpt"
  osacompile -o "$COMPILED_FILENAME" "$FILENAME"
done
