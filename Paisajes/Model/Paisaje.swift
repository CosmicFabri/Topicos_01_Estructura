//
//  Paisaje.swift
//  Paisajes
//
//  Created by Alumno 04 on 10/09/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Paisaje: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var location: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    public func getImageName() -> String {
        return imageName
    }
}
