//
//  ViewController2.swift
//  SummerCourse1
//
//  Created by Ildar Zalyalov on 07.07.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var names:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        names.append("I")
        names.append("Love")
        names.append("iOS")
        names.append("Developing")
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }

}
