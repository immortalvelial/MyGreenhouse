//
//  PlacesCellViewModelProtocol.swift
//  MyGreenhouse
//
//  Created by Nikita on 16.11.21.
//

import Foundation

protocol PlacesCellViewModelProtocol {
    var name: String { get }
    
    init(room: Room)
}
