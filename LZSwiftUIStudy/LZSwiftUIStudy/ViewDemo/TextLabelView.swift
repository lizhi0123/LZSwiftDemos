//
//  TextView.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/27.
//

import SwiftUI

struct TextLabelView: View {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var now = Date()
    
    var body: some View {
        Text("TextView")
            .bold()
            .italic()
            .underline()
            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
        
        Text("This text used as localized key")
        
        /// 在文本视图中格式化文本。 实际上这不是 SwiftUI 功能，而是 Swift 5 字符串插值。
        Text("What time is it ?: \(now,formatter: Self.dateFormatter)")
        
        //您还可以将 Text 与 + 连接在一起
        Text("Hello ") + Text("World!").bold()
        
//        文本对齐
        Text("Hello\nWorld!").multilineTextAlignment(.center)
        
        Label("Swift", image: "swift")
        Label("Website", systemImage: "globe")


    }
    
    
}

#Preview {
    TextLabelView()
}
