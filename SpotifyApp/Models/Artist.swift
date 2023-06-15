//
//  Artist.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 5/31/23.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
