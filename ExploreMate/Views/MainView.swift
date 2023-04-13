//
//  MainView.swift
//  ExploreMate
//
//  Created by Alptekin's Macbook on 18.03.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView{
                //MapView()
            }
            .tabItem {
                Image(systemName: "map.fill")
                Text("Discover")
            }
            NavigationView {
                BrowseView()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Browse")
            }
            
                .tabItem {
                Image(systemName: "square.and.arrow.up.fill")
                Text("Upload")
            }
            
            Text("Screen 4").tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
