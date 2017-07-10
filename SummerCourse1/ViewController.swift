//
//  ViewController.swift
//  SummerCourse1
//
//  Created by Ildar Zalyalov on 07.07.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

let myConst = "String"
let loginNameKey = "UserLoginName"


struct User {
    var name: String
}

class ViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    static let vcName: String = String(describing: self)
    
    var myArray:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let user = User(name: "asjdas")
        
        if UserDefaults.standard.object(forKey: loginNameKey) != nil {
            performSegue(withIdentifier: "segue", sender: nil)
        }
        
    }

    func checkFields() -> Bool{
        var isFieldsCorrect = false
        
        if loginTF.text == "Ildar" && passwordTF.text == "password" {
            isFieldsCorrect = true
        }
        
        return isFieldsCorrect
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as! UITabBarController
        
        guard let vc1 = destination.viewControllers?[0] as? ViewController1 else { return }
        
        vc1.textForTextLabel = loginTF.text!
    }
    
    @IBAction func loginButtonPressed(_ loginButton: UIButton) {
        let isOk = checkFields()
        
        if isOk == true {
            
              UserDefaults.standard.set(loginTF.text, forKey: loginNameKey)
            
              UserDefaults.standard.synchronize()
            
              performSegue(withIdentifier: "segue", sender: nil)
              loginButton.setTitle("Ok", for: .normal)
        }
        else {
              loginButton.setTitle("Error ", for: .normal)
        }
       
    }
}
