//
//  SearchResultDefaultTableViewCell.swift
//  SpotifyApp
//
//  Created by Aidin Ahmadian on 6/15/23.
//

import UIKit
import SDWebImage

class SearchResultDefaultTableViewCell: UITableViewCell {
    
    static let identifier = "SearchResultDefaultTableViewCell"
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        return label
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(iconImageView)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let customSize: CGFloat = contentView.height-10
        iconImageView.frame = CGRect(
            x: 10,
            y: 5,
            width: customSize,
            height: customSize
        )
        iconImageView.layer.cornerRadius = customSize/2
        iconImageView.layer.masksToBounds = true
        
        label.frame = CGRect(
            x: iconImageView.right+10,
            y: 0,
            width: contentView.width-iconImageView.right-15,
            height: contentView.height
        )
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
    }
    
    func configure(with viewModel: SearchResultDefaultTableViewCellViewModel) {
        label.text = viewModel.title
        iconImageView.sd_setImage(with: viewModel.imageURL, completed: nil)
    }
    
}
