//
//  RootView.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/30.
//

import SwiftUI

struct RootView: View {
    
    @State private var tabSection: Int = 0
    let datalist = 0..<15
    var body: some View {
        
        TabView(selection: $tabSection,
                content:  {
            ChatHome()
                .tabItem { RootTabItem(type: .chat, selection: tabSection) }
                .tag(RootTabItemType.chat.rawValue)
            ContactHome()
                .tabItem { RootTabItem(type: .contact, selection: tabSection) }
                .tag(RootTabItemType.contact.rawValue)
            DiscoverHome()
                .tabItem { RootTabItem(type: .discover, selection: tabSection) }
                .tag(RootTabItemType.discover.rawValue)
            MeHome()
                .tabItem { RootTabItem(type: .me, selection: tabSection) }
                .tag(RootTabItemType.me.rawValue)

        })
        .background(Color.green)
    }
    
    init(){
        //设置tabview背景
//        let appeareance = UITabBar.appearance()
//        appeareance.backgroundColor = UIColor.systemGroupedBackground
    }
}

#Preview {
    RootView().previewLayout(.sizeThatFits)
}
