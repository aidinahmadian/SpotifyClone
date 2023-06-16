//
//  PlaybackPresenter.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 6/16/23.
//

import Foundation
import UIKit

final class PlaybackPresenter {
    
    static func startPlayback(
        from viewController: UIViewController,
        track: AudioTrack
    ) {
        let vc = PlayerViewController()
        viewController.present(vc, animated: true, completion: nil)
    }
    
    static func startPlayback(
        from viewController: UIViewController,
        tracks: [AudioTrack]
    ) {
        
    }
    
}
