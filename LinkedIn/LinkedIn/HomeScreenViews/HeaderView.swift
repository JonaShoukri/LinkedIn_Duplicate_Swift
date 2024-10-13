//
//  HeaderView.swift
//  LinkedIn
//
//  Created by Jonas Shoukri on 2024-10-11.
//

import SwiftUI

struct HeaderView: View {
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
                
                Divider()
                
                HStack{
                    Image(systemName: "square.and.pencil")
                        .font(.system(size: 20))
                    Text("Start a Post")
                    Spacer()
                }
                
                Divider()
                
                HStack{
                    VStack{
                        HStack{
                            Image(systemName: "photo")
                                .font(.system(size: 20))
                                .foregroundColor(.green)
                            Text("Photo")
                        }
                    }
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "video.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.blue)
                            Text("Photo")
                        }
                    }
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "calendar")
                                .font(.system(size: 20))
                                .foregroundColor(.orange)
                            Text("Event")
                        }
                    }
                }
                
                
            }
            
            
            
    }
    .padding()
    .background(Color(.white))
    .ignoresSafeArea()
    }
}
