//
//  CalculatorProtocol.swift
//  Calculator
//
//  Created by Admin on 20/01/23.
//

import Foundation
protocol CalculatorProtocol{
    func sum(num1:Int , num2:Int)->Int
    func sub(num1:Int , num2:Int)->Int
    func multi(num1:Int , num2:Int)->Int
    func div(num1:Int , num2:Int)->Float
}
