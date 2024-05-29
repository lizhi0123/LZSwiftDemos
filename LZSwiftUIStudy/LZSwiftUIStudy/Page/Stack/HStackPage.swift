//
//  HStackPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

struct HStackPage: View {
    var body: some View {
        HStack {
            Text("made in China.")
            Divider() // Just add a line.
            Text("the People's Republic Of China.")
        }.navigationTitle("HStackPage")
    }
}

#Preview {
    HStackPage()
}
