//
//  PlacesHeaderViewModelProtocol.swift
//  MyGreenhouse
//
//  Created by Nikita on 20.11.21.
//

protocol PlacesHeaderViewModelProtocol {
    var name: String { get }
    
    init(place: Place)
}
