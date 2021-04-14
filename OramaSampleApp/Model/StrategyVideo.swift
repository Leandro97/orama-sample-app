//
//  StrategyVideo.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation

struct StrategyVideo: Codable {
    let thumbnail: String
    
    private enum CodingKeys: String, CodingKey {
       case thumbnail = "thumbnail"
    }
}
