//
//  NavigationButtonPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/28.
//

import Foundation
import SwiftUI

struct NavigationButtonPage: View {
    var body: some View {
        NavigationLink {
            NavigationButtonPage()
        } label: {
            Text("NavigationButton").bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
        }
        //.navigationTitle("navigationLink")
        .navigationBarTitle(Text("Page"))
        
        

    }
}
