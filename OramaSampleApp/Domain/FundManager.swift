//
//  FundManager.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

struct FundManager: Codable {
    let description: String
    
    private enum CodingKeys: String, CodingKey {
       case description = "description"
    }
}
