//
//  interactive.swift
//  TipCalculator-ccs
//
//  Created by Christopher Stanley on 10/10/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

class TipCalc {
    private var done: Bool = false
    private var currentInput: String = ""
    private var tipInput: String = ""
    private var split: String = ""
    private var io = Io()
    
    
    func help() {
        io.writeMessage("This calculator will ask you for your subtotal. Then it will ask you for the percent you would like to tip. It will then add sales tax and calculate your total amount!")
    }
    
    
    func go() {
        
        while !done {
            
            // Ask the user for input right here.
            
            io.writeMessage("\nHow much is your subtotal?")
            currentInput = io.getInput()
            
            if currentInput == "q" {
                done = true
                break
            } else {
                print()
            }
            
            io.writeMessage("\nWhat percent would you like to tip?")
            tipInput = io.getInput()
            
            if tipInput == "q" {
                done = true
                break
            } else {
                print()
            }
            
            io.writeMessage("How many people are you splitting the bill between?")
            split = io.getInput()
            let totalSplit = Double(split)
            
            let totalAmount: Double = ((Double(currentInput)! * 1.06) + (Double(currentInput)! * (Double(tipInput)! / 100))) / totalSplit!
            let roundedTotal: Double = (round(totalAmount * 100) / 100)
            
            io.writeMessage("Your total amount is \(roundedTotal) per person.")
            
            
            
        }
        print("Exiting.....")
        
        return
    }
    
}
