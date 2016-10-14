//
//  main.swift
//  library-ccs
//
//  Created by Christopher Stanley on 10/11/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//



import Foundation

let interactive = Interactive()
let io = Io()
private var done: Bool = false
let library = Library()


io.writeMessage("****** Library ******\n")
io.writeMessage("Enter 'checked in' to view list of available books")
io.writeMessage("Enter 'help' to display help menu")



while !done {
    var currentInput: String = ""
    var totalLibrary = library.checkedOutArray + library.libraryArray
    currentInput = io.getInput()
    
    switch currentInput {
    case "view all":
        totalLibrary.sort()
        for book in totalLibrary {
            print(book)
        }
    case "checked in":
        library.libraryArray.sort()
        for book in library.libraryArray {
            print(book)
        }
    case "checked out":
        library.checkedOutArray.sort()
        for book in library.checkedOutArray {
            print(book)
        }
    case "add":
        library.addBook()
        
    case "in":
        library.checkIn()
    
    case "out":
        library.checkOut()
        
    case "help":
        io.writeMessage("Enter 'view all' to view all books in library")
        io.writeMessage("Enter 'checked in' to view list of avalable books")
        io.writeMessage("Enter 'checked out' to view list of checked out books")
        io.writeMessage("Enter 'add' to add book to library")
        io.writeMessage("Enter 'in' to check in book")
        io.writeMessage("Enter 'out' to check out book")
        io.writeMessage("Enter 'help' to display help menu")
        io.writeMessage("Enter 'quit' to quit application")
        
    case "quit":
        done = true
        
    default:
        io.writeMessage("Invalid Input")
        
    }
    
}

print("Good Bye!")


