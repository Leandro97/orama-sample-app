//
//  FundDto.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 16/04/21.
//

import Foundation

struct FundDto {
    var initialDate:                     String  = ""
    var simpleName:                      String  = ""
    var fullName:                        String  = ""
    var riskScore:                       Int     = 0
    var minimumInitialApplicationAmount: String  = ""
    var fundDescription:                 String  = ""
    var videoThumbnailUrl:               String? = ""
    
    init() {
        
    }
    
    init(initialDate:                     String,
         simpleName:                      String,
         fullName:                        String,
         riskScore:                       Int,
         minimumInitialApplicationAmount: String,
         fundDescription:                 String,
         videoThumbnailUrl:               String?) {
        
        self.initialDate                     = initialDate
        self.simpleName                      = simpleName
        self.fullName                        = fullName
        self.riskScore                       = riskScore
        self.minimumInitialApplicationAmount = minimumInitialApplicationAmount
        self.fundDescription                 = fundDescription
        self.videoThumbnailUrl               = videoThumbnailUrl
    }
}
