//
//  ContentView.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
        NavigationView {
            RootView()
        }
        .navigationBarTitle("微信", displayMode: NavigationBarItem.TitleDisplayMode.inline)
        
    }
}

#Preview {
    ContentView()
}
