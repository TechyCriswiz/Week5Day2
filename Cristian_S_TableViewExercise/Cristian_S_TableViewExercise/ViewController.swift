//
//  ViewController.swift
//  Cristian_S_TableViewExercise
//
//  Created by Cristian Salazar  on 8/4/20.
//  Copyright © 2020 Cristian Salazar . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
       
    let theParts = ["NVIDIA GeForce GTX 1080", "NVIDIA GeForce GTX 1080 TI", "NVIDIA GeForce RTX 2080", "NVIDIA GeForce GTX 2080 Super"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return theParts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellid")
        cell?.textLabel?.text = theParts[indexPath.row]
        return cell!
    }


}

