//
//  CalculatorBrain.swift
//  YourBMI
//
//  Created by Luiza on 02.09.2020.
//  Copyright © 2020 Luiza. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/(height * height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Кушайте больше вкусняшек 😊", color: #colorLiteral(red: 0.3058823529, green: 0.6274509804, blue: 0.6823529412, alpha: 1))
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Вы идеальны 😍", color: #colorLiteral(red: 1, green: 0.3725490196, blue: 0.2509803922, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Кушайте меньше вкусняшек 🥰", color: #colorLiteral(red: 1, green: 0.7803921569, blue: 0.7803921569, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? .white
    }
}
