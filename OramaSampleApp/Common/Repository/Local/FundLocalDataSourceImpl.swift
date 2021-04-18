//
//  FundLocalDataSourceImpl.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 18/04/21.
//

import Foundation
import RealmSwift

class FundLocalDataSourceImpl: FundLocalDataSource {
    func saveBuy(fund: Fund) {
        let realm = try! Realm()
        
        try! realm.write() {
            realm.add(fund)
        }
            
        let savedFunds = realm.objects(Fund.self)
        
    }
    
    func getBoughtFunds() -> [Fund] {
        let realm   = try! Realm()
        let results = Array(realm.objects(Fund.self))
        
        return results
    }
}
