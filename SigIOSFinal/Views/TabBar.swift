//
//  TabBar.swift
//  SigIOSFinal
//
//  Created by Quynh Tram on 1/25/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
            
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            AddDestinationView()
            
                .tabItem {
                    Label("Add", systemImage: "pencil")
                }
            
            MapView()
            
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
            ProfileView()
            
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
            
            
        }
    }
}

#Preview {
    TabBar()
        .environmentObject(DestinationsViewModel())
}
