//
//  RootView.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/30.
//

import SwiftUI

struct RootView: View {
    let datalist = 0..<5
    var body: some View {
        NavigationView {
            List(0..<10) { item in
                //Section(header: Text("特殊视图")) {
//                    NavigationLink(
//                        destination: WebViewPage(),
//                        label: {
//                            PageRow(title: "webView", subTitle: "用户展示一个打开的网页")
//                        })
               // }
                Text("hello")

            }
            .navigationTitle(Text("示例"))
//            .listStyle(GroupedListStyle())
//            .navigationBarTitle(Text("Example"), displayMode: .inline)
//            .navigationBarItems(trailing: Button(action: {
//                print("clicked")
//            }, label: {
//                Text("Right").foregroundColor(.orange)
//            }))
        }
    }
}

#Preview {
    RootView()
}
