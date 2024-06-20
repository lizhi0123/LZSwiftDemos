//
//  AppDelegate.swift
//  PhotoNoti
//
//  Created by LiZhi on 2023/11/28.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // create window
        self.window = UIWindow()
        self.window?.rootViewController  = UINavigationController(rootViewController: ViewController())
        
        self.window?.makeKeyAndVisible()
        return true
    }

  


}

