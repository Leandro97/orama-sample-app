//
//  StringExtension.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 17/04/21.
//

import Foundation

extension String {
    func stringToDate() -> String {
        let formattedDate = self.split { $0 == "-" }
        
        let day   = formattedDate[2]
        let month = formattedDate[1]
        let year  = formattedDate[0]
        
        return "\(day) / \(month) / \(year)"
    }
}
