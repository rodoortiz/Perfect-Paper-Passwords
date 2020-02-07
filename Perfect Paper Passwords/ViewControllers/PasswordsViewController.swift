//
//  ViewController.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 05/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {
    
   
    @IBOutlet weak var printPasswords: UILabel!
    
    @IBAction func newCardButton(_ sender: UIButton) {
        printPasswords.text = "xxx"
        printPasswords.text = getPasswords()[0]

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printPasswords.text = getPasswords()[0]
    }
}

