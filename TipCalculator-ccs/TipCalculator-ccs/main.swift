//
//  main.swift
//  TipCalculator-ccs
//
//  Created by Christopher Stanley on 10/10/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

let calculator = TipCalc()
let io = Io()

private var done: Bool = false





// Run in interactive mode


    
    while !done {
        
        io.writeMessage("Tip Calculator!\n")
        io.writeMessage("Enter c to run Calculator")
        io.writeMessage(("Enter h for Help"))
        io.writeMessage("Enter q to Quit")
        
        var currentInput: String = ""
        currentInput = io.getInput()
        
        switch currentInput {
            
        case "c":
            calculator.go()
        case "h":
            calculator.help()
            
        case"q":
            done = true
            
        default:
            io.writeMessage("Invalid Input")
            
            
        }
    
    }

print("Exiting...")








