//
//  LandmarkList.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationSplitView {
            List(landmarks) {landmark in
                

            }.navigationTitle("Landmarks")
            
        } detail: {
            Text("Select a Landmark")
        }

    }
}

#Preview {
    LandmarkList()
}
