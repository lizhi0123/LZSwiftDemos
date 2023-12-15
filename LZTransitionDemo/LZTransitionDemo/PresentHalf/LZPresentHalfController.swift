//
//  LZPresentHalfController.swift
//  LZTransitionDemo
//
//  Created by LiZhi on 2023/12/15.
//

import UIKit

class LZPresentHalfController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "present  半个view"
        self.view.backgroundColor = UIColor.yellow
        
        self.addPresentButton()
    }
    
    func addPresentButton() {
        let button = UIButton(frame: CGRect(x: 20, y: 150, width: 150, height: 40))
        button.setTitle("present  半个view", for: .normal)
        button.backgroundColor = UIColor.blue
        button.addTarget(self, action: #selector(presentClick), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    @objc func presentClick(_ sender: Any) {
        let detailController = LZPresentHalfDetailController(nibName: nil, bundle: nil)
        self.present(detailController, animated: true)
    }

}
