//
//  FirstViewController.swift
//  LZPresentDemo
//
//  Created by LiZhi on 2024/12/10.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "first"
        
        self.definesPresentationContext = true

        let showButton = UIButton(frame: CGRect(x: 20, y: 150, width: 160, height: 60))
        showButton.backgroundColor = UIColor.brown
        showButton.setTitle("点击 3s弹出", for: .normal)
        showButton.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        self.view.addSubview(showButton)
        // Do any additional setup after loading the view.
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
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let firstDetailVC = FirstDetailViewController()
            firstDetailVC.modalPresentationStyle = .fullScreen
            self.present(firstDetailVC, animated: true)
        }
    }
    
   

}
