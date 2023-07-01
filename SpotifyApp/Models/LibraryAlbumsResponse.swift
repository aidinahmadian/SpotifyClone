//
//  LibraryAlbumsResponse.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 7/1/23.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
