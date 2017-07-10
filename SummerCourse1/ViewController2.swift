//
//  ViewController2.swift
//  SummerCourse1
//
//  Created by Ildar Zalyalov on 07.07.17.
//  Copyright © 2017 ru.itisIosLab. All rights reserved.
//

import UIKit

struct CellData {
    var cellText: String
    var cellImage: UIImage
    var someFieldInt: Int
    
    init(text: String, image: UIImage, fieldInt: Int) {
        cellText = text
        cellImage = image
        someFieldInt = fieldInt
    }
}

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!
    var cellDataArray:[CellData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nameString = UserDefaults.standard.object(forKey: loginNameKey)
        
        nameLabel.text = nameString as? String
        
        
        for i in 0..<10 {
            let cellData = CellData(text:"Text\(i)", image: #imageLiteral(resourceName: "appleswift"), fieldInt: 5)
            cellDataArray.append(cellData)
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        let cellData = cellDataArray[indexPath.row]
        
        cell.nameLabel.text = cellData.cellText
        cell.swiftImageView.image = cellData.cellImage
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cellText = cellDataArray[indexPath.row].cellText
        
        performSegue(withIdentifier: "detail", sender: cellText)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detail" && sender != nil {
            
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.text = sender as! String
            destinationVC.image = #imageLiteral(resourceName: "appleswift")
        }
    }
    
    @IBAction func exitButtonPressed(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: loginNameKey)
        UserDefaults.standard.synchronize()
        
        guard let currentTabbarController = tabBarController else { return }
        
        currentTabbarController.dismiss(animated: true, completion: nil)
    }
}
