//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Artur Markov on 12/4/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var pctSelected: Float = 10.0
    var people: Int = 2
    var total: String = "0.0"
    
    func getPct () -> Float {
        return pctSelected
    }
    
    func getNumberOfPeople() -> Int{
        return people
    }
    
    func getTotal() -> Float {
        return Float(total) ?? 0.0
    }
}
