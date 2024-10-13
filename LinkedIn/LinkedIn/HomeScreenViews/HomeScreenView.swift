//
//  HomeScreenView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-13.
//

import SwiftUI

struct HomeScreenView: View {
    
    let dataArray: [Post] = [
        .init(id: 0, profilePicture: "00", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "0"),
        .init(id: 1, profilePicture: "01", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "1"),
        .init(id: 2, profilePicture: "02", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "2"),
        .init(id: 3, profilePicture: "03", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "3"),
        .init(id: 4, profilePicture: "04", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "4"),
        .init(id: 5, profilePicture: "05", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "5"),
        .init(id: 6, profilePicture: "00", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "6"),
        .init(id: 7, profilePicture: "01", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "7"),
        .init(id: 8, profilePicture: "02", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "8"),
        .init(id: 9, profilePicture: "03", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "9"),
        .init(id: 10, profilePicture: "04", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "10"),
        .init(id: 11, profilePicture: "05", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "11"),
        .init(id: 12, profilePicture: "00", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "12"),
        .init(id: 13, profilePicture: "01", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "13"),
        .init(id: 14, profilePicture: "02", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "14"),
        .init(id: 15, profilePicture: "03", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "15"),
        .init(id: 16, profilePicture: "04", name: "Marie Cortez", followerCount: 341, time: "8 min", description: "Had a great day today!", image: "16")
    ]
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                    .ignoresSafeArea()
            
            ScrollView {
                HeaderView()
                ForEach(dataArray, id: \.id) { post in
                    PostView(post: post)
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
