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
    @IBOutlet weak var tabBar:            UITabBar!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var fundList       = [FundDto]()
    lazy var presenter = HomePresenter(view:            self,
                                       getFundsUseCase: GetFundsUseCase())
    
    let tabBarViewControler = UITabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor  = .lightGrayCustom
        headerView.backgroundColor = .secondaryGreenCustom
        activityIndicator.isHidden = true
        
        setUpCollectionView()
        setUpTabBar()
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
    
    func setUpTabBar() {
        tabBar.delegate     = self
        tabBar.selectedItem = nil
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HomeToDetailSegue" {
            if let detailsViewController = segue.destination as? DetailsViewController,
               let fund                  = sender as? FundDto {
            
                detailsViewController.currentFund = fund
            }
        }
    }
}

extension HomeViewController: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        self.performSegue(withIdentifier: "HomeToHistorySegue",
                          sender:         nil)
    }
}
