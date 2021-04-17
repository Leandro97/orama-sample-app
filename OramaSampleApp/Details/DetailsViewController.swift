//
//  DetailsViewController.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 15/04/21.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var headerView:               UIView!
    @IBOutlet weak var backButton:               UIButton!
    @IBOutlet weak var imageView:                UIImageView!
    @IBOutlet weak var fundNameLabel:            UILabel!
    @IBOutlet weak var initialDateLabel:         UILabel!
    @IBOutlet weak var fundDescriptionTextView:  UITextView!
    
    var fundList       = [FundDto]()
    lazy var presenter = DetailsPresenter(view:            self,
                                          getFundsUseCase: GetFundsUseCase())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGrayCustom
        fundNameLabel.textColor   = .mainGreenCustom
        fundNameLabel.font        = UIFont.boldSystemFont(ofSize: 18)
        
        setUpHeaderView()
        setUpFundDescriptionTextView()
    }
    
    func setUpHeaderView() {
        headerView.backgroundColor = .secondaryGreenCustom
        backButton.tintColor       = .white
        
        backButton.addTarget(self,
                             action: #selector(goBack),
                             for:    .touchUpInside)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setUpFundDescriptionTextView() {
        fundDescriptionTextView.backgroundColor = .clear
        fundDescriptionTextView.isEditable      = false
    }
}
