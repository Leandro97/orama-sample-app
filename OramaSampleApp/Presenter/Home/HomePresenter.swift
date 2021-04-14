//
//  HomePresenter.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

class HomePresenter {
    var getFundsUseCase: GetFundsUseCase
    
    init(getFundsUseCase: GetFundsUseCase) {
        self.getFundsUseCase = getFundsUseCase
    }
    
    func getFunds(completion: @escaping ([Fund]) -> Void) {
        getFundsUseCase.getFunds() { funds in
            completion(funds)
        }
    }
}
