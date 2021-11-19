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
    
    private let room: Room
    
    required init(room: Room) {
        self.room = room
    }
}
