//
//  ContentView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-09.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // Home Tab
            HomeScreenView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            // Network Tab
            NetworkScreenView()
                .tabItem {
                    Image(systemName: "network")
                    Text("Network")
                }
                .tag(0)
        }
    }
}

#Preview {
    ContentView()
}
