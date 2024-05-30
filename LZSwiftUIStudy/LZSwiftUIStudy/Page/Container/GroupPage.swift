//
//  GroupPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

/// Group 用于集合多个视图，对 Group 设置的属性，将作用于每个子视图
struct GroupPage: View {
    var body: some View{
        VStack {
            Group {
                Text("Hello World !")
                Text("Hello World !")
            }
            .padding(5)
            .border(Color.orange,
                    width: 1)
                .cornerRadius(5)
            Group {
                Text("Hello World !")
                Text("Hello World !")
            }.padding(5)
                .border(Color.black,
                        width: 1)
                .cornerRadius(5)
            Group {
                Text("Hello World !")
                Text("Hello World !")
            }.padding(5)
                .border(Color.purple,
                        width: 1)
                .cornerRadius(5)
        }.navigationBarTitle(Text("Group"))
    }
    
}
#Preview {
    GroupPage()
}
