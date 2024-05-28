//
//  MapView.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        if #available(iOS 17.0, *) {
            Map(position: .constant(.region(region)))
        } else {
            // Fallback on earlier versions
        }
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(center: coordinate,
                           span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
