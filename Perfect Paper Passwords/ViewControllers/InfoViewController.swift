//
//  InfoViewController.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 06/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var keyLabel: UILabel!
        
    @IBOutlet weak var characterSet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterSet.text = "!#%+23456789:=?@ABCDEFGHJKLMNPRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
    }
    
    
}
