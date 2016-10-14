//
//  zoo.swift
//  ZooProject-ccs
//
//  Created by Christopher Stanley on 10/13/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

class Zoo {
    
    private var io = Io()
    var currentInput: String = ""
    let animal = Animal()
    let bird = Bird()
    let fish = Fish()
    let land = Land()
    let visitor = Visitor()
    let employee = Employee()
    
    
    var birdList = [String]()
    func addBird() {
       let exhibitType:exhibit = exhibit.aviary
        
        io.writeMessage("What kind of bird is it?")
        currentInput = io.getInput()
        bird.name = currentInput
        
        io.writeMessage("What color is the bird?")
        currentInput = io.getInput()
        bird.color = currentInput
        
        io.writeMessage("How big is the bird? Enter 'small' 'medium' 'large' 'xlarge'")
        currentInput = io.getInput()
        bird.size = currentInput
        
        birdList.append("*" + bird.name + "*" + " (size: " + bird.size + ")" + " (color: " + bird.color + ")")
        birdList.sort()
        print("Added \(bird.name) to the \(exhibitType) exhibit!")
        print()
        interactive.animals()
        
        
    }
    
    
    var fishList = [String]()
    func addFish() {
        let exhibitType:exhibit = exhibit.ocean
        
        io.writeMessage("What kind of fish is it?")
        currentInput = io.getInput()
        fish.name = currentInput
        
        io.writeMessage("What color is the fish?")
        currentInput = io.getInput()
        fish.color = currentInput
        
        io.writeMessage("How big is the fish? Enter 'small' 'medium' 'large' 'xlarge'")
        currentInput = io.getInput()
        fish.size = currentInput
        
        fishList.append("*" + fish.name + "*" + " (size: " + fish.size + ")" + " (color: " + fish.color + ")")
        
        fishList.sort()
        print("Added \(fish.name) to the \(exhibitType) exhibit!")
        
        print()
        interactive.animals()
    }
    
    var landList = [String]()
    func addLand() {
        let exhibitType:exhibit = exhibit.land
        
        io.writeMessage("What kind of animal is it?")
        currentInput = io.getInput()
        land.name = currentInput
        
        io.writeMessage("What color is the animal?")
        currentInput = io.getInput()
        land.color = currentInput
        
        io.writeMessage("How big is the animal? Enter 'small' 'medium' 'large' 'xlarge'")
        currentInput = io.getInput()
        land.size = currentInput
        
        landList.append("*" + land.name + "*" + " (size: " + land.size + ")" + " (color: " + land.color + ")")
        landList.sort()
        print("Added \(land.name) to the \(exhibitType) exhibit!")
        
        print()
        interactive.animals()
    }
    
    var visitorList = [String]()
    func addVisitor() {
        io.writeMessage("Enter the name of the visitor")
        currentInput = io.getInput()
        
        visitorList.append("Visitor: \(currentInput)")
        visitorList.sort()
        print("Added \(currentInput)")
        
        print()
        interactive.person()
    }
    
    var employeeList = [String]()
    func addEmployee() {
        io.writeMessage("Enter the name of the employee")
        currentInput = io.getInput()
        
        employeeList.append("Employee: \(currentInput)")
        employeeList.sort()
        print("Added \(currentInput)")
        
        print()
        interactive.person()
    }
    
    enum exhibit {
        case ocean
        case land
        case aviary
    }
    
}
