//
//  ButtonDemo.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/27.
//

import Foundation
import SwiftUI


struct ButtonLinkDemo: View {
    var body: some View {
        Button(action: {
            print("点击了")
            
        }, label: {
            Text("Button")
        })
        
        Button("click me") {
            print("点击了 click me")
        }
        
        Button(action: {
            print("漂亮button")
            
        }, label: {
            Image(systemName: "clock")
            Text("漂亮 Click me")
            Text("Subtitle")
        })
        .foregroundColor(Color.white)
        .padding()
        .background(Color.blue)
        .cornerRadius(5)
        
     Link("link baidu", destination: URL(string: "https://www.baidu.com")!)

    }
    
    
}

#Preview {
    ButtonLinkDemo()
}
