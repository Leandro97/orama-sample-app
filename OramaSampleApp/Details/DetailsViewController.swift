//
//  DetailsViewController.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 15/04/21.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var headerView:              UIView!
    @IBOutlet weak var backButton:              UIButton!
    @IBOutlet weak var imageView:               UIImageView!
    @IBOutlet weak var fundNameLabel:           UILabel!
    @IBOutlet weak var initialDateLabel:        UILabel!
    @IBOutlet weak var fundDescriptionTextView: UITextView!
    @IBOutlet weak var buyButton:               UIButton!
    
    var currentFund    = FundDto()
    lazy var presenter = DetailsPresenter(view:            self,
                                          getFundsUseCase: GetFundsUseCase())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGrayCustom
        
        setUpHeaderView()
        setUpImageView()
        setUpFundNameLabel()
        setUpInitialDateLabel()
        setUpFundDescriptionTextView()
        setUpBuyButton()
    }
    
    func setUpHeaderView() {
        headerView.backgroundColor = .secondaryGreenCustom
        backButton.tintColor       = .white
        
        backButton.addTarget(self,
                             action: #selector(goBack),
                             for:    .touchUpInside)
    }
    
    func setUpImageView() {
        guard let videoThumbnailUrl = currentFund.videoThumbnailUrl else { return }
        imageView.getImage(from: videoThumbnailUrl)
    }
    
    func setUpFundNameLabel() {
        fundNameLabel.text        = currentFund.fullName
        fundNameLabel.textColor   = .mainGreenCustom
        fundNameLabel.font        = UIFont.boldSystemFont(ofSize: 18)
    }
    
    func setUpInitialDateLabel() {
        initialDateLabel.text = currentFund.initialDate.stringToDate()
    }
    
    func setUpFundDescriptionTextView() {
        fundDescriptionTextView.text            = currentFund.fundDescription
        fundDescriptionTextView.backgroundColor = .clear
        fundDescriptionTextView.isEditable      = false
    }
    
    func setUpBuyButton() {
        buyButton.addTarget(self, action: #selector(openBuyPopup), for: .touchUpInside)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func openBuyPopup() {
        let alert = UIAlertController(title:          "\(currentFund.simpleName)",
                                      message:        "Insira sua senha para prosseguir:",
                                      preferredStyle: .alert)

        let buyAction       = UIAlertAction(title: "Comprar", style: .default, handler: buyFund)
        buyAction.isEnabled = false
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
    
        alert.addAction(buyAction)
        alert.addAction(cancelAction)
        
        alert.addTextField { textField in
            textField.isSecureTextEntry = true
            
            NotificationCenter.default.addObserver(forName: UITextField.textDidChangeNotification, object: textField, queue: OperationQueue.main, using: {_ in
                    let textCount       = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines).count ?? 0
                    buyAction.isEnabled = textCount > 0
                }
            )
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func buyFund(action: UIAlertAction) {
        self.dismiss(animated: true, completion: nil)
    }
}
