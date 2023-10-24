//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
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
                            UserStackView(value: 6, title: "Posts")
                            
                            UserStackView(value: 1000, title: "Followers")
                            
                            UserStackView(value: 4, title: "Following")
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
                
                LazyVGrid(columns: gridItems, spacing: 2) {
                    ForEach(0 ... 20, id: \.self) { index in
                        
                        Image("feedPicture1")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                            
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
