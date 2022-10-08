//
//  ViewController.swift
//  TableViewAssignment_Swift16
//
//  Created by Vinicius Rodrigues on 10/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    //TableView
    @IBOutlet var worldTableView: UITableView!
    
    // Identifier
    let cellIdentifier = "CellID"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register cell
        worldTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        
    }


}

//Table setup
extension ViewController: UITableViewDataSource {
    //Number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Countries.init().name.count
    }
    
    //Number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    //Content
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let country = Countries.init().name[indexPath.row]
        let population = Countries.init().population[indexPath.row]
        
        var configuration = cell.defaultContentConfiguration()
        configuration.text = country
        configuration.secondaryText = population
        cell.contentConfiguration = configuration
        
        return cell
        
    }
    
    
}

