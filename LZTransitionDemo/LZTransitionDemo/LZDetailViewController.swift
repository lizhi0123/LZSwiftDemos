//
//  LZDetailViewController.swift
//  LZTransitionDemo
//
//  Created by LiZhi on 2023/12/5.
//

import UIKit
import SnapKit

class LZDetailViewController: UIViewController {
    
    private lazy var containerView: UIView  = {
        let view = UIView()
        view.backgroundColor = UIColor.yellow
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(200)
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
