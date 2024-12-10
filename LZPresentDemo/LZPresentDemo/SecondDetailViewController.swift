//
//  SecondDetailViewController.swift
//  LZPresentDemo
//
//  Created by LiZhi on 2024/12/10.
//

import UIKit

class SecondDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.systemPink
        
        let label = UILabel(frame: CGRect(x: 20, y: 100, width: 200, height: 60))
        label.text = "second detail"
        self.view.addSubview(label)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true)
    }

}
