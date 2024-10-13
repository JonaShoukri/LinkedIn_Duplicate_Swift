//
//  PostView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-11.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        HStack {
            VStack{
                HStack{
                    Image("demo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .clipped()

                    VStack (alignment: .leading) {
                        Text("Name")
                        Text("XXX followers")
                            .font(.system(size: 15))
                        Text("8 min")
                            .font(.system(size: 10))
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                        .bold()
                }
                
                HStack{
                    Text("Hello, world!")
                    Spacer()
                }
                
                HStack{
                    Image("demo")
                        .resizable()
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
    PostView()
}
