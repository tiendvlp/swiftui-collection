//
//  Location.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import Foundation
import MapKit

struct LocationModel: Decodable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Properties
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
