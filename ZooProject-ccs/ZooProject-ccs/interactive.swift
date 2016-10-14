//
//  interactive.swift
//  ZooProject-ccs
//
//  Created by Christopher Stanley on 10/13/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation



class Interactive {
    private var done: Bool = false
    private let io = Io()
    private let animal = Animal()
    private let zoo = Zoo()
    private let bird = Bird()
    
  
    func help() {
        io.writeMessage("Enter 'animal' or 'person' to add a new profile into the system")
        io.writeMessage("Enter 'quit' any time to quit the Zoo Management System")
    }
    
    func animals() {
        var totalAnimals = zoo.birdList + zoo.fishList + zoo.landList
        totalAnimals.sort()
        io.writeMessage("Enter 'view all' to view currently list of animals")
        io.writeMessage("Enter 'add bird' to add a new bird to the system")
        io.writeMessage("Enter 'add fish' to add a new fish to the system")
        io.writeMessage("Enter 'add land' to add a new land animal to the system")
        io.writeMessage("Enter 'back' to go back to the menu")
        var currentInput: String = ""
        currentInput = io.getInput()
        switch currentInput {
        case "view all":
            if totalAnimals.count > 0 {
                for animal in totalAnimals {
                    print(animal)
                    print()
                    animals()
                }
            } else {
                print("There are no animals currently in the system")
                print()
                animals()
            }
            
        case "add bird":
            zoo.addBird()
            
        case "add fish":
            zoo.addFish()
            
        case "add land":
            zoo.addLand()
        case "quit":
            done = true
            
        case "back":
            break
            
        default:
            print("Invalid Input")
            print()
            animals()
        }

    }
    
    func person() {
        io.writeMessage("Enter 'view all' to view current list of people in zoo")
        io.writeMessage("Enter 'add visitor' to add new visitor profile")
        io.writeMessage("Enter 'add employee' to add new employee profile")
        io.writeMessage("Enter 'back' to go back to menu")
        var currentInput: String = ""
        currentInput = io.getInput()
        var totalPeople = zoo.visitorList + zoo.employeeList
        totalPeople.sort()
        
        switch currentInput {
        case "view all":
            if totalPeople.count > 0 {
                for people in totalPeople {
                    print(people)
                }
            } else {
                print("There are no people currently in the system")
                print()
                person()
            }
            
            
        case "add employee":
            zoo.addEmployee()
            
        case "add visitor":
            zoo.addVisitor()
            
        case "back":
            break
            
        default:
            print("Invalid Input")
            person()
        }

    }
    
}
