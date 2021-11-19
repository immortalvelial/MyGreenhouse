//
//  PlacesCollectionViewCell.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import UIKit

class PlacesCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell"
    
    var viewModel: PlacesCellViewModelProtocol! {
        didSet {
            let imageTest = UIImage(named: "problem")
            guard let data = imageTest?.pngData() else { return }
            
            nameLabel.text = viewModel.name
            roomImage.image = UIImage(data: viewModel.image ?? data)
        }
    }
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        return label
    }()
    
    lazy var roomImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.layer.cornerRadius = 10
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(roomImage)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        roomImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            roomImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            roomImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            roomImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            roomImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            
            nameLabel.topAnchor.constraint(equalTo: roomImage.bottomAnchor, constant: 0),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
