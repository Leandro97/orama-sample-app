//
//  FundRemoteDataSourceImpl.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 14/04/21.
//

import Foundation
import Alamofire

class FundRemoteDataSourceImpl: FundRemoteDataSource {
    static var api_url: String { "https://s3.amazonaws.com/orama-media/json/fund_detail_full.json" }
    
    func getFunds(completion: @escaping ([Fund]) -> Void) {
        AF.request(FundRemoteDataSourceImpl.api_url)
            .validate()
            .responseDecodable(of: [Fund].self) { response in
                completion(response.value ?? [])
            }
    }
}
