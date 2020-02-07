//
//  ViewController.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 05/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    @IBOutlet weak var printPassword: UITextField!
    
    @IBAction func newCardButton(_ sender: UIButton) {
        printPassword.text = getPasswords()
        //let encodedKey = generateEncodedKey()
        //print(encodedKey)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printPassword.text = getPasswords()
    }
}

