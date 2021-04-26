//
//  ViewController.swift
//  PassDataProject
//
//  Created by Zodino BLR on 4/25/21.
//  Copyright © 2021 Zodino BLR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passworldTextField: UITextField!
    @IBOutlet weak var returnLabel: UILabel!
    
    @IBAction func sendPressed(button: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    
    }
    
    @IBAction func uwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "uwinSegue" else  { return }
        guard let svc = segue.source as? SecondViewController else { return }
        self.returnLabel.text = svc.label.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) 
    }
    
}

 
