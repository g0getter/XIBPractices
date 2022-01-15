//
//  SecondViewController.swift
//  XIBPractices
//
//  Created by 여나경 on 2022/01/15.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "똑똑한 투자 방법에는 무엇이 있을까?"
        view.backgroundColor = .lightGray
    }
    
    @IBAction func didTapButtonToPop() {
        navigationController?.popViewController(animated: true)
    }
}
