//
//  Wage.swift
//  window-shopper
//
//  Created by Amber Sethi on 25/11/17.
//  Copyright © 2017 Amber Sethi. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double, andPrice price:Double) -> Int{
        return Int(ceil(price / wage))
    }
}
