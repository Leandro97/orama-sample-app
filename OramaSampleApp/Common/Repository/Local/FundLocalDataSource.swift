//
//  FundLocalDataSource.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 18/04/21.
//

import Foundation

protocol FundLocalDataSource {
    func saveBuy(fund: Fund)
    
    func getBoughtFunds() -> [Fund]
}
