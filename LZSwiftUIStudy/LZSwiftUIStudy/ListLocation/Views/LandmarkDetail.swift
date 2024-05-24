//
//  LandmarkDetail.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
        }
        
    }
}


#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
