//
//  FeedCall.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-24.
//

import SwiftUI

struct FeedCall: View {
    var body: some View {
        VStack {
            // image + username
            HStack {
                Image("profilePicture1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("lewishamilton")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            // post image
            Image("feedPicture2")
                .resizable()
                .scaledToFit()
            //                .scaledToFill()
            //                .frame(height: 400)
            //                .clipShape(Rectangle())
            // action buttons
            HStack(spacing: 16) {
                Button {
                    print("Like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            // likes label
            
   
                Text("23,550 Likes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                    .padding(.top, 1)
                
            HStack {
                // caption label
                Text("lewishamilton ").fontWeight(.semibold) +
                Text("Always a good time, merci Montreal 🇨🇦")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("2h ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCall()
}