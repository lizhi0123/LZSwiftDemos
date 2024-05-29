//
//  SliderPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

struct SliderPage:View {
    
    @State var rating = 0.5
    
    
    var body: some View {
        Text("SliderPage")
        VStack{
            Text("Slider Vaule: \(self.rating)")
            Slider(value: $rating)
                .padding(30)
        }
    }
}

#Preview {
    SliderPage()
}
