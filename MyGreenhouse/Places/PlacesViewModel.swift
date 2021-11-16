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
    
    func getNumberOfSections() -> Int {
        places.count
    }
    
    func getNumberOfItems(_ section: Int) -> Int {
        places[section].rooms.count
    }
    
    func getCellViewModel(at indexPath: IndexPath) -> PlacesCellViewModelProtocol {
        let room = places[indexPath.section].rooms[indexPath.item]
        return PlacesCellViewModel(room: room)
    }
}
