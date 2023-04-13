//
//  ExploreMateApp.swift
//  ExploreMate
//
//  Created by Alptekin's Macbook on 18.03.2023.
//

import SwiftUI
import MapKit

@main
struct ExploreMateApp: App {
    let users = [
            User(title: "Location 1", coordinate: CLLocationCoordinate2D(latitude: 37.786996, longitude: -122.440100)),
            User(title: "Location 2", coordinate: CLLocationCoordinate2D(latitude: 37.790735, longitude: -122.405507)),
            User(title: "Location 3", coordinate: CLLocationCoordinate2D(latitude: 37.792683, longitude: -122.404611)),
            User(title: "Location 3", coordinate: CLLocationCoordinate2D(latitude: 37.792683, longitude: -122.450100))
    ]
    var body: some Scene {
        
        WindowGroup {
            MapView(Users: users)
        }
    }
}
