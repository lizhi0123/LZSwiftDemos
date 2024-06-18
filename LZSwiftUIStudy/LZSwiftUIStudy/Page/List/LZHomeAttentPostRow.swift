//
//  LZHomeAttentPostRow.swift
//  LZRedBook
//
//  Created by LiZhi on 2024/6/12.
//

import Foundation
import SwiftUI

///  首页关注 row
struct LZHomeAttentPostRow:View {
    
    
    var body: some View {
        
        LZHomeAttentAuthorLine()
        Image(systemName: "photo.artframe")
            .resizable()
            .frame(width: 100,height: 100)
            .aspectRatio(contentMode: .fit)
//            .frame(maxWidth: .infinity)
//            .padding(.all,1)
//            .frame(maxHeight: 500)
        Text("LZHomeAttentPostRow")
    }
}

#Preview {
    LZHomeAttentPostRow()
}
