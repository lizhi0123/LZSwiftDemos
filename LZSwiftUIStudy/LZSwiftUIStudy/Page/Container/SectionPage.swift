//
//  SectionPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

struct SectionPage: View {
    var body: some View {
        
        VStack {
            List {
                Section(header: Text("I'm header"), footer: Text("I'm footer")) {
                    ForEach(0..<3) {
                        Text("Hello \($0)")
                    }
                }
                Section(header: Text("I'm header 2"), footer: Text("I'm footer 2")) {
                    ForEach(6..<10) {
                        Text("Hello \($0)").bold()
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .background(Color.white)
            
            Button(action: {
                print("Tap")
            }) {
                Text("SwiftUI")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 30,height: 45)
            }
            .background(Color.orange)
            .cornerRadius(5)

        }
        .background(Color.white)
        .navigationBarTitle(Text("Section"))
        
    }
}

#Preview {
    SectionPage()
}
