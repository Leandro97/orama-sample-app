//
//  FundDto.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 16/04/21.
//

import Foundation

struct FundDto {
    let initialDate:                     String
    let simpleName:                      String
    let fullName:                        String
    let riskScore:                       Int
    let minimumInitialApplicationAmount: String
    let fundDescription:                 String
    let videoThumbnail:                  String?
    
    init(initialDate:                     String,
         simpleName:                      String,
         fullName:                        String,
         riskScore:                       Int,
         minimumInitialApplicationAmount: String,
         fundDescription:                 String,
         videoThumbnail:                  String?) {
        
        self.initialDate                     = initialDate
        self.simpleName                      = simpleName
        self.fullName                        = fullName
        self.riskScore                       = riskScore
        self.minimumInitialApplicationAmount = minimumInitialApplicationAmount
        self.fundDescription                 = fundDescription
        self.videoThumbnail                  = videoThumbnail
    }
}
