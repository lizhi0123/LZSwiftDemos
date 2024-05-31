//
//  ChatHome.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/30.
//

import SwiftUI
import SwifterSwift

struct ChatHome:View {
    var body: some View{
        NavigationView {
            List(0..<10) { item in
                //Section(header: Text("特殊视图")) {
                NavigationLink(
                    destination: Text("DEtial"),
                    label: {
                        Text("Label")
                    })
//                .background(Color.orange)
//                    .listRowBackground(Color.purple)
                // }
                
            }
            .navigationTitle("微信")
        
            .navigationBarTitleDisplayMode(.inline)
            .scrollContentBackground(.hidden)
            //.background(.linearGradient(colors: [.white,.accentColor], startPoint: .top, endPoint: .bottom))//渐变色
            .background(Color.red)
            
        }.background(Color.blue)
    }
}

#Preview {
    ChatHome()
}
