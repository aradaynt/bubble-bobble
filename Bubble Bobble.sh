#!/bin/sh
printf '\033c\033]0;%s\a' Bubble Bobble
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Bubble Bobble.x86_64" "$@"
