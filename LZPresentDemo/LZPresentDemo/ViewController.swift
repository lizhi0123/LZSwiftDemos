//
//  ViewController.swift
//  LZPresentDemo
//
//  Created by LiZhi on 2024/12/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //获取最顶层的弹出视图,没有子节点则返回本身 注意：当有多个nav present 多个vc 时，此方法不适用
    static func topestPresentedViewControllerForVC(viewController: UIViewController) -> UIViewController{
        var topestVc = viewController
        while let topVC = topestVc.presentedViewController {
            topestVc = topVC
        }
        return topestVc
    }
    
    //获取最顶层的弹出视图,没有子节点则返回本身
    static func topestPresentedViewControllerForVC(tabViewController: UITabBarController) -> UIViewController{
        var topestVc: UIViewController = tabViewController
        while let topVC = topestVc.presentedViewController {
            topestVc = topVC
        }
        return topestVc
    }
}

