//
//  TabBarViewController.swift
//  MyGreenhouse
//
//  Created by Nikita on 11.11.21.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let placesVC = UINavigationController(rootViewController: PlacesViewController())
        placesVC.tabBarItem = UITabBarItem(title: "Places & Rooms",
                                      image: UIImage(systemName: "house"),
                                      selectedImage: UIImage(systemName: "house.fill"))
        
        let plantsVC = UINavigationController(rootViewController: PlantsViewController())
        plantsVC.tabBarItem = UITabBarItem(title: "Plants",
                                      image: UIImage(systemName: "leaf"),
                                      selectedImage: UIImage(systemName: "leaf.fill"))
        
        let settingsVC = UINavigationController(rootViewController: SettingsViewController())
        settingsVC.tabBarItem = UITabBarItem(title: "Settings",
                                      image: UIImage(systemName: "gearshape"),
                                      selectedImage: UIImage(systemName: "gearshape.fill"))
        
        viewControllers = [placesVC, plantsVC,settingsVC]
    }
}
