//
//  ChatHome.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/30.
//

import SwiftUI
import SwifterSwift
import Foundation

struct ChatModel:Identifiable {
    let id = UUID()
    
    let name: String
}

struct ChatListHome:View {
    
    let chatModels = [ChatModel( name: "meinv"),
                      ChatModel( name: "shuage")]
    var body: some View{
        let listData = 0..<10
        NavigationView {
            
            //在 List 中，如果用 ForEach 处理数据源，所有的数据源的 View 竟然都要在 List 创建时进行初始化，这完全违背了 tableView 的本来意图
            List(listData) { model in
                //隐藏箭头
                ChatListRow().background(
                    NavigationLink(destination: {
                        Text("The Detail")
                    }, label: {
                        
                    })//.opacity(0)
                )
                .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())//PlainListStyle()
            .navigationTitle("微信")
            .navigationBarTitleDisplayMode(.inline)
//            .scrollContentBackground(.hidden)
            //.background(.linearGradient(colors: [.white,.accentColor], startPoint: .top, endPoint: .bottom))//渐变色
            .background(Color.red)
            
            
        }
        .background(Color.blue)
        
    }
    init() {
        //UIView.appearance().backgroundColor = UIColor.blue
//        UINavigationBar.appearance().backgroundColor = UIColor.white
        
        // 避免 iOS15 增加的列表顶部空白
        UITableView.appearance().sectionHeaderTopPadding = 0
        //直接给 List添加背景色，首先，我们要去掉原有的List列表颜色
        UITableView.appearance().backgroundColor = .clear
        
        //取消分割
       
    }
}

#Preview {
    ChatListHome()
}
