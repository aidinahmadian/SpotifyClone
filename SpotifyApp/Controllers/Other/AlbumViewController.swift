//
//  AlbumViewController.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 6/8/23.
//

import UIKit

class AlbumViewController: UIViewController {
    
    private let album: Album
    
    init(album: Album) {
        self.album = album
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = album.name
        view.backgroundColor = .systemBackground
    }

}
