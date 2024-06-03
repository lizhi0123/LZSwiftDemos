//
//  SearchEntry.swift
//  LZWechat
//
//  Created by LiZhi on 2024/6/3.
//

import SwiftUI

struct SearchEntry:View {
    var body: some View {
        Button(action: {
            print("---- 搜索")
        }, label: {
            VStack{
                Spacer()
                HStack(spacing: 5, content: {
                    Spacer()
                    Image("foo")
                        .resizable()
                        .frame(width: 13,height: 13)
                    Text("搜索")
                        .font(.system(size: 16))
                        .foregroundColor(.secondary)
                    Spacer()
                })
                Spacer()
            }
            .background(Color.white)
            .cornerRadius(6)
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
           
        })
        .background(Color.lightGray)
//        .cornerRadius(6)
      
       
    }
}

#Preview {
    SearchEntry()
}
