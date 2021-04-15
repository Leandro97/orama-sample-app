//
//  Operability.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

struct Operability: Codable {
    let minimumInitialApplicationAmount: String
    
    private enum CodingKeys: String, CodingKey {
       case minimumInitialApplicationAmount = "minimum_initial_application_amount"
    }
}
