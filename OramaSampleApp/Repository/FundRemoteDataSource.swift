//
//  FundRemoteDataSource.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

protocol FundRemoteDataSource {
    func getFunds(completion: @escaping ([Fund]) -> Void)
}
