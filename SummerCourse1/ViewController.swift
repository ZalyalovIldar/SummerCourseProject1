//
//  ViewController.swift
//  SummerCourse1
//
//  Created by Ildar Zalyalov on 07.07.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

let myConst = "String"

class ViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    var myArray:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    func checkFields() -> Bool{
        var isFieldsCorrect = false
        
        if loginTF.text == "Ildar" && passwordTF.text == "password" {
            isFieldsCorrect = true
        }
        
        return isFieldsCorrect
    }
    
    @IBAction func loginButtonPressed(_ loginButton: UIButton) {
        let isOk = checkFields()
        
        if isOk == true {
              performSegue(withIdentifier: "segue", sender: nil)
              loginButton.setTitle("Ok", for: .normal)
        }
        else {
              loginButton.setTitle("Error ", for: .normal)
        }
       
    }
}
