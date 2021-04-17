//
//  DetailsViewController.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 15/04/21.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var headerView:     UIView!
    @IBOutlet weak var backButton:     UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var fundList       = [FundDto]()
    lazy var presenter = DetailsPresenter(view:            self,
                                          getFundsUseCase: GetFundsUseCase())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor  = .lightGrayCustom
        
        setUpHeaderView()
        setUpCollectionView()
    }
    
    func setUpHeaderView() {
        headerView.backgroundColor = .secondaryGreenCustom
        backButton.tintColor       = .white
        
        backButton.addTarget(self,
                             action: #selector(goBack),
                             for:    .touchUpInside)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setUpCollectionView() {
        collectionView.delegate                     = self
        collectionView.dataSource                   = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor              = .clear
        
        presenter.getFunds()
        
        let nib = UINib(nibName: FundDetailCollectionViewCell.name(), bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: FundDetailCollectionViewCell.identifier())
    }
}

extension DetailsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FundDetailCollectionViewCell.identifier(),
                                                            for:                 indexPath) as? FundDetailCollectionViewCell
        else { return UICollectionViewCell() }
        
        let fundDto = fundList[indexPath.row]
        
        //cell.configureCell()
        
        return cell
    }
}
