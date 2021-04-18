//
//  DefaultFundCollectionViewCell.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 13/04/21.
//

import UIKit

class DefaultFundCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var fundNameLabel:           UILabel!
    @IBOutlet weak var minimumApplicationLabel: UILabel!
    @IBOutlet weak var riskProfileLabel:        UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor    = .iceGrayCustom
        self.layer.cornerRadius = 6
        
        fundNameLabel.adjustsFontSizeToFitWidth = true
        
        fundNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fundNameLabel.widthAnchor.constraint(equalToConstant: CGFloat(self.bounds.width - 64)).isActive = true
        
        fundNameLabel.textColor = .mainGreenCustom
        fundNameLabel.font      = UIFont.boldSystemFont(ofSize: 18)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configureCell(fundName:                 String,
                       minimumApplicationAmount: String,
                       riskProfile:              Int) {
        
        fundNameLabel.text           = fundName
        minimumApplicationLabel.text = "Aplicação mínima: R$ \(minimumApplicationAmount)"
        riskProfileLabel.text        = "Escala de risco: \(riskProfile)"
    }
}
