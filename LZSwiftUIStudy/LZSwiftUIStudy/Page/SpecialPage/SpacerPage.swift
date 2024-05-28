//
//  SpacerPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/28.
//

import SwiftUI

struct SpacerPage: View {
    var body: some View {
        VStack(content: {
            HStack {
                Text("made in China")
                Spacer().frame(height: 20).background(Color.yellow)
                Text("the People's Republic Of China.")
            }
            Divider()// Just add a line.
            VStack {
                Text("made in China.")
                Spacer().frame(width: 20).background(Color.yellow)
                Text("the People's Republic Of China.")
            }
        })
    }
}


#Preview {
    SpacerPage()
}

