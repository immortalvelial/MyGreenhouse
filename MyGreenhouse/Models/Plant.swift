//
//  Plant.swift
//  MyGreenhouse
//
//  Created by Nikita on 16.11.21.
//

import Foundation
import RealmSwift

class Plant: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var image: Data? = nil
}
