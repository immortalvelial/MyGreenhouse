//
//  PlacesHeaderViewModel.swift
//  MyGreenhouse
//
//  Created by Nikita on 20.11.21.
//

import Foundation

class PlacesHeaderViewModel: PlacesHeaderViewModelProtocol {
    var name: String {
        place.name
    }
    
    private let place: Place
    
    required init(place: Place) {
        self.place = place
    }
}
