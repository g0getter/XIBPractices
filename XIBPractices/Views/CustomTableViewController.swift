//
//  CustomTableViewController.swift
//  XIBPractices
//
//  Created by 여나경 on 2022/01/15.
//

import UIKit

class CustomTableViewController: UIViewController {
    
    let names = ["Aiden", "Nagyeong", "Giselle"]
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

// interactions
extension CustomTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You did select a row with a text \(names[indexPath.row])")
    }
    
}

extension CustomTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    // template cell을 계속해서 사용하기 위함
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
}
