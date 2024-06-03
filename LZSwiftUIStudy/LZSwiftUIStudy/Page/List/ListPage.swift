//
//  ListPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/6/3.
//

import SwiftUI

struct Message: Identifiable {
    var id = UUID()
    var name: String
    var image: String?
}



struct ListPage: View {
    
    // 定义数组，存放数据
    var messages:[Message] = []
    
    var body: some View {
        List(0..<10000) { index in
            Text("list hello \(index)")
        }
    }
    
}

#Preview {
    ListPage()
}
