//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert displayLabel to Double.")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    private var calculator = CalculatorLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        calculator.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            if let result = calculator.calculate(symbol: calcMethod) {
                displayValue = result
            }
            
            
        }
    
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        var number = displayLabel.text!
        
        if isFinishedTypingNumber {
            number = sender.currentTitle!
            isFinishedTypingNumber = false
        } else {
            if sender.currentTitle! == "." {
                let isInt = floor(displayValue) == displayValue
                
                if !isInt {
                    return
                }
            }
            
            number += sender.currentTitle!
        }
        
        displayLabel.text = number
        
        //What should happen when a number is entered into the keypad
    
    }

}

