//
//  ViewController.swift
//  LZTransitionDemo
//
//  Created by LiZhi on 2023/12/5.
//

import UIKit

class ViewController: UIViewController {
    
   
    lazy var tableView: UITableView  = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.separatorStyle = .singleLine
        
        // 注册cell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        
        // 代理
        tableView.delegate = self
        tableView.dataSource = self
        
        // 解决隐藏导航栏后, UITableView向下偏移状态栏高度
//        tableView.contentInsetAdjustmentBehavior = .never
        
        // 防抖动
        tableView.rowHeight = 50
        
        
        return tableView
    }()
    
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.addPresentButton()
        self.title = "首页"
        
        self.view.addSubview(self.tableView)
        self.tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
   


    
}


extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.selectionStyle = .none
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "present 半个View"
        default:
            break
        }
        return cell
    }
    
    
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(LZPresentHalfController(), animated: true)
        default:
            break
        }
        
        
    }
}

