//
//  PlacesViewModel.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import Foundation

class PlacesViewModel: PlacesViewModelProtocol {
    
    var places: [Place] {
        StorageManager.shared.fetchPlaces()
    }
    
    func getNumberOfItems() -> Int {
        places.count
    }
}
