//
//  DiscoverHome.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/31.
//

import SwiftUI

struct DiscoverHome:View {
    var body: some View{
        NavigationLink("朋友圈") {
            MomentListHomePage()
        }
    }
}

#Preview {
    DiscoverHome()
}

