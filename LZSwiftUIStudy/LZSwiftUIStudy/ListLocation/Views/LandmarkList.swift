//
//  LandmarkList.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
            List(landmarks) {landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.inline)
            
    }
}

#Preview {
    LandmarkList()
}
