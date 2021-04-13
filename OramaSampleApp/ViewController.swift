//
//  ViewController.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 13/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let numberOfCells = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCollectionView()
    }
    
    func setUpCollectionView() {
        collectionView.delegate   = self
        collectionView.dataSource = self
        
        collectionView.register(DefaultFundCollectionViewCell.self, forCellWithReuseIdentifier: DefaultFundCollectionViewCell.identifier())
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView:               UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func collectionView(_ collectionView:        UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DefaultFundCollectionViewCell.identifier(), for: indexPath)
                                    as? DefaultFundCollectionViewCell
        
        cell?.backgroundColor = .red
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView:            UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath:     IndexPath) -> CGSize {
        
        let availableWidth  = collectionView.frame.width
        let availableHeight = CGFloat(120)
        
        return CGSize(width: availableWidth, height: availableHeight)
    }
}
