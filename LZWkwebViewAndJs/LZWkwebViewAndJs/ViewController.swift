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
        let button = UIButton(frame: CGRect(x: 10, y: 100, width: 180, height: 50))
        button.setTitle("ios按钮 传数据给js", for: .normal)
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
        let json = "{\"name\":\"zhangsan\",\"age\":12}"
        let inputJS = "getUserInfo" + "('\(json)')"
        /*
         getUserInfo('{"name":"zhangsan","age":12}')
         */
        print("传入的Js方法 = ",inputJS)
        self.webView.evaluateJavaScript(inputJS) { (response, error) in
            print( "--- response = ",response , error)
        }
        
    }



}

