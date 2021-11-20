//
//  PlacesCollectionViewCell.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import UIKit

class PlacesCollectionViewCell: UICollectionViewCell {
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var numberOfPlantsLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    lazy var roomImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var editButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "pencil"), for: .normal)
        button.tintColor = .systemGreen
        return button
    }()
    
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(numberOfPlantsLabel)
        return stackView
    }()

    static let identifier = "cell"
    
    var viewModel: PlacesCellViewModelProtocol! {
        didSet {
            setupCell()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 10
        
        contentView.addSubview(labelStackView)
        contentView.addSubview(roomImage)
        contentView.addSubview(editButton)
        
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        roomImage.translatesAutoresizingMaskIntoConstraints = false
        editButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            roomImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            roomImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            roomImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                constant: -(contentView.frame.size.width / 2)),
            roomImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                              constant: -(contentView.frame.size.height / 2)),
            
            editButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            editButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            labelStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            labelStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    private func setupCell() {
        let imageTest = UIImage(named: "problem")
        guard let data = imageTest?.pngData() else { return }
        
        nameLabel.text = viewModel.name
        roomImage.image = UIImage(data: viewModel.image ?? data)
        numberOfPlantsLabel.text = viewModel.numberOfPlants
    }
}
