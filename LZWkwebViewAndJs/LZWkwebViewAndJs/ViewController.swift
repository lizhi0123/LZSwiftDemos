//
//  ViewController.swift
//  LZWkwebViewAndJs
//
//  Created by LiZhi on 2024/6/20.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    private lazy var iosButton: UIButton  = {
        let button = UIButton(frame: CGRect(x: 10, y: 100, width: 100, height: 50))
        button.setTitle("ios按钮", for: .normal)
        button.setImage(UIImage(named: ""), for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(ButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.yellow
        return button
    }()
    
    private lazy  var webView : WKWebView = {
        let webV = WKWebView(frame: CGRect(x: 10, y: 160, width: 300, height: 400))
        webV.backgroundColor = UIColor.orange
        return webV
    }()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(iosButton)
        
        self.view.addSubview(webView)
        
        let path = Bundle.main.path(forResource: "11", ofType: "html")
        let count = try! String(contentsOfFile: path!, encoding: String.Encoding.utf8)
        self.webView.loadHTMLString(count, baseURL: Bundle.main.bundleURL)
    }
    
    @objc func ButtonClick() {
        let inputJS = "getUserInfo" + "('延迟5秒后:iOS向JS传递的值->sinleee hello')"
        self.webView.evaluateJavaScript(inputJS) { (response, error) in
            print( "--- response = ",response , error)
        }
        
    }



}

