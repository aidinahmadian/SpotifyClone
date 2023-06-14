//
//  SearchResultsViewController.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 5/31/23.
//

import UIKit

struct SearchSection {
    let title: String
    let results: [SearchResult]
}

class SearchResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var sections: [SearchSection] = []
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .systemBackground
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.isHidden = true
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func update(with results: [SearchResult]) {
        let artists = results.filter({
            switch $0 {
            case .artist: return true
            default: return false
            }
        })
        self.sections = [
            SearchSection(title: "Artists", results: artists)
        ]
        tableView.reloadData()
        tableView.isHidden = results.isEmpty
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let result = sections[indexPath.section].results[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch result {
        case .artist(let model):
            cell.textLabel?.text = "Artist" + model.name
        case .album(let model):
            cell.textLabel?.text = "Album" + model.name
        case .track(let model):
            cell.textLabel?.text = "Track" + model.name
        case .playlist(let model):
            cell.textLabel?.text = "Playlist" + model.name
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
    
}
