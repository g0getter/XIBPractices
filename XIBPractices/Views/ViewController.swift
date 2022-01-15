//
//  ViewController.swift
//  XIBPractices
//
//  Created by 여나경 on 2021/11/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "나를 위한 인사이트"
        
    }
    
    @IBAction func didTapButton() {
        let specificViewController = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
//        let vc = SecondViewController()
        navigationController?.pushViewController(specificViewController, animated: true)
    }
    
    @IBAction func goToTableView() {
        guard let tableViewController = storyboard?.instantiateViewController(withIdentifier: "tableView") else { return }
        
        navigationController?.pushViewController(tableViewController, animated: true)
    }


}

