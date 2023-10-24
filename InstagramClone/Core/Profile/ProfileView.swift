//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack(spacing: 10) {
                // pic an stats
                HStack {
                    Image("profilePicture1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Posts")
                                .font(.footnote)
                            
                        }
                        .frame(width: 76)
                        
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .font(.footnote)
                        }
                        .frame(width: 76)
                        
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Following")
                                .font(.footnote)
                        }
                        .frame(width: 76)

                    }
                    
            }
                .padding(.horizontal)
//                .padding(.bottom, 4)
                
            // name an bio
                VStack(alignment: .leading, spacing: 4) {
                Text("Lewis Hamilton")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Still rising")
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            //action button
                
            Button {
                    
            } label: {
                 Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay (
                        RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
                    )
            }
            
            Divider()
        }
            
        // post grid view
            
        }
    }
}

#Preview {
    ProfileView()
}
