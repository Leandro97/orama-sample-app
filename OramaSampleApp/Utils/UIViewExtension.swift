//
//  UIViewExtension.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 13/04/21.
//

import Foundation
import UIKit

extension UIView {
    public static func identifier() -> String {
        return "\(String(describing: self.self))Identifier"
    }
}
