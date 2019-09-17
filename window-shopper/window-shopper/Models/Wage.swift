//
//  Wage.swift
//  window-shopper
//
//  Created by Manar Laith on 9/5/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import Foundation
class Wage {

class func getHourse(forwage wage: Double, andPrice price: Double)-> Int{
 //return Int(round(wage/price))
    print("\(Int(ceil(price/wage)))")
     return Int(ceil(price/wage))
    }
    
}
