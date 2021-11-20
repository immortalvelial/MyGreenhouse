//
//  PlacesHeaderCollectionReusableView.swift
//  MyGreenhouse
//
//  Created by Nikita on 20.11.21.
//

import UIKit

class PlacesHeaderCollectionReusableView: UICollectionReusableView {
    
    lazy var nameOfPlaceLabel: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var placeImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "house")
        return imageView
    }()
    
    lazy var nameOfPlaceStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.addArrangedSubview(placeImage)
        stackView.addArrangedSubview(nameOfPlaceLabel)
        return stackView
    }()
    
    static let identifier = "header"
    
    var viewModel: PlacesHeaderViewModelProtocol! {
        didSet {
            nameOfPlaceLabel.text = viewModel.name
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
        addSubview(nameOfPlaceStackView)
        
        nameOfPlaceStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameOfPlaceStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
}
