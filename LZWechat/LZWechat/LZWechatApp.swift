//
//  LZWechatApp.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/30.
//

import SwiftUI

@main
struct LZWechatApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .onAppear(perform: {
                    setupAppearance()
                })
        }
    }
    
    func setupAppearance(){
        
        if #available(iOS 15.0, *) {
            // 避免 iOS15 的默认行为导致 NavigationBar 没有背景色
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithDefaultBackground()
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
            
            // 避免 iOS15 的默认行为导致 TabBar 没有背景色
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            
//            // 避免 iOS15 增加的列表顶部空白
//            UITableView.appearance().sectionHeaderTopPadding = 0
        }
    }
}
