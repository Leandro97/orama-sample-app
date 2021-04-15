//
//  Fund.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

struct Fund: Codable {
    let initialDate:   String
    let simpleName:    String
    let fullName:      String
    let specification: Specification
    let operability:   Operability
    let fundManager:   FundManager
    let strategyVideo: StrategyVideo?

    private enum CodingKeys: String, CodingKey {
       case initialDate   = "initial_date",
            simpleName    = "simple_name",
            fullName      = "full_name",
            specification = "specification",
            operability   = "operability",
            fundManager   = "fund_manager",
            strategyVideo = "strategy_video"
    }
}
