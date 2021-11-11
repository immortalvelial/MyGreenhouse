//
//  SettingsViewController.swift
//  MyGreenhouse
//
//  Created by Nikita on 11.11.21.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
    }
}
