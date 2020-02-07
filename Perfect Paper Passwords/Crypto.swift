//
//  Crypto.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 06/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import Foundation
import CryptoKit

func generateKey() -> SymmetricKey {
    let key = SymmetricKey(size: .bits256)
    
    return key
}
func generateEncodedKey() -> String {
    let valueKey = generateKey().withUnsafeBytes{
        return Data(Array($0)).base64EncodedString()
    }
    
    return valueKey
}

func counter() -> UInt128 {
    counter128bit += 1
    
    return counter128bit
}

func getCharacterIndex(counter: UInt128) -> UInt64 {
    let dataCounter: Data = withUnsafeBytes(of: counter) { Data($0) }
    let sealedBox = try! AES.GCM.seal(dataCounter, using: generateKey())
    let bitsInt = sealedBox.ciphertext.withUnsafeBytes {$0.bindMemory(to: UInt64.self)[0]}

    return (bitsInt%64)
}
