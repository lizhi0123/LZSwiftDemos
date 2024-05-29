//
//  ZStackPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

struct ZStackPage:View {
    var body: some View {
        ZStack {
            Text("made in China.")
            Divider() // Just add a line.
            Text("the People's Republic Of China.")
        }.navigationTitle("ZStack")
    }
}

#Preview {
    ZStackPage()
}
