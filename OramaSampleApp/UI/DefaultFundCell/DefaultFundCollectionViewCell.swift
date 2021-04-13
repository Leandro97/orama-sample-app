//
//  DefaultFundCollectionViewCell.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 13/04/21.
//

import UIKit

class DefaultFundCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var fundNameLabel: UILabel!
    @IBOutlet weak var imageView:     UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor    = .iceGrayCustom
        self.layer.cornerRadius = 6
        
        fundNameLabel.text      = "Teste"
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
