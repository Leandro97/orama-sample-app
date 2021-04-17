//
//  FundDetailCollectionViewCell.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 15/04/21.
//

import UIKit

class FundDetailCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView:               UIImageView!
    @IBOutlet weak var fundNameLabel:           UILabel!
    @IBOutlet weak var minimumApplicationLabel: UILabel!
    @IBOutlet weak var riskProfileLabel:        UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor    = .iceGrayCustom
        self.layer.cornerRadius = 6
        
        fundNameLabel.textColor = .mainGreenCustom
        fundNameLabel.font      = UIFont.boldSystemFont(ofSize: 18)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setUpImageView(image: UIImage) {
        imageView.image = image
    }
}
