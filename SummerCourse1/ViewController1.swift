//
//  ViewController1.swift
//  SummerCourse1
//
//  Created by Ildar Zalyalov on 10.07.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var textForTextLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = textForTextLabel
        
        textLabel.frame.origin.x = 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
