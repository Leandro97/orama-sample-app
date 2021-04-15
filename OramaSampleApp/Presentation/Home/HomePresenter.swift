//
//  HomePresenter.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

class HomePresenter {
    let view:            HomeViewController
    let getFundsUseCase: GetFundsUseCase
    
    init(view:            HomeViewController,
         getFundsUseCase: GetFundsUseCase) {
        
        self.view            = view
        self.getFundsUseCase = getFundsUseCase
    }
    
    func getFunds() {
        self.view.activityIndicator.startAnimating()
        
        getFundsUseCase.getFunds() { funds in
            self.view.activityIndicator.stopAnimating()
            
            self.view.fundList = funds
            self.view.collectionView.reloadData()
        }
    }
}
