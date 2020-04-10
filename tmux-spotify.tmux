#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

spotify_song="#($CURRENT_DIR/scripts/song.sh)"
spotify_artist="#($CURRENT_DIR/scripts/artist.sh)"
spotify_album="#($CURRENT_DIR/scripts/album.sh)"

main() {
  local status_right="$spotify_artist: $spotify_song | %d %b %Y - %l:%M %p"

  tmux bind-key h run "spotify-cli lyrics"
  tmux set-option -gq status-right-length 100
  tmux set-option -gq status-right "$status_right"
}

main
