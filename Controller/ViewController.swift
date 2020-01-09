//
//  ViewController.swift
//  CollectioionView_To _TableView
//
//  Created by Hady on 1/9/20.
//  Copyright © 2020 gadou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var myAnimalsType: [animalType] = [
        animalType(type: "Animals Category 1"),
        animalType(type: "Animals Category 2"),
        animalType(type: "Animals Category 3"),
        animalType(type: "Animals Category 4"),
        animalType(type: "Animals Category 5"),
        animalType(type: "Animals Category 6")
    ]
}

extension ViewController: UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myAnimalsType.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell") as! TableViewCell
        cell.animalTypeLabel.text = myAnimalsType[indexPath.row].type
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
