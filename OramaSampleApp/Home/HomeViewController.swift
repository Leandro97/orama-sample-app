//
//  HomeViewController.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 13/04/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var headerView:     UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let numberOfCells = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor  = .lightGrayCustom
        headerView.backgroundColor = .secondaryGreenCustom
        
        setUpCollectionView()
    }
    
    func setUpCollectionView() {
        collectionView.delegate                     = self
        collectionView.dataSource                   = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor              = .clear
        
        let nib = UINib(nibName: DefaultFundCollectionViewCell.name(), bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: DefaultFundCollectionViewCell.identifier())
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView:               UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func collectionView(_ collectionView:        UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DefaultFundCollectionViewCell.identifier(),
                                                            for:                 indexPath) as? DefaultFundCollectionViewCell
        else { return UICollectionViewCell() }
        
        if indexPath.row % 2 == 0 {
            cell.setUpImageView(image: UIImage(named: "orama-icon") ?? UIImage())
        }
        
        return cell
    }
    
    func collectionView(_ collectionView:            UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath:     IndexPath) -> CGSize {
        
        let availableWidth  = collectionView.frame.width
        let availableHeight = CGFloat(125)
        
        return CGSize(width: availableWidth, height: availableHeight)
    }
}