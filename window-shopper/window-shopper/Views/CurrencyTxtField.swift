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

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7783834934, green: 0.7828502059, blue: 0.7938758731, alpha: 0.4867132482)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
    
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
    
    clipsToBounds = true
    if let p = placeholder {
        
        let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    }
}
}
