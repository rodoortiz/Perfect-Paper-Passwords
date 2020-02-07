//
//  GenerateCards.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 07/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import Foundation

var counter128bit: UInt128 = 0

func getPassword() -> String {
    var password = ""
    var dividend = getCharacterIndex(counter: counter128bit)
    
    for _ in 0...3 {
        let reminder = dividend%64
        dividend = dividend/64
        print(dividend)
        let characterIndexStr = String(reminder)
        let characterIndex = Int(characterIndexStr)
        
        password = password + alfabetSet[characterIndex!]
    }
    
    counter128bit += 1
    
    return password
}

