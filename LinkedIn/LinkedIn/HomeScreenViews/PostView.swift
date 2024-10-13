//
//  PostView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-11.
//

import SwiftUI

struct PostView: View {
    let post: Post
    
    var body: some View {
        HStack {
            VStack{
                HStack{
                    Image(post.profilePicture)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .clipped()

                    VStack (alignment: .leading) {
                        Text(post.name)
                        Text("\(post.followerCount) followers")
                            .font(.system(size: 15))
                        Text(post.time)
                            .font(.system(size: 10))
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                        .bold()
                }
                
                HStack{
                    Text(post.description)
                    Spacer()
                }
                
                HStack{
                    Image(post.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                Divider()
                
                HStack{
                    Spacer()
                    VStack{
                        Image(systemName: "hand.thumbsup")
                            .font(.system(size: 20))
                        Text("Like")
                    }
                    Spacer()
                    VStack{
                        Image(systemName: "message")
                            .font(.system(size: 20))
                        Text("Comment")
                    }
                    Spacer()
                    VStack{
                        Image(systemName: "arrow.turn.up.right")
                            .font(.system(size: 20))
                        Text("Share")
                    }
                    Spacer()
                    VStack{
                        Image(systemName: "paperplane")
                            .font(.system(size: 20))
                        Text("Send")
                    }
                    Spacer()
                }
                
                
            }
        }
        .padding()
        .background(Color(.white))
        .ignoresSafeArea()
    }
}

#Preview {
    PostView(post: Post(id: 0, profilePicture: "00", name: "Sample Name", followerCount: 300, time: "10 min", description: "This is a sample post.", image: "demo"))
}
