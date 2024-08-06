//
//  ViewController.swift
//  DateFormatTest
//
//  Created by LiZhi on 2024/8/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonMoreClick(_ sender: Any) {
        
        let dateMoreVC = DateFormateMoreController()
        self.navigationController?.pushViewController(dateMoreVC, animated: true)
    }
    
    @IBAction func buttonOneClick(_ sender: Any) {
        let dateOneVC = DateFormateOnceController()
        self.navigationController?.pushViewController(dateOneVC, animated: true)
    }
}

