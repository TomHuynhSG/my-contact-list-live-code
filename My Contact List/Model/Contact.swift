//
//  Contact.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import Foundation
import SwiftUI
import MapKit


struct Contact : Identifiable, Codable{
    var id: Int
    var name: String
    var email: String
    var phone: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
