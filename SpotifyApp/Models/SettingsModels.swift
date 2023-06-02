//
//  SettingsModels.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 6/2/23.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
    
}

struct Option {
    let title: String
    let handler: () -> Void
}
