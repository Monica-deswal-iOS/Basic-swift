//
//  CalculateViewModel.swift
//  Lesson2-Basic-Swift-Sample
//
//  Created by Monica Deswal on 26/08/20.
//  Copyright © 2020 Monica Deswal. All rights reserved.
//

import Foundation

struct CalculateViewModel {
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    mutating func generateTip(value : String) {
        let minusPercentValue = value.dropLast().replacingOccurrences(of: " ", with: "")
        let doubleValue = Double(minusPercentValue)!
        tip = doubleValue/100
    }
    
    mutating func numberOfPeople(count : Int) {
        numberOfPeople = count
    }
    
    mutating func generateBill( textFieldVal : String){
        billTotal = Double(textFieldVal)!
        let result = billTotal * (1 + tip) / Double(numberOfPeople)
        finalResult = String(format: "%.2f", result)
    }
    
}
