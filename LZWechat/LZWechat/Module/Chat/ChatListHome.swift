//
//  ChatHome.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/30.
//

import SwiftUI
import SwifterSwift
import Foundation

struct ChatModel:Identifiable,Codable {
    let id = UUID()
    let name: String
    
    static let all:[ChatModel] = [
        ChatModel(name: "zhangsan"),
        ChatModel(name: "lisi"),
        ChatModel(name: "wangwu"),
        ChatModel(name: "zhaoliu"),
    ]
}

struct ChatListHome:View {
    
    @State private var chatModels:[ChatModel] = ChatModel.all//[ChatModel(name: "zhangsan")]

    var body: some View{
        NavigationView {
            List {
                SearchEntry().frame(height: 50)
                    .listRowInsets(EdgeInsets())
                    .padding(EdgeInsets())
                
                ForEach(chatModels) { model in
                    ChatListRow(chatModel: model)
                        .background {
                            NavigationLink {
                                Text("Detail")
                            } label: {
                                
                            }.opacity(0)

                        }
//                    .listRowSeparator(.hidden)
                }
                .listRowInsets(EdgeInsets()) //清除row 旁边的空隙
                //.listRowSeparator(.visible)
                .listSectionSeparatorTint(Color.lightGray.opacity(0.5))
//                .alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
//                    return 0
//                })
                
            }
            .listStyle(PlainListStyle())//PlainListStyle()
            .navigationTitle("微信")
            .navigationBarTitleDisplayMode(.inline)
//            .scrollContentBackground(.hidden)
            //.background(.linearGradient(colors: [.white,.accentColor], startPoint: .top, endPoint: .bottom))//渐变色
//            .background(Color.red)
            
            
        }
        .background(Color.blue)
        .onAppear(perform: {
            load()
        })
        
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
    
    func load()  {
//        chatModels = ChatModel.all
        chatModels.append(contentsOf: ChatModel.all)
        
    }
}

#Preview {
    ChatListHome()
}
