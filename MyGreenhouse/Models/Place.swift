//
//  Place.swift
//  MyGreenhouse
//
//  Created by Nikita on 16.11.21.
//

import RealmSwift
import Foundation

class Place: Object {
    @objc dynamic let id = UUID().uuidString
    @objc dynamic let name = ""
    @objc dynamic let image: UIImage? = nil
    let rooms = List<Room>()
}

