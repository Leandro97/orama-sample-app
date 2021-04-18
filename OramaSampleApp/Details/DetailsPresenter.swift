//
//  DetailsPresenter.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 17/04/21.
//

import Foundation

class DetailsPresenter {
    let view:                   DetailsViewController
    let saveBoughtFundsUseCase: SaveBoughtFundsUseCase
    
    init(view:                   DetailsViewController,
         saveBoughtFundsUseCase: SaveBoughtFundsUseCase) {
        
        self.view                   = view
        self.saveBoughtFundsUseCase = saveBoughtFundsUseCase
    }
    
    func saveBuy(fundDto: FundDto) {
        let fund = fundDto.toEntity()
        
        saveBoughtFundsUseCase.saveBuy(fund: fund)
    }
}
