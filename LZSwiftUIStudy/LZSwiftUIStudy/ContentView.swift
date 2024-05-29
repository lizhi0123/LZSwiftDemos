//
//  ContentView.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI

//参考地址：https://jinxiansen.github.io/SwiftUI/README_CN.html#UIViewController
struct ContentView: View {
    var body: some View {
//        LandmarkList()
        HomeList()
        /*
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        */
    }
}

#Preview {
    ContentView()
    
       // .environment(ModelData())
}
