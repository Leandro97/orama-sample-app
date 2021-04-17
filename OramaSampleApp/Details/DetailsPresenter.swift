//
//  DetailsPresenter.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 17/04/21.
//

import Foundation

class DetailsPresenter {
    let view:            DetailsViewController
    let getFundsUseCase: GetFundsUseCase
    
    init(view:            DetailsViewController,
         getFundsUseCase: GetFundsUseCase) {
        
        self.view            = view
        self.getFundsUseCase = getFundsUseCase
    }
    
    func getFunds() {
        
    }
}
