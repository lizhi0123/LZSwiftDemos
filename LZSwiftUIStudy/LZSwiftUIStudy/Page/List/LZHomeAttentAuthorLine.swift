//
//  LZHomeAttentAuthorLine.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/12.
//

import Foundation
 import SwiftUI

/// 关注 作者一行
struct LZHomeAttentAuthorLine:View {
    var body: some View{
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 40,height: 40)
                .foregroundStyle(Color.gray)
                .padding()
            
//            Spacer()
        }
    }
}

#Preview {
    LZHomeAttentAuthorLine()
}
