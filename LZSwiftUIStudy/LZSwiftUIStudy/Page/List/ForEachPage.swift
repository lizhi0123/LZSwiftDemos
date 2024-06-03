//
//  ForEachPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ForEachPage : View {
    
    var body: some View {
        ForEach(0..<10000) { e in
            Text("for each Hello \(e)")
                .bold()
                .font(.system(size: 25, design: .monospaced))
                .padding(5)
            }
//            .border(Color.gray.gradient, width: 1,cornerRadius: 10)
//        .border(Color.gray, width: 1)
//        .cornerRadius(10)
//            .navigationBarTitle(Text("ForEach"))
    }
}

#if DEBUG
struct ForEachPage_Previews : PreviewProvider {
    static var previews: some View {
        ForEachPage()
    }
}
#endif
