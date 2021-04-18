//
//  GetFundsUseCase.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

class GetFundsUseCase {
    private var localRepository: FundLocalDataSource = FundLocalDataSourceImpl()
    private var remoteRepository: FundRemoteDataSource = FundRemoteDataSourceImpl()
    
    func getFunds(completion: @escaping ([FundResponse]) -> Void) {
        remoteRepository.getFunds() { funds in
            completion(Array(funds.prefix(6)))
        }
    }
    
    func getBoughtFunds() -> [Fund] {
        return localRepository.getBoughtFunds()
    }
}
