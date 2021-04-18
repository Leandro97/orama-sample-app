//
//  HomeCollectionViewExtension.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 18/04/21.
//

import Foundation
import UIKit

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView:               UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return fundList.count
    }
    
    func collectionView(_ collectionView:            UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath:     IndexPath) -> CGSize {
        
        let availableWidth  = collectionView.frame.width
        let availableHeight = CGFloat(125)
        
        return CGSize(width: availableWidth, height: availableHeight)
    }
    
    func collectionView(_ collectionView:        UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DefaultFundCollectionViewCell.identifier(),
                                                            for:                 indexPath) as? DefaultFundCollectionViewCell
        else { return UICollectionViewCell() }
        
        let fundDto = fundList[indexPath.row]
        
        cell.configureCell(fundName:                 fundDto.simpleName,
                           minimumApplicationAmount: fundDto.minimumInitialApplicationAmount,
                           riskScore:                fundDto.riskScore)
        
        return cell
    }
    
    func collectionView(_ collectionView:          UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "HomeToDetailSegue",
                          sender:         fundList[indexPath.row])
    }
}
