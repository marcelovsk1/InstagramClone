//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-25.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            // pic an stats
            HStack {
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStackView(value: 6, title: "Posts")
                    
                    UserStackView(value: 1000, title: "Followers")
                    
                    UserStackView(value: 4, title: "Following")
                }
                
            }
            .padding(.horizontal)
            //                .padding(.bottom, 4)
            
            // name an bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            //action button
            HStack {
                Button {
                   
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 160, height: 32)
                        .background(Color(.systemGray6))
                        .foregroundColor(.black)
//                                .overlay (
//                                    RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
//                                )
                }
                
                Button {
                    
                } label: {
                    Text("Share Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 160, height: 32)
                        .background(Color(.systemGray6))
                        .foregroundColor(.black)
//                                .overlay (
//                                    RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
//                                )
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "person.badge.plus")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 30, height: 32)
                        .foregroundColor(.black)
                        .background(Color(.systemGray6))
//                                .overlay (
//                                    RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
//                                )
                }
                
            }
            Spacer()
            
            HStack {
                Image(systemName: "squareshape.split.3x3")
                    .padding(.horizontal, 50)
                Image(systemName: "play.rectangle.on.rectangle")
                    .padding(.horizontal, 50)
                Image(systemName: "tag.square")
                    .padding(.horizontal, 50)
            }
//                    Divider()
//                    .padding()
            Spacer()
        }    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
