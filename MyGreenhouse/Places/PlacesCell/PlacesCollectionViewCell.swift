//
//  PlacesCollectionViewCell.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import UIKit

class PlacesCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
