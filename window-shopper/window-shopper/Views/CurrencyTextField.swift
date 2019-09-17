//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Manar Laith on 9/4/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7816705108, green: 0.7770251632, blue: 0.7852422595, alpha: 0.8634952911)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true // علمود يخلي الكورنر رايديس يرجع راوند لان تاثر بسبب استخدام ال درو
 //A Boolean value that determines whether subviews are confined to the bounds of the view.
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
 
    override func prepareForInterfaceBuilder() {
        custimizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        custimizeView()
    }

    func custimizeView(){
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        
        clipsToBounds = true
        
        textAlignment = .center
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
    }

}
