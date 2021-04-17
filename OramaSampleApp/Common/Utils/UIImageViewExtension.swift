//
//  UIImageView.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 17/04/21.
//

import Foundation
import UIKit
import Alamofire

extension UIImageView {
    func getImage(from stringUrl: String) {
        guard let imageUrl = URL(string: stringUrl) else { return }
        
        URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
            guard let data = data, error == nil else { return}

            DispatchQueue.main.async (execute: {
                self.image = UIImage(data: data)
            })
        }.resume()
    }
}
