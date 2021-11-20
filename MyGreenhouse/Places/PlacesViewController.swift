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
    
    private let spacing: CGFloat = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = PlacesViewModel()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Places & Rooms"
        
        setupCollectionView()
    }

    private func setupCollectionView() {
        collectionView = UICollectionView(frame: .zero,
                                          collectionViewLayout: UICollectionViewFlowLayout())
        guard let collectionView = collectionView else { return }
        
        collectionView.register(PlacesCollectionViewCell.self,
                                forCellWithReuseIdentifier: PlacesCollectionViewCell.identifier)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.backgroundColor = .secondarySystemBackground
        
        view.addSubview(collectionView)
        
        collectionView.frame = view.bounds
    }
}

extension PlacesViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        viewModel.getNumberOfSections()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.getNumberOfItems(section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PlacesCollectionViewCell.identifier, for: indexPath) as! PlacesCollectionViewCell
        cell.viewModel = viewModel.getCellViewModel(at: indexPath)
        return cell
    }
}

extension PlacesViewController: UICollectionViewDelegate {
    
}

extension PlacesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemsPerRow: CGFloat = 2 // Ячеек в один ряд.
        let paddingWidth = spacing * (itemsPerRow + 1) // Кол. отступов будет зависить от кол. ячеек.
        let availableWidth = collectionView.frame.width - paddingWidth // Получаем доступную ширину за вычетом отступов.
        let widthPerItem = availableWidth / itemsPerRow // получаем точную доступную ширину для ячейки
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        spacing
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        CGSize(width: collectionView.frame.width, height: 25)
//    }
}
