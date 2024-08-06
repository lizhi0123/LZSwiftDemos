//
//  DateFormateOnceController.swift
//  DateFormatTest
//
//  Created by LiZhi on 2024/8/6.
//

import UIKit

class DateFormateOnceController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.yellow
        self.title = "单个"
        
        let button = UIButton(frame: CGRect(x: 20, y: 100, width: 140, height: 60))
        button.setTitle("请点击测试", for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func buttonClick(){
        self.changeDate()
    }
    
    func changeDate(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date:Date? = dateFormatter.date(from: "2024-08-06")
        print("-- date = ", date)
    }

}
