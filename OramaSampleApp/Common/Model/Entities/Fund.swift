//
//  Fund.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 18/04/21.
//

import Foundation
import RealmSwift

class Fund: Object {
    @objc dynamic var initialDate:                     String  = ""
    @objc dynamic var simpleName:                      String  = ""
    @objc dynamic var fullName:                        String  = ""
    @objc dynamic var riskScore:                       Int     = 0
    @objc dynamic var minimumInitialApplicationAmount: String  = ""
    @objc dynamic var fundDescription:                 String  = ""
    @objc dynamic var videoThumbnailUrl:               String? = ""
    
    override init() {
        super.init()
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
