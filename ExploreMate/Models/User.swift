//
//  User.swift
//  ExploreMate
//
//  Created by Alptekin's Macbook on 9.04.2023.
//

import SwiftUI
import CoreLocation
import MapKit

struct User {
    var title: String
    var coordinate: CLLocationCoordinate2D

    var annotation: MKPointAnnotation {
        let annotation = MKPointAnnotation()
        annotation.title = title
        annotation.coordinate = coordinate
        return annotation
    }
}

