//
//  GetFundsUseCase.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

class GetFundsUseCase {
    private var repository: FundRemoteDataSource = FundRemoteDataSourceImpl()
    
    func getFunds(completion: @escaping ([FundResponse]) -> Void) {
        repository.getFunds() { funds in
            completion(Array(funds.prefix(6)))
        }
    }
}
