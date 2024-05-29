//
//  ScrollViewPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

struct ScrollViewPage: View {
    var body: some View{
        ScrollView {
            Text("SwiftUI").padding(20)
            Divider()
            Image("icon")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Divider()
            Text("Views and controls are the visual building blocks of your app’s user interface.")
            }
            .border(Color.gray, width: 1)
            .cornerRadius(10)
            .padding(10)
            .navigationBarTitle(Text("ScrollView"))
    }
}

#Preview {
    ScrollViewPage()
}
