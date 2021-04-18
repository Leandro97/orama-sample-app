//
//  SaveBoughtFundsUseCase.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 18/04/21.
//

import Foundation

class SaveBoughtFundsUseCase {
    private var localRepository: FundLocalDataSource = FundLocalDataSourceImpl()
    
    func saveBuy(fund: Fund) {
        return localRepository.saveBuy(fund: fund)
    }
}
