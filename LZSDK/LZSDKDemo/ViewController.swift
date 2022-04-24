//
//  ViewController.swift
//  LZSDKDemo
//
//  Created by ZhenhuaRen on 2022/4/23.
//

import UIKit
import LZSDK

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let manager = LZSDKManager()
        manager.sdk_print()
        
        let image = manager.staticSdk_image()
        imageView.image = image
        
    }


}

