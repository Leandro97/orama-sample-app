//
//  Specification.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

struct Specification: Codable {
    let fundRiskProfile: FundRiskProfile
    
    private enum CodingKeys: String, CodingKey {
       case fundRiskProfile = "fund_risk_profile"
    }
}
