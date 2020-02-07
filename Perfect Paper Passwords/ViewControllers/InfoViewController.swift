//
//  InfoViewController.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 06/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import UIKit
import CryptoKit

class InfoViewController: UIViewController {

    
    @IBOutlet weak var keyLabel: UILabel!
    
    
    @IBAction func generateKeyButton(_ sender: UIButton) {
        let key = SymmetricKey(size: .bits256)

        let valueKey = key.withUnsafeBytes{
            return Data(Array($0)).base64EncodedString()
        }
        keyLabel.text = valueKey

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        keyLabel.text = valueKey
    }
    
    
}
