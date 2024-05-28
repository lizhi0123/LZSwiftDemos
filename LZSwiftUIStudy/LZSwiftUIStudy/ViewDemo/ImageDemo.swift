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
        
        VStack{
            Image("foo")
                .resizable()
                .frame(width: 150,height: 100,alignment: .leading)
            //image name is foo
            
            Image(systemName: "clock.fill").foregroundColor(.red)
                .font(.title)
            
            Image(systemName: "clock")
                .foregroundColor(.red)
                .font(Font.system(.largeTitle).bold())
            
            Image("foo")
                .resizable()//// it will sized so that it fills all the available space
                .aspectRatio(contentMode: .fit)
        }
        
    }
}

#Preview {
    ImageDemo()
}
