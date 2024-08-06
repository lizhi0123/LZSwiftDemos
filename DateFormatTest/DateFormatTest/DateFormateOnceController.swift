//
//  DateFormateOnceController.swift
//  DateFormatTest
//
//  Created by LiZhi on 2024/8/6.
//

import UIKit

class DateFormateOnceController: UIViewController {

    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("--- dateFormatter = ",dateFormatter)

        self.view.backgroundColor = UIColor.yellow
        self.title = "单个DataFormat"
        
        let button = UIButton(frame: CGRect(x: 20, y: 100, width: 280, height: 60))
        button.setTitle("请点击测试DateFormate", for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(buttonOne1Click), for: .touchUpInside)
        self.view.addSubview(button)
        
        let button2 = UIButton(frame: CGRect(x: 20, y: 200, width: 280, height: 60))
        button2.setTitle("仅 DateFormate初始化", for: .normal)
        button2.backgroundColor = UIColor.red
        button2.addTarget(self, action: #selector(buttonOne2Click), for: .touchUpInside)
        self.view.addSubview(button2)

        
        let button3 = UIButton(frame: CGRect(x: 20, y: 300, width: 280, height: 60))
        button3.setTitle("仅 DateFormate设置格式", for: .normal)
        button3.backgroundColor = UIColor.red
        button3.addTarget(self, action: #selector(buttonOne3Click), for: .touchUpInside)
        self.view.addSubview(button3)
        
        let button4 = UIButton(frame: CGRect(x: 20, y: 400, width: 380, height: 60))
        button4.setTitle("仅 DateFormate 转化", for: .normal)
        button4.backgroundColor = UIColor.red
        button4.addTarget(self, action: #selector(buttonOne4Click), for: .touchUpInside)
        self.view.addSubview(button4)
        
    }
    
    @objc func buttonOne1Click(){
        
        for i in 0...10000 {
            changeDate()
        }
    }
    
    ///仅初始化
    @objc func buttonOne2Click(){
        
        for i in 0...10000 {
            let dateFormatter2 = DateFormatter()
        }
    }
    
    @objc func buttonOne3Click(){
        
        for i in 0...10000 {
            self.dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        }
    }
    
    @objc func buttonOne4Click(){
        
        for i in 0...10000 {
            let date:Date? = self.dateFormatter.date(from: "2024-08-06")
        }
    }
    
    func changeDate(){
        self.dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date:Date? = self.dateFormatter.date(from: "2024-08-06")
    }

}
