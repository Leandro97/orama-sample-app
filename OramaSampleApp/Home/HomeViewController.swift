//
//  HomeViewController.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 13/04/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var headerView:        UIView!
    @IBOutlet weak var collectionView:    UICollectionView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var fundList       = [FundDto]()
    lazy var presenter = HomePresenter(view:            self,
                                       getFundsUseCase: GetFundsUseCase())
    
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
        
        presenter.getFunds()
        
        let nib = UINib(nibName: DefaultFundCollectionViewCell.name(), bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: DefaultFundCollectionViewCell.identifier())
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsViewController = segue.destination as? DetailsViewController,
           let fund                  = sender as? FundDto {
        
            detailsViewController.currentFund = fund
        }
    }
}

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
                           riskProfile:              fundDto.riskScore)
        
        return cell
    }
    
    func collectionView(_ collectionView:          UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "HomeToDetailSegue", sender: fundList[indexPath.row])
    }
}
