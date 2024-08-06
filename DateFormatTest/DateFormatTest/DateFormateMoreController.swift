//
//  DateFormateMoreController.swift
//  DateFormatTest
//
//  Created by LiZhi on 2024/8/6.
//

import UIKit

class DateFormateMoreController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightText
        self.title = "多个"

        
        let button = UIButton(frame: CGRect(x: 20, y: 100, width: 140, height: 60))
        button.setTitle("请点击测试DateFormate", for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        self.view.addSubview(button)
        
        let button2 = UIButton(frame: CGRect(x: 20, y: 200, width: 140, height: 60))
        button2.setTitle("String 转 int", for: .normal)
        button2.backgroundColor = UIColor.red
        button2.addTarget(self, action: #selector(button2Click), for: .touchUpInside)
        self.view.addSubview(button2)
        
    }
    
    @objc func buttonClick(){
        
        for i in 0...1000 {
            changeDate()
        }
    }
    
    @objc func button2Click(){
        
        for i in 0...1000 {
            stringToInt()
        }
    }
    
    func changeDate(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date:Date? = dateFormatter.date(from: "2024-08-06")
        print("-- date = ", date)
    }
    
    func stringToInt(){
        let str: String = "123"
        let it: Int? = Int(str)
        print("--- it = ",it)
    }
    

}
