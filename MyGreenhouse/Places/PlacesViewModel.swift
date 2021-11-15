//
//  PlacesViewModel.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import Foundation

class PlacesViewModel: PlacesViewModelProtocol {
    
    var reuseIdentifier: String {
        "cell"
    }
    
    func getNumberOfItems() -> Int {
        2
    }
}
