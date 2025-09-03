//
//  MapView.swift
//  Paisajes
//
//  Created by Alumno 04 on 27/08/25.
//

import SwiftUI
import MapKit



struct MapView: View {
    var body: some View {
        Map(coordinateRegion: .constant(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 46.8182, longitude: 8.2275), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
