//
//  AppDelegate.swift
//  MyGreenhouse
//
//  Created by Nikita on 10.11.21.
//

import UIKit
import RealmSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = TabBarViewController()
        
        changeSchemaVersion()
        
        return true
    }
    
    private func changeSchemaVersion() {
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
}

