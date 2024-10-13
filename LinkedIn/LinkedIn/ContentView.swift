//
//  ContentView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.lightGray)
                    .ignoresSafeArea()
            
            VStack {
                HeaderView()
                PostView()
            }
        }
    }
}

#Preview {
    ContentView()
}
