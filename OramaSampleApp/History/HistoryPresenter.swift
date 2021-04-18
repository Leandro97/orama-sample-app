//
//  HistoryPresenter.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 18/04/21.
//

import Foundation

class HistoryPresenter {
    let view:            HistoryViewController
    let getFundsUseCase: GetFundsUseCase
    
    init(view:            HistoryViewController,
         getFundsUseCase: GetFundsUseCase) {
        
        self.view            = view
        self.getFundsUseCase = getFundsUseCase
    }
    
    func getFunds() {
        let funds    = getFundsUseCase.getBoughtFunds()
        let fundDtos = funds.map {
            FundDto(initialDate:                     $0.initialDate,
                    simpleName:                      $0.simpleName,
                    fullName:                        $0.fullName,
                    riskScore:                       $0.riskScore,
                    minimumInitialApplicationAmount: $0.minimumInitialApplicationAmount,
                    fundDescription:                 $0.fundDescription,
                    videoThumbnailUrl:               $0.videoThumbnailUrl)
        }
            
        view.fundList = fundDtos
    }
}
