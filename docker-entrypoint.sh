#!/usr/bin/env bash

# check if the first argument passed in looks like a flag
if [ "$(printf %c "$1")" = '-' ]; then
  jinja2 "$@"
# check if the first argument passed in is jinja2
elif [ "$1" = 'jinja2' ]; then
  "$@"
fi

