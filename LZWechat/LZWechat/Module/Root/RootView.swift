//
//  RootView.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/30.
//

import SwiftUI

struct RootView: View {
    
    @State private var tabSection: Int = 0
    let datalist = 0..<5
    var body: some View {
        TabView(selection: $tabSection,
                content:  {
            Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
            Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
            Text("Tab Content 3").tabItem { Text("Tab Label 3") }.tag(3)
        })
        /*
        NavigationView {
            List(0..<10) { item in
                //Section(header: Text("特殊视图")) {
                    NavigationLink(
                        destination: Text("DEtial"),
                        label: {
                            Text("Label")
                        })
               // }

            }
            .navigationTitle("微信")
            .navigationBarTitleDisplayMode(.inline)
            */
//            .listStyle(GroupedListStyle())
//            .navigationBarTitle(Text("Example"), displayMode: .inline)
//            .navigationBarItems(trailing: Button(action: {
//                print("clicked")
//            }, label: {
//                Text("Right").foregroundColor(.orange)
//            }))
//        }
    }
}

#Preview {
    RootView()
}
