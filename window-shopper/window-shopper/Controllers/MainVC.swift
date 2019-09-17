//
//  MainVC.swift
//  window-shopper
//
//  Created by Manar Laith on 9/4/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var priceTxt: CurrencyTextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5649197698, blue: 0.2721200883, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) // always use setTiltle when naming a btn
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
       
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    @objc func calculate() {
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
               resultLbl.text = "\(Wage.getHourse(forwage: wage, andPrice: price))"

            }
        }
    }
    
    @IBAction func clearCalcBtn(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
  

}
