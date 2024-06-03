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
        List{
            ForEach(0..<1000) { e in
                Text("for each Hello \(e)")

                Image("foo")
                }
        }
       

    }
}

#if DEBUG
struct ForEachPage_Previews : PreviewProvider {
    static var previews: some View {
        ForEachPage()
    }
}
#endif
