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
        label.text = "header"
        return label
    }()
    
    static let identifier = "header"
    
    var viewModel: PlacesHeaderViewModelProtocol! {
        didSet {
            nameOfPlaceLabel.text = viewModel.name
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameOfPlaceLabel.frame = bounds
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(nameOfPlaceLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
