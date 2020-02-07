//
//  GenerateCards.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 07/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import Foundation

var counter128bit: UInt128 = 0

var passwordSet = ["a", "b", "c", "d"]

func getPassword() -> String {
    var password = ""
    for _ in 0...3 {
        let characterIndexStr = String(getCharacterIndex(counter: counter128bit))
        let characterIndex = Int(characterIndexStr)
        counter128bit += 1
//        passwordSet[i] = alfabetSet[characterIndex!]
        password = password + alfabetSet[characterIndex!]
        
    }
    
    return password
}
