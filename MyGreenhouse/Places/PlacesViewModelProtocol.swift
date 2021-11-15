//
//  PlacesViewModelProtocol.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import Foundation

protocol PlacesViewModelProtocol {
    var reuseIdentifier: String { get }
    
    func getNumberOfItems() -> Int
}
