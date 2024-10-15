//
//  NetworkScreenView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-13.
//

import SwiftUI

struct NetworkScreenView: View {
    var body: some View {
        ZStack {
            Color(.lightGray)
                    .ignoresSafeArea()
            
            ScrollView {
                NetworkHeaderView()
                InvitationListView()
            }
        }
    }
}

#Preview {
    NetworkScreenView()
}
