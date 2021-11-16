//
//  Plant.swift
//  MyGreenhouse
//
//  Created by Nikita on 16.11.21.
//

import Foundation
import RealmSwift

class Plant: Object {
    @objc dynamic let id = UUID().uuidString
    @objc dynamic let name = ""
    @objc dynamic let image: UIImage? = nil
}
