//
//  main.swift
//  ZooProject-ccs
//
//  Created by Christopher Stanley on 10/13/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

let interactive = Interactive()
let io = Io()
let animal = Animal()
let zoo = Zoo()
let bird = Bird()


private var done: Bool = false



while !done {
    
    io.writeMessage("Welcome to the Zoo Management System")
    io.writeMessage("Enter 'animal' or 'person' to add a new profile into the system")
    io.writeMessage("Enter 'help' to view help menu")
    
    var currentInput: String = ""
    currentInput = io.getInput()
    var totalAnimals = zoo.birdList + zoo.fishList + zoo.landList
    totalAnimals.sort()
    
    switch currentInput {
    case "help":
        interactive.help()
    case "animal":
        interactive.animals()
    case "person":
        interactive.person()
    case "quit":
        done = true
    default:
        print("Invalid Input")
    }
}

print("Exiting...")
