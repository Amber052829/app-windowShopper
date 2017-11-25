//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Amber Sethi on 25/11/17.
//  Copyright © 2017 Amber Sethi. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    
        }
    
    
func customizeView(){
    backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2525033011)
    layer.cornerRadius = 5.0
    textAlignment = .center
    
    
    if let p = placeholder {
        
        let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    }
}
}
