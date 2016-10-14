//
//  person.swift
//  ZooProject-ccs
//
//  Created by Christopher Stanley on 10/13/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

class Person {
    private var io = Io()
    var currentInput: String = ""
    
}



class Visitor: Person {
    var name: String = ""
}



class Employee: Person {
    var name: String = ""
}
