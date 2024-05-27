//
//  ImageDemo.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/27.
//

import Foundation
import SwiftUI

struct ImageDemo: View {
    var body: some View {
        Image("foo") //image name is foo
        
        Image(systemName: "clock.fill")
        
        Image(systemName: "cloud.heavyrain.fill")
            .foregroundColor(.red)
            .font(.title)
        
        Image(systemName: "clock")
            .foregroundColor(.red)
            .font(Font.system(.largeTitle).bold())
        
        Image("foo")
            .resizable()//// it will sized so that it fills all the available space
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    ImageDemo()
}
