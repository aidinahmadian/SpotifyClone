//
//  RecommendationsResponse.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 6/7/23.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
}
