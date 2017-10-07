//
//  SlotMachineProvider.swift
//  Slot Machine
//
//  Created by Nathan Standage on 9/21/17.
//  Copyright © 2017 Nathan Standage. All rights reserved.
//

import UIKit





struct SlotMachine {

    
    let slotArray = ["🦊","🐸","🌟","🐬"]
    var winner = false
    var match = false

    
    
    func randomNumber() -> Int {
        return Int(arc4random_uniform(UInt32(slotArray.count)))
        
        
    }
    mutating func slotPull() -> [String] {
        let array = [
        slotArray[randomNumber()],
        slotArray[randomNumber()],
        slotArray[randomNumber()]
        ]
        
        if array[0] == "🌟" && array[1] == "🌟" && array[2] == "🌟" {
            
            self.winner = true
            
        } else if array[0] == array[1] && array[0] == array[2] {
            
            self.match = true
        }
        
        
        
        return array
    }

        
}




