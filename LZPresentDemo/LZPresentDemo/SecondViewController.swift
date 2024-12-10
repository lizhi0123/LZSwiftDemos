//
//  SecondViewController.swift
//  LZPresentDemo
//
//  Created by LiZhi on 2024/12/10.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "second"
        
        self.definesPresentationContext = true
        
        
        let showButton = UIButton(frame: CGRect(x: 20, y: 150, width: 160, height: 60))
        showButton.backgroundColor = UIColor.blue
        showButton.setTitle("点击 立即弹出", for: .normal)
        showButton.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        self.view.addSubview(showButton)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func btnClick(){
       
        let secondDetailVC = SecondDetailViewController()
        secondDetailVC.modalPresentationStyle = .custom
//        secondDetailVC.definesPresentationContext = true
        self.present(secondDetailVC, animated: true)
    }

}
