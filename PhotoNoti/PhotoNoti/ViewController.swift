//
//  ViewController.swift
//  PhotoNoti
//
//  Created by LiZhi on 2023/11/28.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var tipLabel: UILabel  = {
        let label = UILabel(frame: CGRect(origin: CGPoint(x: 10, y: 100), size: CGSize(width: 100, height: 50)))
        label.text = "--不要截图"
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.numberOfLines = 1
        return label
    }()
    
    private lazy  var textField : UITextField = {
        let temp = UITextField(frame: CGRect(origin: CGPoint(x: 10, y: 100), size: CGSize(width: 300, height: 200)))
        temp.backgroundColor = UIColor.red
        temp.isSecureTextEntry = true
        return temp
    }()
    
    private lazy var Label: UILabel  = {
        let label = UILabel(frame: CGRect(x: 10, y: 0, width: 100, height: 50))
        label.text = "--绝密内容"
        label.textAlignment = .center
  
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.numberOfLines = 1
        label.backgroundColor = UIColor.green
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "首页"
        
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(tipLabel)
        
        self.view.addSubview(textField)
        
        let theView = textField.subviews.first
//        theView?.backgroundColor = UIColor.orange
//        theView?.frame = CGRect(origin: CGPoint(x: 10, y: 100), size: CGSize(width: 300, height: 200))
        if theView != nil {
//            self.view.addSubview(theView!)
        }
        
//        theView?.addSubview(Label)
        textField.addSubview(Label)
        
        
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(screenshotAlertPhoto),
                                               name: UIApplication.userDidTakeScreenshotNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(screenshotAlert(_:)),
                                               name: UIScreen.capturedDidChangeNotification,
                                               object: nil)

    }
    
    @objc func screenshotAlertPhoto() {
//              let alert = UIAlertController.init(title: "提示",
//                                          message: "不要截图",
//                                          preferredStyle: .alert)
//              let cancleAction = UIAlertAction.init(title: "好的",
//                                                    style: .cancel,
//                                                    handler: nil)
//              alert.addAction(cancleAction)
//              self.present(alert, animated: true, completion: nil)
        print("--- 截图 ---")
        self.view.backgroundColor = UIColor.yellow
          }
    
    @objc func screenshotAlert(_ notification:Notification) {
        print("---开始录屏 ")
        /*
              let alert = UIAlertController.init(title: "提示",
                                          message: "不要录屏 或分享给他人以保障账户安全。",
                                          preferredStyle: .alert)
              let cancleAction = UIAlertAction.init(title: "好的",
                                                    style: .cancel,
                                                    handler: nil)
              alert.addAction(cancleAction)
              self.present(alert, animated: true, completion: nil)
        */
        self.view.backgroundColor = UIColor.blue
          }

 

    @IBAction func checking(_ sender: Any) {
        //检查是否“屏幕录制中”
           let screen = UIScreen.main
               if screen.isCaptured {
//                   self.screenshotAlert(Notification())
                   print("--- 正在 录屏 中…… ")
               }else {
                   let alert = UIAlertController.init(title: "提示",
                                               message: "未录屏",
                                               preferredStyle: .alert)
                   let cancleAction = UIAlertAction.init(title: "好的",
                                                         style: .cancel,
                                                         handler: nil)
                   alert.addAction(cancleAction)
                   self.present(alert, animated: true, completion: nil)
               }
    }
    
}

