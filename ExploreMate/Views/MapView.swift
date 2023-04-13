//
//  MapView.swift
//  ExploreMate
//
//  Created by Alptekin's Macbook on 29.03.2023.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    var Users: [User]

        func makeUIView(context: Context) -> MKMapView {
            MKMapView(frame: .zero)
        }

        func updateUIView(_ view: MKMapView, context: Context) {
            view.removeAnnotations(view.annotations)
            view.addAnnotations(Users.map { $0.annotation })
            view.showAnnotations(view.annotations, animated: true)
        }
}
