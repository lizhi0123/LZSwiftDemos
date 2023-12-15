//
//  LZDetailViewController.swift
//  LZTransitionDemo
//
//  Created by LiZhi on 2023/12/5.
//

import UIKit
import SnapKit

class LZPresentHalfDetailController: UIViewController {
    
    internal lazy var containerView: UIView  = {
        let view = UIView()
        view.backgroundColor = UIColor.yellow
        return view
    }()
    
    private lazy var button: UIButton  = {
        let button = UIButton()
        button.setTitle("关闭", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(ButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.orange
        return button
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.modalPresentationStyle = .custom
        self.transitioningDelegate = self
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @objc func ButtonClick() {
        self.dismiss(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "详情页"
        self.view.backgroundColor = UIColor.purple

        // Do any additional setup after loading the view.
        
        self.view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        
        containerView.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(50)
            make.height.equalTo(40)
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

extension LZPresentHalfDetailController: UIViewControllerTransitioningDelegate {
    
//    present和dismiss动画如果想在一个中间的viewController进行
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
//        return LZPresentationController(presentedViewController: presented, presenting: presenting)
        return MOPresentationController(presentedViewController: presented, presenting: presenting)
    }
}
