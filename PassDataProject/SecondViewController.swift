//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Zodino BLR on 4/25/21.
//  Copyright © 2021 Zodino BLR. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func sendPressed(button: UIButton) {
    }
    
    override func viewDidLoad() {
       super.viewDidLoad()
        
        guard let login = login else { return }
        label.text = "Hello, \(login)"
    }
}
