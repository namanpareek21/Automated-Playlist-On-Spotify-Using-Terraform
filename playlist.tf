resource "spotify_playlist" "krsna" {
  name        = "Kr$na"

  tracks = flatten([
    data.spotify_search_track.krsna.tracks[*].id,
  ])
}

data "spotify_search_track" "krsna" {
  artist = "KR$NA"
  limit = 10
}