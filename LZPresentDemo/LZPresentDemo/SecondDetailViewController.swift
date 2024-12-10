//
//  SecondDetailViewController.swift
//  LZPresentDemo
//
//  Created by LiZhi on 2024/12/10.
//

import UIKit

class SecondDetailViewController: UIViewController {
    
   
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.title = "second detail "
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let presentationController = self.presentationController
        let presentedViewController = self.presentedViewController
        let presentingViewController = self.presentingViewController
        
        

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.systemPink

        let label = UILabel(frame: CGRect(x: 20, y: 100, width: 200, height: 60))
        label.text = "second detail"
        self.view.addSubview(label)

        let showButton = UIButton(frame: CGRect(x: 20, y: 150, width: 260, height: 60))
        showButton.backgroundColor = UIColor.blue
        showButton.setTitle("最顶端 可以再次present", for: .normal)
        showButton.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        self.view.addSubview(showButton)
    }

    @objc func btnClick(){
        let firsetDetialVC = FirstDetailViewController()
        firsetDetialVC.modalPresentationStyle = .custom
        
        /*
        self.present(firsetDetialVC, animated: true) {[weak self] in
            guard let self = self else { return }
            print("弹出 firsetDetialVC , secondDetail.presentedViewController =  \(self.presentedViewController),secondDetail.presentingViewController = \(self.presentingViewController)")
            
            print("弹出 firsetDetialVC , firsetDetialVC.presentedViewController =  \(firsetDetialVC.presentedViewController),firsetDetialVC.presentingViewController = \(firsetDetialVC.presentingViewController)")
        }
        */
        
        /*
        if let sceneDelegate = UIApplication.shared.connectedScenes
            .first?.delegate as? SceneDelegate,
           let tabbarVC = sceneDelegate.tabbarVC
        {
            // 你现在可以使用sceneDelegate来访问Scene相关的方法和属性
            
           let topestVC = ViewController.topestPresentedViewControllerForVC(tabViewController: tabbarVC)
            topestVC.present(firsetDetialVC, animated: true)
        }
        */
        
        /// tabbar 里多个nav 会失败
        if let sceneDelegate = UIApplication.shared.connectedScenes
            .first?.delegate as? SceneDelegate,
           let navVCB2 = sceneDelegate.navVCB2
        {
            // 你现在可以使用sceneDelegate来访问Scene相关的方法和属性
            
            let topestVC = ViewController.topestPresentedViewControllerForVC(viewController: navVCB2)
            topestVC.present(firsetDetialVC, animated: true)
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
