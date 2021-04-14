//
//  FundRiskProfile.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

struct FundRiskProfile: Codable {
    let name: String
    
    private enum CodingKeys: String, CodingKey {
       case name = "name"
    }
}
