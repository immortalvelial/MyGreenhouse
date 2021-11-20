//
//  PlacesCellViewModelProtocol.swift
//  MyGreenhouse
//
//  Created by Nikita on 16.11.21.
//

import Foundation
import UIKit

protocol PlacesCellViewModelProtocol {
    var name: String { get }
    var image: Data? { get }
    var numberOfPlants: String { get }
    
    init(room: Room)
}
