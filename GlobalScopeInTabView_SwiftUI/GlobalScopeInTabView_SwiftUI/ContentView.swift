//
//  ContentView.swift
//  GlobalScopeInTabView_SwiftUI
//
//  Created by Mantosh Kumar on 25/07/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            Tab("Home", systemImage: "house.fill") {
                HomeView()
            }
            Tab("Search", systemImage: "magnifyingglass") {
                SearchView()
            }
            Tab("Favorite", systemImage: "heart.fill") {
                FavoriteView()
            }
            Tab("Profile", systemImage: "person.fill") {
                ProfileView()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
