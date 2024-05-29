//
//  PickerPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

struct PickerPage:View {
    
    @State var leftIndex = 0
    @State var rightIndex = 0
    
    
    let leftSource = (0..<10).map { $0%2 == 0 ? "🧜‍♀️\($0)":"🧚‍♀️\($0)" }
    let rightSource = (11...36).map { String($0 - 1, radix: $0).uppercased() }
    
    var body: some View {
        HStack {
            VStack {
                Picker(selection: $leftIndex) {
                    ForEach(0..<leftSource.count) { index in
                        Text(self.leftSource[index]).tag(index)
                    }.frame(width: UIScreen.main.bounds.width/2)
                } label: {
                  
                    Text("Left Picker")
                }
            }
            

        }.navigationTitle("picker")
    }
}

#Preview {
    PickerPage()
}
