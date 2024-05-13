//
//  ViewController.swift
//  LZTextLabelView
//
//  Created by LiZhi on 2024/5/13.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var textView: UITextView  = {
        let view = UITextView(frame: CGRect(x: 30, y: 30, width: 300, height: 400))
        view.backgroundColor = UIColor.yellow
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(textView)
        
    }


}

