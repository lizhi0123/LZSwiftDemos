//
//  LandmarkList.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI

struct LandmarkList: View {
    
    //Environment property wrapper to the view, and an environment(_:) modifier to the preview
    @Environment(ModelData.self) var modelData
    //State attribute to add state to a view.
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }
    
    
    var body: some View {
        
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.inline)
            
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
