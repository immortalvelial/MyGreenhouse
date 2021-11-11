//
//  ViewController.swift
//  MyGreenhouse
//
//  Created by Nikita on 10.11.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Places & Rooms"
    }
}

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
    }
}

class CustomTabBar: UITabBarController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let vc1 = UINavigationController(rootViewController: ViewController())
        vc1.tabBarItem = UITabBarItem(title: "Places & Rooms",
                                      image: UIImage(systemName: "house"),
                                      selectedImage: UIImage(systemName: "house.fill"))
        let vc2 = UINavigationController(rootViewController: ViewController2())
        vc2.tabBarItem = UITabBarItem(title: "Settings",
                                      image: UIImage(systemName: "gearshape"),
                                      selectedImage: UIImage(systemName: "gearshape.fill"))
        
        viewControllers = [vc1, vc2]
    }
}
