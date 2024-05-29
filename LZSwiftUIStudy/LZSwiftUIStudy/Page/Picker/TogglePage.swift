//
//  TogglePage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

struct TogglePage:View {
    
    @State var isOn = false
    
    
    var body: some View {
        HStack{
            Toggle(isOn: $isOn) {
                Text("State: \(self.isOn == true ? "开":"关")")
            }
            .padding()
        
        }.navigationTitle("Toggle")
        
        
       
    }
}

#Preview {
    TogglePage()
}
