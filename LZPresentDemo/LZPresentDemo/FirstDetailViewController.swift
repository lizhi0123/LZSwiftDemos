//
//  FirstDetailViewController.swift
//  LZPresentDemo
//
//  Created by LiZhi on 2024/12/10.
//

import UIKit

class FirstDetailViewController: UIViewController {
    
    
     override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
         super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
         self.title = "first detail "
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    

    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.purple
        
        let label = UILabel(frame: CGRect(x: 20, y: 100, width: 200, height: 60))
        label.text = "fist detail"
        self.view.addSubview(label)
        
        let showButton = UIButton(frame: CGRect(x: 20, y: 150, width: 260, height: 60))
        showButton.backgroundColor = UIColor.blue
        showButton.setTitle("最顶端 可以再次present", for: .normal)
        showButton.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        self.view.addSubview(showButton)
        
    }
    

    @objc func btnClick(){
        let secondDetialVC = SecondDetailViewController()
        secondDetialVC.modalPresentationStyle = .custom
        /*
        self.present(secondDetialVC, animated: true) {[weak self] in
            guard let self = self else { return }
            print("弹出 secondDetail , fistDetial.presentedViewController =  \(self.presentedViewController),fistDetial.presentingViewController = \(self.presentingViewController)")
            
            print("弹出 secondDetail , secondDetail.presentedViewController =  \(secondDetialVC.presentedViewController),secondDetail.presentingViewController = \(secondDetialVC.presentingViewController)")
        }
        */
        
        if let sceneDelegate = UIApplication.shared.connectedScenes
            .first?.delegate as? SceneDelegate,
           let tabbarVC = sceneDelegate.tabbarVC
        {
            // 你现在可以使用sceneDelegate来访问Scene相关的方法和属性
            
            let topestVC = ViewController.topestPresentedViewControllerForVC(tabViewController: tabbarVC)
            topestVC.present(secondDetialVC, animated: true)
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
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true)
    }

}
