//
//  AuthResponse.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 6/2/23.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}

/*
 //Example:
    "access_token" = "Some access token!";
    "expires_in" = 3600;
    "refresh_token" = "some refresh token";
    scope = "user-read-private";
    "token_type" = Bearer;
 */
