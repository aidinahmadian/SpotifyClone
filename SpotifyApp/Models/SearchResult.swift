//
//  SearchResult.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 6/14/23.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
