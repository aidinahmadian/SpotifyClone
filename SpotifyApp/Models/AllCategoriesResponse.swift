//
//  AllCategoriesResponse.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 6/13/23.
//

import Foundation

struct AllCategoriesResponse: Codable {
    let categories: Categories
}

struct Categories: Codable {
    let items: [Category]
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}
