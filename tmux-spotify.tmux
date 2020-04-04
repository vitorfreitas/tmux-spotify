#!/usr/bin/env bash

spotify_song="$(spotify-cli song)"
spotify_artist="$(spotify-cli artist)"
spotify_album="$(spotify-cli album)"

main() {
  local status_right="$spotify_artist: $spotify_song | %d %b %Y - %l:%M %p"

  tmux set-option -gq status-right-length 100
  tmux set-option -gq status-right "$status_right"
}

main
