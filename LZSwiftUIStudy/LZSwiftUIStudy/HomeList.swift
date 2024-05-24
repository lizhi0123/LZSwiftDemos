//
//  HomeList.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI

struct HomeList: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello ")
            
            List {
                NavigationLink {
                    LandmarkList()
                } label: {
                    Text("列表 位置")
                }

                Text("2 ")
    //            }

            }.navigationTitle("首页列表")
            
        } detail: {
            Text("选择首页列表")
        }
        
    }
}

#Preview {
    HomeList()
}
