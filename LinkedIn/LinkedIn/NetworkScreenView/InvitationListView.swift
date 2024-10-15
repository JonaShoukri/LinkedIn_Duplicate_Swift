//
//  InvitationListView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-15.
//

import SwiftUI

struct InvitationListView: View {
    
    let networkData: [InvitationData] = [
        .init(id: 0, profilePicture: "00", name: "Marie Cortez", position: "CEO", mutuals: 32),
        .init(id: 1, profilePicture: "01", name: "Yessir", position: "CEO", mutuals: 32),
        .init(id: 2, profilePicture: "02", name: "Skibidy", position: "CEO", mutuals: 32),
        .init(id: 3, profilePicture: "03", name: "IronMan", position: "CEO", mutuals: 32),
        .init(id: 4, profilePicture: "04", name: "Eduardo", position: "CEO", mutuals: 32),
        .init(id: 5, profilePicture: "05", name: "GangNem", position: "CEO", mutuals: 32)
    ]
    
    var body: some View {
        VStack{
            HStack{
                Text("Invitations")
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
            }
            
            ForEach(networkData, id: \.id) { invite in
                Divider()
                
                HStack{
                    Image(invite.profilePicture)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .clipped()
                        .padding()
                    VStack (alignment: .leading) {
                        Text(invite.name)
                            .bold()
                        Text(invite.position)
                            .foregroundColor(.gray)
                        HStack{
                            Text("\(invite.mutuals)")
                                .foregroundColor(.gray)
                            Text("mutual connections")
                                .foregroundColor(.gray)
                                .lineLimit(1)
                                .truncationMode(.tail)
                        }
                    }
                    
                    Image(systemName: "x.circle")
                        .font(.system(size: 30))
                    Image(systemName: "checkmark.circle")
                        .font(.system(size: 30))
                        .foregroundColor(.blue)
                        
                }
            }
        }
        .padding()
        .background(Color(.white))
        .ignoresSafeArea()
    }
}

#Preview {
    InvitationListView()
}
