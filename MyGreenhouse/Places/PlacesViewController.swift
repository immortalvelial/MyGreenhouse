//
//  PlacesViewController.swift
//  MyGreenhouse
//
//  Created by Nikita on 15.11.21.
//

import UIKit

class PlacesViewController: UIViewController {

    var viewModel: PlacesViewModelProtocol!
    
    private var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = PlacesViewModel()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Places & Rooms"
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame: .zero,
                                          collectionViewLayout: layout)
        guard let collectionView = collectionView else {
            return
        }
        
        collectionView.register(UICollectionViewCell.self,
                                forCellWithReuseIdentifier: viewModel.reuseIdentifier)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        view.addSubview(collectionView)
        
        collectionView.frame = view.bounds
    }
}

extension PlacesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.getNumberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: viewModel.reuseIdentifier, for: indexPath)
        
        cell.contentView.backgroundColor = .systemRed
        
        return cell
    }
}

extension PlacesViewController: UICollectionViewDelegate {
    
}
