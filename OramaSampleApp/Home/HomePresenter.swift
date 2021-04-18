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
        self.view.activityIndicator.isHidden = false
        self.view.activityIndicator.startAnimating()
        
        getFundsUseCase.getFunds() { funds in
            self.view.activityIndicator.isHidden = true
            self.view.activityIndicator.stopAnimating()
            
            self.view.fundList = funds.map { fund in
                FundDto(initialDate:                     fund.initialDate,
                        simpleName:                      fund.simpleName,
                        fullName:                        fund.fullName,
                        riskScore:                       fund.specification.fundRiskProfile.riskScore,
                        minimumInitialApplicationAmount: fund.operability.minimumInitialApplicationAmount,
                        fundDescription:                 fund.fundManager.description,
                        videoThumbnailUrl:               fund.strategyVideo?.thumbnail)
            }
            
            self.view.collectionView.reloadData()
        }
    }
}
