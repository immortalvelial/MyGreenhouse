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
        window?.tintColor = .systemGreen
        window?.rootViewController = TabBarViewController()
        
        StorageManager.shared.changeSchemaVersion()
        
        return true
    }
}

