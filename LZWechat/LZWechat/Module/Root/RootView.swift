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
        List(datalist) { index in
            Text("请点击")
        }
//        ForEach(datalist) { item in
//            NavigationLink {
//                //Text("Detail")
//            } label: {
//                Text("请点击")
//            }
//        }
    }
}

#Preview {
    RootView()
}
