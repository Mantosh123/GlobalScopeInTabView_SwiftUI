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
                
                NavigationStack {
                    HomeView()
                        .navigationTitle("Home")
                }
               
            }
            Tab("Search", systemImage: "magnifyingglass") {
                NavigationStack {
                    SearchView()
                        .navigationTitle("Search")
                }
            }
            Tab("Favorite", systemImage: "heart.fill") {
                
                NavigationStack {
                    FavoriteView()
                        .navigationTitle("Favorite")
                }
            }
            Tab("Profile", systemImage: "person.fill") {
                
                NavigationStack {
                    ProfileView()
                        .navigationTitle("Profile")
                }
            }
        }
        .tint(.orange)
        
    }
}

#Preview {
    ContentView()
}
