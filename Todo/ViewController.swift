//
//  ViewController.swift
//  Todo
//
//  Created by Sri Harsha on 22/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let items = ["Praneetha","Prathyusha","Harsha","Tarun"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if (tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark){
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    }

    @IBAction func addItem(_ sender: UIBarButtonItem) {
        
        let alert  = UIAlertController(title: "Add New ToDo", message: "", preferredStyle: .alert)
//        Button Name is Add ToDo
        let action = UIAlertAction(title: "Add ToDo", style: .default) { (action) in
//            what will be happen once the user clicks the Add ToDo button on our Alert
            
        }
        alert.addAction(action)
    }
    

}

