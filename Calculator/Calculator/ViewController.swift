//
//  ViewController.swift
//  Calculator
//
//  Created by Admin on 20/01/23.
//

import UIKit

class ViewController: UIViewController,CalculatorProtocol{
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    
    var n1:Int?
    var n2:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func sum(num1: Int, num2: Int) -> Int {
        return num1+num2
    }
    func sub(num1: Int, num2: Int) -> Int {
        return num1-num2
    }
    func multi(num1: Int, num2: Int) -> Int {
        return num1*num2
    }
    func div(num1: Int, num2: Int) -> Float {
        return Float(num1)/Float(num2)
    }

    @IBAction func addtion(_ sender: UIButton) {
        if(firstNumber.text!.isEmpty||secondNumber.text!.isEmpty){
            
        }else{
            n1=Int(firstNumber.text!)
            n2=Int(secondNumber.text!)
            result.text = "Result : " + String(sum(num1: n1!, num2: n2!))
        }
    }
    
    @IBAction func divisionBtnClick(_ sender: UIButton) {
        if(firstNumber.text!.isEmpty||secondNumber.text!.isEmpty){
            
        }else{
            n1=Int(firstNumber.text!)
            n2=Int(secondNumber.text!)
            result.text = "Result : " + String(div(num1: n1!, num2: n2!))
        }
    }
    
    @IBAction func subtractionBtnClick(_ sender: UIButton) {
        if(firstNumber.text!.isEmpty||secondNumber.text!.isEmpty){
            
        }else{
            n1=Int(firstNumber.text!)
            n2=Int(secondNumber.text!)
            result.text = "Result : " + String(sub(num1: n1!, num2: n2!))
        }
    }
    
    @IBAction func multiplicationBtnClick(_ sender: UIButton) {
        if(firstNumber.text!.isEmpty||secondNumber.text!.isEmpty){
            
        }else{
            n1=Int(firstNumber.text!)
            n2=Int(secondNumber.text!)
            result.text = "Result : " + String(multi(num1: n1!, num2: n2!))
        }
    }
}

