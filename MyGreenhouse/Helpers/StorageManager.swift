//
//  StorageManager.swift
//  MyGreenhouse
//
//  Created by Nikita on 16.11.21.
//

import RealmSwift

class StorageManager {
    
    static let shared = StorageManager()
    
    let realm = try! Realm()
    
    private init() {}
    
    func changeSchemaVersion() {
        let schemaVersion: UInt64 = 1
        
        let config = Realm.Configuration(
            schemaVersion: schemaVersion,
            migrationBlock: { migration, oldSchemaVersion in
                if oldSchemaVersion < schemaVersion {
                    
                }
            }
        )
        
        Realm.Configuration.defaultConfiguration = config
    }
    
    func saveObject<O: Object>(object: O) {
        write {
            realm.add(object)
        }
    }
    
    func fetchPlaces() -> [Place] {
        Array(realm.objects(Place.self))
    }
    
    private func write(completion: () -> Void) {
        do {
            try realm.write {
                completion()
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
