//
//  StepperPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/29.
//

import Foundation
import SwiftUI

struct StepperPage: View {
    @State var value = 0
    
    var body: some View {
        VStack{
            Text("改变后的值：\(self.value)")
            Stepper("Stepper ", value: $value, step: 2) { changed in
                print("changed = \(changed),value = \(self.value)")
            }.padding()
        }.navigationTitle("Stepper")
       
    }
}

#Preview {
    StepperPage()
}
