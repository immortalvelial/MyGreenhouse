//
//  PlacesViewModelProtocol.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import Foundation

protocol PlacesViewModelProtocol {
    var places: [Place] { get }
    func getNumberOfItems() -> Int
}
