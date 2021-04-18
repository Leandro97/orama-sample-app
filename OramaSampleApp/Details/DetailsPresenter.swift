//
//  DetailsPresenter.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 17/04/21.
//

import Foundation

class DetailsPresenter {
    let view:                   DetailsViewController
    let getFundsUseCase:        GetFundsUseCase
    let saveBoughtFundsUseCase: SaveBoughtFundsUseCase
    
    init(view:                   DetailsViewController,
         getFundsUseCase:        GetFundsUseCase,
         saveBoughtFundsUseCase: SaveBoughtFundsUseCase) {
        
        self.view                   = view
        self.getFundsUseCase        = getFundsUseCase
        self.saveBoughtFundsUseCase = saveBoughtFundsUseCase
    }
    
    func saveBuy(fundDto: FundDto) {
        let fund = fundDto.toEntity()
        
        saveBoughtFundsUseCase.saveBuy(fund: fund)
    }
}
