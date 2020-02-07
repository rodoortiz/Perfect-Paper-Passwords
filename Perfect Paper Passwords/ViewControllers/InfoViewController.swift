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
    
    
    @IBAction func generateKeyButton(_ sender: UIButton) {
        keyLabel.text = generateEncodedKey()
        getPassword()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        keyLabel.text = generateEncodedKey()
    }
    
    
}
