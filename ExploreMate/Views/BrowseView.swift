//
//  BrowseView.swift
//  ExploreMate
//
//  Created by Alptekin's Macbook on 29.03.2023.
//

import SwiftUI

struct BrowseView: View {
    @State private var searchText = ""
        var body: some View {
            NavigationStack {
                Text("Searching for \(searchText)")
                    .navigationTitle("Searchable Example")
            }
            .searchable(text: $searchText)
        }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView() 
    }
}
