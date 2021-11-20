//
//  PlacesViewModelProtocol.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import Foundation

protocol PlacesViewModelProtocol {
    var places: [Place] { get }
    
    func getNumberOfSections() -> Int
    func getNumberOfItems(_ section: Int) -> Int
    
    func getCellViewModel(at indexPath: IndexPath) -> PlacesCellViewModelProtocol
    func getHeaderViewModel(at indexPath: IndexPath) -> PlacesHeaderViewModelProtocol
}
