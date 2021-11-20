//
//  PlacesCellViewModel.swift
//  MyGreenhouse
//
//  Created by Nikita on 16.11.21.
//

import Foundation

class PlacesCellViewModel: PlacesCellViewModelProtocol {
    
    var name: String {
        room.name
    }
    
    var image: Data? {
        room.image
    }
    
    var numberOfPlants: String {
        getNumberOfPlants()
    }
    
    private let room: Room
    
    required init(room: Room) {
        self.room = room
    }
    
    private func getNumberOfPlants() -> String {
        switch room.plants.count {
        case 0: return "Еще нет растений."
        default: return "Растений: \(room.plants.count)"
        }
    }
}
