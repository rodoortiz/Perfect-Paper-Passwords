//
//  Crypto.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 06/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import Foundation
import CryptoKit

let key = SymmetricKey(size: .bits256)

let valueKey = key.withUnsafeBytes{
    return Data(Array($0)).base64EncodedString()
}
