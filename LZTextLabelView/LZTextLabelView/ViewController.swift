//
//  ViewController.swift
//  hangge_1096
//
//  Created by hangge on 16/3/23.
//  Copyright © 2016年 hangge.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    //展示文本框
    @IBOutlet weak var displayTextView: UITextView!
    //编辑文本框
    @IBOutlet weak var editTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置展示文本框的代理
        displayTextView.delegate = self
    }

    //发送消息
    @IBAction func setMessage(_ sender: AnyObject) {
        //设置展示文本框的内容
        displayTextView.text = editTextView.text
        //对内容中的特殊标签字段做处理
        displayTextView.resolveHashTags()
        //清空输入框内容
        editTextView.text = ""
    }
    
    //展示文本框链接点击响应
    func textView(_ textView: UITextView, shouldInteractWith URL: URL,
                  in characterRange: NSRange) -> Bool {
        //判断URL scheme
        switch URL.scheme ?? "" {
        case "hash" :
            showAlert("hash", payload:
                (URL as NSURL).resourceSpecifier!.removingPercentEncoding!)
        case "mention" :
            showAlert("mention", payload:
                (URL as NSURL).resourceSpecifier!.removingPercentEncoding!)
        default:
            print("这个是普通的url链接")
        }
        
        return true
    }
    
    //显示消息
    func showAlert(_ tagType:String, payload:String){
        let alertController = UIAlertController(title: "检测到\(tagType)标签",
            message: payload, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

