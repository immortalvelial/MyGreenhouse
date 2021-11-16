//
//  Place.swift
//  MyGreenhouse
//
//  Created by Nikita on 16.11.21.
//

import RealmSwift
import Foundation

class Place: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var image: Data? = nil
    let rooms = List<Room>()
}

