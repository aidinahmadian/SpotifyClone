//
//  Playlist.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 5/31/23.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
