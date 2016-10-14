//
//  io.swift
//  library-ccs
//
//  Created by Christopher Stanley on 10/11/16.
//  Copyright © 2016 Christopher Stanley. All rights reserved.
//

import Foundation

class Io {
    func getInput() -> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let str = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
        if let string = str {
            return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        } else {
            return "Invalid input!"
        }
    }
    
    func writeMessage(_ message: String) {
        print("\(message)\n")
    }
}
