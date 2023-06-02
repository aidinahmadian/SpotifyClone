//
//  APICaller.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 5/31/23.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private init() {}
    
    public func getCurrentUserProfile(completion: @escaping(Result<UserProfile, Error>) -> Void) {
        
    }
}
