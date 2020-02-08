//
//  ViewController.swift
//  Perfect Paper Passwords
//
//  Created by Rodolfo Ortiz on 05/02/20.
//  Copyright © 2020 Rodolfo Ortiz. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    var encodedKey: String = ""
   
    @IBOutlet weak var printPasswords: UILabel!
    
    @IBOutlet weak var stack: UIStackView!
    @IBAction func newCardButton(_ sender: UIButton) {
        
        let key = generateKey()
        printPasswords.text = "\(getPasswords(key: key)[0])\t\(getPasswords(key: key)[1])\t\(getPasswords(key: key)[2])\t\(getPasswords(key: key)[3])\t\(getPasswords(key: key)[4])\n\n\(getPasswords(key: key)[5])\t\(getPasswords(key: key)[6])\t\(getPasswords(key: key)[7])\t\(getPasswords(key: key)[8])\t\(getPasswords(key: key)[9])\n\n\(getPasswords(key: key)[10])\t\(getPasswords(key: key)[11])\t\(getPasswords(key: key)[12])\t\(getPasswords(key: key)[13])\t\(getPasswords(key: key)[14])\n\n\(getPasswords(key: key)[15])\t\(getPasswords(key: key)[16])\t\(getPasswords(key: key)[17])\t\(getPasswords(key: key)[18])\t\(getPasswords(key: key)[19])\n\n\(getPasswords(key: key)[20])\t\(getPasswords(key: key)[21])\t\(getPasswords(key: key)[22])\t\(getPasswords(key: key)[23])\t\(getPasswords(key: key)[24])\n"
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let key = generateKey()
        encodedKey = generateEncodedKey(key: key)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "infoView"{
            let infovc = segue.destination as! InfoViewController
            infovc.keyString = encodedKey
               
           }
       }
}

