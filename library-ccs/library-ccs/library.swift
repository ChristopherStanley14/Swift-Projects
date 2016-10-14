//
//  libraryDictionary.swift
//  library-ccs
//
//  Created by Christopher Stanley on 10/11/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

class Library {
    
    private var io = Io()
    var currentInput: String = ""
    let userCalendar = Calendar.current
    
    
    
    
    
    var libraryArray = ["Frankenstein",
                        "To Kill a Mockingbird",
                        "Pride and Prejudice",
                        "Harry Potter"]
    
    var checkedOutArray = ["Carrie",
                           "It",
                           "The Dead Zone"]
    
    
    
    
    
    func addBook() {
        

        io.writeMessage("Enter the title of the book:")
        currentInput = io.getInput()
        
        library.libraryArray.append(currentInput)
        print("Added \(currentInput)")
        
        return
    }
    
    
    func checkIn() {
        
        let checkInDate = userCalendar.date(byAdding: .day, value: 0, to: Date())
        let myFormatter = DateFormatter()
        myFormatter.dateStyle = .full
        myFormatter.string(from: checkInDate!)
        
        
        io.writeMessage("Enter the title of the book:")
        currentInput = io.getInput()
        
        if library.checkedOutArray.contains(currentInput) {
            if let index = checkedOutArray.index(of: currentInput) {
                checkedOutArray.remove(at: index)
            }
            libraryArray.append(currentInput)
            print("Checked in \(currentInput) at \(checkInDate!)")
        } else {
            print("That book isn't checked out, or we don't have that book.")
        }
        
        
        return
    }
    
    func checkOut() {
        
        let dueDate = userCalendar.date(byAdding: .day, value: 7, to: Date())
        let myFormatter = DateFormatter()
        myFormatter.dateStyle = .full
        myFormatter.string(from: dueDate!)
        
        io.writeMessage("Enter the title of the book:")
        currentInput = io.getInput()
        
        if library.libraryArray.contains(currentInput) {
            if let index = libraryArray.index(of: currentInput) {
                libraryArray.remove(at: index)
            }
            checkedOutArray.append(currentInput)
            print("Checked out \(currentInput)")
            print("This book is due back on \(dueDate!)")
        } else {
            print("We don't have that book!")
        }
        
        
        return
    }
    
    
}







