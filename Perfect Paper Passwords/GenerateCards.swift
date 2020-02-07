//
//  GenerateCards.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 07/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import Foundation

var counter128bit: UInt128 = 0
var cardArray = Array(repeating: String(), count: 70)

func getPasswords() -> [String] {
    var password = ""
    var cardArray = Array(repeating: String(), count: 70)
    let key = generateKey()
    for i in 0..<70 {
        for _ in 0..<4 {
            let characterIndexStr = String(getCharacterIndex(counter: counter128bit, key: key))
            let characterIndex = Int(characterIndexStr)
            counter128bit += 1
            
            password = password + alfabetSet[characterIndex!]
        }
        
        cardArray[i].append(password)
        password = ""
    }
    counter128bit += 1
    
    return cardArray
}

