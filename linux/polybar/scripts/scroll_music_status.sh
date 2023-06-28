#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 15 \
        --delay 0.1 \
        --scroll-padding " || " \
        --match-command "`dirname $0`/get_music_status.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 1" \
        --update-check true "`dirname $0`/get_music_status.sh" &
wait
