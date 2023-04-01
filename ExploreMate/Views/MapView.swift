//
//  MapView.swift
//  ExploreMate
//
//  Created by Alptekin's Macbook on 29.03.2023.
//

import SwiftUI
import MapKit


struct MapView: View {
    @StateObject var manager = LocationManager()
    @State var tracking:MapUserTrackingMode = .follow
    var body: some View {
        Map(
           coordinateRegion: $manager.region,
           interactionModes: MapInteractionModes.all,
           showsUserLocation: true,
           userTrackingMode: $tracking
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
