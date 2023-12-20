//
//  ViewController.swift
//  LZLayout
//
//  Created by LiZhi on 2023/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var tableView: UITableView  = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.backgroundColor = .white
        
        // 注册cell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        
        // 代理
        tableView.delegate = self
        tableView.dataSource = self
        
        // 解决隐藏导航栏后, UITableView向下偏移状态栏高度
        tableView.contentInsetAdjustmentBehavior = .never
        
        // 防抖动
        tableView.estimatedRowHeight = 0
        tableView.estimatedSectionHeaderHeight = 0
        tableView.estimatedSectionFooterHeight = 0
        
        
        return tableView
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addSubViews()
    }
    
    private func addSubViews(){
        self.view.addSubview(tableView)
        self.tableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
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
                cell.textLabel?.text = "分页 layout"
            case 1:
                cell.textLabel?.text = "coverflow 缩放 layout"
            default:
                cell.textLabel?.text = "其它"
            }
            return cell
        }
        
        
    }
    
    extension ViewController : UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            switch indexPath.row {
            case 0:
                self.navigationController?.pushViewController(PageViewController(), animated: true)
            case 1:
                self.navigationController?.pushViewController(CoverflowViewController(), animated: true)
            default:
               break
            }
        }
    }



