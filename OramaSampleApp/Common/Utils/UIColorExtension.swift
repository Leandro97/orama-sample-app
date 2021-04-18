//
//  UIColorExtension.swift
//  OramaSampleApp
//
//  Created by Leandro Martins de Freitas on 13/04/21.
//

import Foundation
import UIKit

extension UIColor {
    @nonobjc public class var lightGrayCustom: UIColor {
        return UIColor(red: 245/255, green: 245/255, blue: 247/255, alpha: 1)
    }
    
    @nonobjc public class var iceGrayCustom: UIColor {
        return UIColor(red: 233/255, green: 233/255, blue: 236/255, alpha: 1)
    }
    
    @nonobjc public class var mainGreenCustom: UIColor {
        return UIColor(red: 0/255, green: 152/255, blue: 156/255, alpha: 1)
    }
    
    @nonobjc public class var secondaryGreenCustom: UIColor {
        return UIColor(red: 66/255, green: 180/255, blue: 179/255, alpha: 1)
    }
    
    @nonobjc public class var riskBlue: UIColor {
        return UIColor(red: 3/255, green: 240/255, blue: 252/255, alpha: 1)
    }
    
    @nonobjc public class var riskGreen: UIColor {
        return UIColor(red: 3/255, green: 252/255, blue: 165/255, alpha: 1)
    }
    
    @nonobjc public class var riskYellow: UIColor {
        return UIColor(red: 252/255, green: 219/255, blue: 3/255, alpha: 1)
    }
    
    @nonobjc public class var riskOrange: UIColor {
        return UIColor(red: 252/255, green: 140/255, blue: 3/255, alpha: 1)
    }
    
    @nonobjc public class var riskRed: UIColor {
        return UIColor(red: 252/255, green: 11/255, blue: 3/255, alpha: 1)
    }
    
    public func getRiskColor(riskScore: Int) -> UIColor {
        
        if riskScore <= 3 {
            return UIColor.riskBlue
        } else if riskScore <= 5 {
            return UIColor.riskGreen
        } else if riskScore <= 7 {
            return UIColor.riskYellow
        } else if riskScore <= 9 {
               return UIColor.riskOrange
        } else {
            return UIColor.riskRed
        }
    }
}
