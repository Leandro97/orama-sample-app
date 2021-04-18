//
//  HistoryViewController.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 18/04/21.
//

import UIKit

class HistoryViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var fundList       = [FundDto]()
    lazy var presenter = HistoryPresenter(view:            self,
                                          getFundsUseCase: GetFundsUseCase())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor  = .lightGrayCustom
        
        setUpCollectionView()
    }
    
    func setUpCollectionView() {
        collectionView.delegate                     = self
        collectionView.dataSource                   = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor              = .clear
        
        presenter.getFunds()
        
        let nib = UINib(nibName: DefaultFundCollectionViewCell.name(), bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: DefaultFundCollectionViewCell.identifier())
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HistoryToDetailSegue" {
            if let detailsViewController = segue.destination as? DetailsViewController,
               let fund                  = sender as? FundDto {
            
                detailsViewController.currentFund = fund
            }
        }
    }
}
