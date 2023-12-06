//
//  ViewController.swift
//  LZTransitionDemo
//
//  Created by LiZhi on 2023/12/5.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


    @IBAction func presentClick(_ sender: Any) {
        let detailController = LZDetailViewController(nibName: nil, bundle: nil)
        self.present(detailController, animated: true)
    }
}

