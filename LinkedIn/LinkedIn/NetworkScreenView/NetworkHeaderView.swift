//
//  NetworkHeaderView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-15.
//

import SwiftUI

struct NetworkHeaderView: View {
    var body: some View {
        HStack {
            VStack{
                HStack{
                    Spacer()
                }
                
                HStack{
                    Image("demo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .clipped()

                    TextField("Search", text: .constant(""))
                        .padding(10)
                        .background(Color(.lightGray))
                        .cornerRadius(10)

                    Image(systemName: "ellipsis.message")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }
                
                HStack{
                    Text("Manage my network")
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            }
    }
    .padding()
    .background(Color(.white))
    .ignoresSafeArea()
    }
}

#Preview {
    NetworkHeaderView()
}
